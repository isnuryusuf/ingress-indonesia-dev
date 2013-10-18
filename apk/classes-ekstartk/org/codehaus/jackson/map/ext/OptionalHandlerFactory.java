package org.codehaus.jackson.map.ext;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.deser.std.StdDeserializer;
import org.codehaus.jackson.map.util.Provider;
import org.codehaus.jackson.type.JavaType;

public class OptionalHandlerFactory
{
  public static final OptionalHandlerFactory instance = new OptionalHandlerFactory();

  private boolean doesImplement(Class<?> paramClass, String paramString)
  {
    while (paramClass != null)
    {
      if (paramClass.getName().equals(paramString));
      while (hasInterface(paramClass, paramString))
        return true;
      paramClass = paramClass.getSuperclass();
    }
    return false;
  }

  private boolean hasInterface(Class<?> paramClass, String paramString)
  {
    Class[] arrayOfClass = paramClass.getInterfaces();
    int i = arrayOfClass.length;
    for (int j = 0; j < i; j++)
      if (arrayOfClass[j].getName().equals(paramString))
        return true;
    int k = arrayOfClass.length;
    for (int m = 0; ; m++)
    {
      if (m >= k)
        break label73;
      if (hasInterface(arrayOfClass[m], paramString))
        break;
    }
    label73: return false;
  }

  private boolean hasInterfaceStartingWith(Class<?> paramClass, String paramString)
  {
    Class[] arrayOfClass = paramClass.getInterfaces();
    int i = arrayOfClass.length;
    for (int j = 0; j < i; j++)
      if (arrayOfClass[j].getName().startsWith(paramString))
        return true;
    int k = arrayOfClass.length;
    for (int m = 0; ; m++)
    {
      if (m >= k)
        break label73;
      if (hasInterfaceStartingWith(arrayOfClass[m], paramString))
        break;
    }
    label73: return false;
  }

  private boolean hasSupertypeStartingWith(Class<?> paramClass, String paramString)
  {
    for (Class localClass = paramClass.getSuperclass(); localClass != null; localClass = localClass.getSuperclass())
      if (localClass.getName().startsWith(paramString))
        return true;
    do
    {
      paramClass = paramClass.getSuperclass();
      if (paramClass == null)
        break;
    }
    while (!hasInterfaceStartingWith(paramClass, paramString));
    return true;
    return false;
  }

  private Object instantiate(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString).newInstance();
      return localObject;
    }
    catch (Exception localException)
    {
      return null;
    }
    catch (LinkageError localLinkageError)
    {
      label13: break label13;
    }
  }

  public JsonDeserializer<?> findDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
  {
    Class localClass = paramJavaType.getRawClass();
    String str1 = localClass.getName();
    if (str1.startsWith("org.joda.time."));
    Object localObject;
    for (String str2 = "org.codehaus.jackson.map.ext.JodaDeserializers"; ; str2 = "org.codehaus.jackson.map.ext.CoreXMLDeserializers")
    {
      localObject = instantiate(str2);
      if (localObject != null)
        break label114;
      return null;
      if ((!str1.startsWith("javax.xml.")) && (!hasSupertypeStartingWith(localClass, "javax.xml.")))
        break;
    }
    if (doesImplement(localClass, "org.w3c.dom.Node"))
      return (JsonDeserializer)instantiate("org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer");
    if (doesImplement(localClass, "org.w3c.dom.Node"))
      return (JsonDeserializer)instantiate("org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer");
    return null;
    label114: Collection localCollection = ((Provider)localObject).provide();
    Iterator localIterator1 = localCollection.iterator();
    while (localIterator1.hasNext())
    {
      StdDeserializer localStdDeserializer2 = (StdDeserializer)localIterator1.next();
      if (localClass == localStdDeserializer2.getValueClass())
        return localStdDeserializer2;
    }
    Iterator localIterator2 = localCollection.iterator();
    while (localIterator2.hasNext())
    {
      StdDeserializer localStdDeserializer1 = (StdDeserializer)localIterator2.next();
      if (localStdDeserializer1.getValueClass().isAssignableFrom(localClass))
        return localStdDeserializer1;
    }
    return null;
  }

  public JsonSerializer<?> findSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType)
  {
    Class localClass = paramJavaType.getRawClass();
    String str1 = localClass.getName();
    if (str1.startsWith("org.joda.time."));
    Object localObject;
    for (String str2 = "org.codehaus.jackson.map.ext.JodaSerializers"; ; str2 = "org.codehaus.jackson.map.ext.CoreXMLSerializers")
    {
      localObject = instantiate(str2);
      if (localObject != null)
        break label89;
      return null;
      if ((!str1.startsWith("javax.xml.")) && (!hasSupertypeStartingWith(localClass, "javax.xml.")))
        break;
    }
    if (doesImplement(localClass, "org.w3c.dom.Node"))
      return (JsonSerializer)instantiate("org.codehaus.jackson.map.ext.DOMSerializer");
    return null;
    label89: Collection localCollection = ((Provider)localObject).provide();
    Iterator localIterator1 = localCollection.iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
      if (localClass == localEntry2.getKey())
        return (JsonSerializer)localEntry2.getValue();
    }
    Iterator localIterator2 = localCollection.iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
      if (((Class)localEntry1.getKey()).isAssignableFrom(localClass))
        return (JsonSerializer)localEntry1.getValue();
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ext.OptionalHandlerFactory
 * JD-Core Version:    0.6.2
 */