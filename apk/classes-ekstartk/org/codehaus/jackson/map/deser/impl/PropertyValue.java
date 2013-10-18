package org.codehaus.jackson.map.deser.impl;

public abstract class PropertyValue
{
  public final PropertyValue next;
  public final Object value;

  protected PropertyValue(PropertyValue paramPropertyValue, Object paramObject)
  {
    this.next = paramPropertyValue;
    this.value = paramObject;
  }

  public abstract void assign(Object paramObject);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue
 * JD-Core Version:    0.6.2
 */