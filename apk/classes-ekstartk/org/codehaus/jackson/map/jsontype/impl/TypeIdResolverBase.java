package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeIdResolverBase
  implements TypeIdResolver
{
  protected final JavaType _baseType;
  protected final TypeFactory _typeFactory;

  protected TypeIdResolverBase(JavaType paramJavaType, TypeFactory paramTypeFactory)
  {
    this._baseType = paramJavaType;
    this._typeFactory = paramTypeFactory;
  }

  public void init(JavaType paramJavaType)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.TypeIdResolverBase
 * JD-Core Version:    0.6.2
 */