package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.map.deser.SettableAnyProperty;

final class PropertyValue$Any extends PropertyValue
{
  final SettableAnyProperty _property;
  final String _propertyName;

  public PropertyValue$Any(PropertyValue paramPropertyValue, Object paramObject, SettableAnyProperty paramSettableAnyProperty, String paramString)
  {
    super(paramPropertyValue, paramObject);
    this._property = paramSettableAnyProperty;
    this._propertyName = paramString;
  }

  public final void assign(Object paramObject)
  {
    this._property.set(paramObject, this._propertyName, this.value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue.Any
 * JD-Core Version:    0.6.2
 */