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
            PropertyInfo childrenProperty = null;
            Type type = obj.GetType();
            childrenProperty = FindEnumerableProperties(type).FirstOrDefault();
            if (childrenProperty == null) return null;
            var childType = childrenProperty.PropertyType.GetGenericArguments().FirstOrDefault();
            var children = childrenProperty.GetValue(obj) as IEnumerable;
            if (children == null) return null;
            var grandChildrenProperty = FindEnumerableProperties(childType).FirstOrDefault();

            //here we build the response data
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

        public static IEnumerable<PropertyInfo> FindEnumerableProperties(Type type) => type.GetProperties().Where(p => p.PropertyType.GetInterface(nameof(IEnumerable)) != null && p.PropertyType != typeof(string));

        public static object GetProperty(string propertySuffix, dynamic obj, string typeName)
        {
            return obj.GetType().GetProperty(typeName + propertySuffix).GetValue(obj); ;
        }

        public static object FindObject(string typeName, int id, UniversityStructureRepository rep)
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
    }
}