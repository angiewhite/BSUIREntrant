using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EntrantsDomain.Concrete;
using System.Collections;
using System.Reflection;

namespace EntrantsWeb.Models
{
    public static class TreeLoader
    {

        public static object GetNodeInfo(string typeName, int id, UniversityStructureRepository rep)
        {
            dynamic obj = FindObject(typeName, id, rep);
            if (obj == null) return null;

            return GetNodeInfo(obj);
        }

        public static object GetNodeInfo(object obj)
        {
            //here we look for an enumerable property and its content
            PropertyInfo childrenProperty = GetChildrenProperty(obj);
            if (childrenProperty == null) return null;
            var childType = GetGenericType(childrenProperty);
            var children = GetChildren(obj, childrenProperty);
            if (children == null) return null;

            //here we build the response data
            var grandChildrenProperty = FindEnumerableProperties(childType).FirstOrDefault();
            int count;
            List<object> childrenFormatted = new List<object>();
            foreach (var child in children)
            {
                count = 0;
                if (grandChildrenProperty != null)
                    foreach (var grandchild in grandChildrenProperty.GetValue(child) as IEnumerable) count++;
                childrenFormatted.Add(new
                {
                    name = GetProperty("Name", child, childType.Name),
                    id = GetProperty("Id", child, childType.Name),
                    type = childType.Name,
                    count = count
                });
            }
            return childrenFormatted;
        }

        public static int GetNumberOfDescendants(string typeName, int id, UniversityStructureRepository rep)
        {
            object o = FindObject(typeName, id, rep);
            return CalculateDescendants(o);
        }

        public static object GetObject(string typeName, int id, UniversityStructureRepository rep)
        {
            return FindObject(typeName, id, rep);
        }

        public static int CalculateDescendants(object o)
        {
            var childrenProperty = GetChildrenProperty(o);
            if (childrenProperty == null)
            {
                return 1;
            }
            var children = GetChildren(o, childrenProperty);
            if (children == null) return 0;
            else
            {
                int sum = 0;
                foreach (var child in children)
                {
                    sum += CalculateDescendants(child);
                }
                return sum;
            }
        }

        private static IEnumerable<PropertyInfo> FindEnumerableProperties(Type type) => type.GetProperties().Where(p => p.PropertyType.GetInterface(nameof(IEnumerable)) != null && p.PropertyType != typeof(string));

        private static object GetProperty(string propertySuffix, dynamic obj, string typeName)
        {
            return obj.GetType().GetProperty(typeName + propertySuffix).GetValue(obj); ;
        }

        private static object FindObject(string typeName, int id, UniversityStructureRepository rep)
        {
            //here we look for the relevant enumerable property-collection in the repository
            var repositoryEnumerableProperties = FindEnumerableProperties(rep.GetType());
            PropertyInfo propertyInfo = null;
            foreach (var property in repositoryEnumerableProperties)
            {
                if (property.PropertyType.GetGenericArguments().Select(t => t.Name).FirstOrDefault() == typeName) propertyInfo = property;
            }
            if (propertyInfo == null) return null;

            //check generic parameter
            Type genericParameter = propertyInfo.PropertyType.GetGenericArguments().FirstOrDefault();
            if (genericParameter == null || genericParameter.GetType().IsValueType || genericParameter.GetType().Name == "object") return null;
            
            //here we find the object with id 'id' of type 'typeName'
            IEnumerable collection = propertyInfo.GetValue(rep) as IEnumerable;
            IEnumerator enumerator = collection.GetEnumerator();
            dynamic current = null;
            dynamic wanted = null;
            while (enumerator.MoveNext())
            {
                current = enumerator.Current;
                if ((int)GetProperty("Id", current, typeName) == id) wanted = current;
            }
            return wanted;
        }

        private static PropertyInfo GetChildrenProperty(object obj)
        {
            Type type = obj.GetType();
            return FindEnumerableProperties(type).FirstOrDefault();
        }

        private static IEnumerable GetChildren(object obj, PropertyInfo childrenProperty)
        {
            return childrenProperty.GetValue(obj) as IEnumerable;
        }

        private static Type GetGenericType(PropertyInfo childrenProperty)
        {
            return childrenProperty.PropertyType.GetGenericArguments().FirstOrDefault();
        }
    }
}