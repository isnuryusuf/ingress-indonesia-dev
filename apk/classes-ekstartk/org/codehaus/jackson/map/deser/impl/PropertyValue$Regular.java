package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.map.deser.SettableBeanProperty;

final class PropertyValue$Regular extends PropertyValue
{
  final SettableBeanProperty _property;

  public PropertyValue$Regular(PropertyValue paramPropertyValue, Object paramObject, SettableBeanProperty paramSettableBeanProperty)
  {
    super(paramPropertyValue, paramObject);
    this._property = paramSettableBeanProperty;
  }

  public final void assign(Object paramObject)
  {
    this._property.set(paramObject, this.value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue.Regular
 * JD-Core Version:    0.6.2
 */