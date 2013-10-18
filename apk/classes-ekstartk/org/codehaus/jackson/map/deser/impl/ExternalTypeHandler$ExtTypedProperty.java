package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.map.deser.SettableBeanProperty;

final class ExternalTypeHandler$ExtTypedProperty
{
  private final SettableBeanProperty _property;
  private final String _typePropertyName;

  public ExternalTypeHandler$ExtTypedProperty(SettableBeanProperty paramSettableBeanProperty, String paramString)
  {
    this._property = paramSettableBeanProperty;
    this._typePropertyName = paramString;
  }

  public final SettableBeanProperty getProperty()
  {
    return this._property;
  }

  public final String getTypePropertyName()
  {
    return this._typePropertyName;
  }

  public final boolean hasTypePropertyName(String paramString)
  {
    return paramString.equals(this._typePropertyName);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ExternalTypeHandler.ExtTypedProperty
 * JD-Core Version:    0.6.2
 */