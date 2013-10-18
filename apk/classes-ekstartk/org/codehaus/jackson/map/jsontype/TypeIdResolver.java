package org.codehaus.jackson.map.jsontype;

import org.codehaus.jackson.type.JavaType;

public abstract interface TypeIdResolver
{
  public abstract String idFromValue(Object paramObject);

  public abstract String idFromValueAndType(Object paramObject, Class<?> paramClass);

  public abstract void init(JavaType paramJavaType);

  public abstract JavaType typeFromId(String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.TypeIdResolver
 * JD-Core Version:    0.6.2
 */