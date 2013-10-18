package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public abstract class TypeSerializerBase extends TypeSerializer
{
  protected final TypeIdResolver _idResolver;
  protected final BeanProperty _property;

  protected TypeSerializerBase(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    this._idResolver = paramTypeIdResolver;
    this._property = paramBeanProperty;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.TypeSerializerBase
 * JD-Core Version:    0.6.2
 */