package org.codehaus.jackson.map.deser.impl;

import java.util.ArrayList;
import java.util.HashMap;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

public class ExternalTypeHandler$Builder
{
  private final HashMap<String, Integer> _nameToPropertyIndex = new HashMap();
  private final ArrayList<ExternalTypeHandler.ExtTypedProperty> _properties = new ArrayList();

  public void addExternal(SettableBeanProperty paramSettableBeanProperty, String paramString)
  {
    Integer localInteger = Integer.valueOf(this._properties.size());
    this._properties.add(new ExternalTypeHandler.ExtTypedProperty(paramSettableBeanProperty, paramString));
    this._nameToPropertyIndex.put(paramSettableBeanProperty.getName(), localInteger);
    this._nameToPropertyIndex.put(paramString, localInteger);
  }

  public ExternalTypeHandler build()
  {
    return new ExternalTypeHandler((ExternalTypeHandler.ExtTypedProperty[])this._properties.toArray(new ExternalTypeHandler.ExtTypedProperty[this._properties.size()]), this._nameToPropertyIndex, null, null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ExternalTypeHandler.Builder
 * JD-Core Version:    0.6.2
 */