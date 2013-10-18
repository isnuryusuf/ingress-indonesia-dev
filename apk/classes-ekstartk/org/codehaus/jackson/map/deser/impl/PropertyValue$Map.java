package org.codehaus.jackson.map.deser.impl;

import java.util.Map;

final class PropertyValue$Map extends PropertyValue
{
  final Object _key;

  public PropertyValue$Map(PropertyValue paramPropertyValue, Object paramObject1, Object paramObject2)
  {
    super(paramPropertyValue, paramObject1);
    this._key = paramObject2;
  }

  public final void assign(Object paramObject)
  {
    ((Map)paramObject).put(this._key, this.value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue.Map
 * JD-Core Version:    0.6.2
 */