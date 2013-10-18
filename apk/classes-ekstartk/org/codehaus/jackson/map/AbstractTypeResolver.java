package org.codehaus.jackson.map;

import org.codehaus.jackson.type.JavaType;

public abstract class AbstractTypeResolver
{
  public JavaType findTypeMapping(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    return null;
  }

  public JavaType resolveAbstractType(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.AbstractTypeResolver
 * JD-Core Version:    0.6.2
 */