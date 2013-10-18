package org.codehaus.jackson.map.deser.impl;

import java.util.ArrayList;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.util.TokenBuffer;

public class UnwrappedPropertyHandler
{
  protected final ArrayList<SettableBeanProperty> _properties = new ArrayList();

  public void addProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    this._properties.add(paramSettableBeanProperty);
  }

  public Object processUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
  {
    int i = this._properties.size();
    for (int j = 0; j < i; j++)
    {
      SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)this._properties.get(j);
      JsonParser localJsonParser = paramTokenBuffer.asParser();
      localJsonParser.nextToken();
      localSettableBeanProperty.deserializeAndSet(localJsonParser, paramDeserializationContext, paramObject);
    }
    return paramObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.UnwrappedPropertyHandler
 * JD-Core Version:    0.6.2
 */