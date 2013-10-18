package org.codehaus.jackson.map.deser.impl;

import java.util.HashMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.util.TokenBuffer;

public class ExternalTypeHandler
{
  private final HashMap<String, Integer> _nameToPropertyIndex;
  private final ExternalTypeHandler.ExtTypedProperty[] _properties;
  private final TokenBuffer[] _tokens;
  private final String[] _typeIds;

  protected ExternalTypeHandler(ExternalTypeHandler paramExternalTypeHandler)
  {
    this._properties = paramExternalTypeHandler._properties;
    this._nameToPropertyIndex = paramExternalTypeHandler._nameToPropertyIndex;
    int i = this._properties.length;
    this._typeIds = new String[i];
    this._tokens = new TokenBuffer[i];
  }

  protected ExternalTypeHandler(ExternalTypeHandler.ExtTypedProperty[] paramArrayOfExtTypedProperty, HashMap<String, Integer> paramHashMap, String[] paramArrayOfString, TokenBuffer[] paramArrayOfTokenBuffer)
  {
    this._properties = paramArrayOfExtTypedProperty;
    this._nameToPropertyIndex = paramHashMap;
    this._typeIds = paramArrayOfString;
    this._tokens = paramArrayOfTokenBuffer;
  }

  protected final void _deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, int paramInt)
  {
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
    localTokenBuffer.writeStartArray();
    localTokenBuffer.writeString(this._typeIds[paramInt]);
    JsonParser localJsonParser1 = this._tokens[paramInt].asParser(paramJsonParser);
    localJsonParser1.nextToken();
    localTokenBuffer.copyCurrentStructure(localJsonParser1);
    localTokenBuffer.writeEndArray();
    JsonParser localJsonParser2 = localTokenBuffer.asParser(paramJsonParser);
    localJsonParser2.nextToken();
    this._properties[paramInt].getProperty().deserializeAndSet(localJsonParser2, paramDeserializationContext, paramObject);
  }

  public Object complete(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    int i = 0;
    int j = this._properties.length;
    while (i < j)
    {
      if (this._typeIds[i] == null)
      {
        if (this._tokens[i] != null)
          throw paramDeserializationContext.mappingException("Missing external type id property '" + this._properties[i].getTypePropertyName());
      }
      else
      {
        if (this._tokens[i] == null)
        {
          SettableBeanProperty localSettableBeanProperty = this._properties[i].getProperty();
          throw paramDeserializationContext.mappingException("Missing property '" + localSettableBeanProperty.getName() + "' for external type id '" + this._properties[i].getTypePropertyName());
        }
        _deserialize(paramJsonParser, paramDeserializationContext, paramObject, i);
      }
      i++;
    }
    return paramObject;
  }

  public boolean handleToken(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, String paramString, Object paramObject)
  {
    Integer localInteger = (Integer)this._nameToPropertyIndex.get(paramString);
    if (localInteger == null)
      return false;
    int i = localInteger.intValue();
    int k;
    if (this._properties[i].hasTypePropertyName(paramString))
    {
      this._typeIds[i] = paramJsonParser.getText();
      paramJsonParser.skipChildren();
      if ((paramObject != null) && (this._tokens[i] != null))
        k = 1;
    }
    while (true)
    {
      if (k != 0)
      {
        _deserialize(paramJsonParser, paramDeserializationContext, paramObject, i);
        this._typeIds[i] = null;
        this._tokens[i] = null;
      }
      return true;
      k = 0;
      continue;
      TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
      localTokenBuffer.copyCurrentStructure(paramJsonParser);
      this._tokens[i] = localTokenBuffer;
      int j = 0;
      if (paramObject != null)
      {
        String str = this._typeIds[i];
        j = 0;
        if (str != null)
          j = 1;
      }
      k = j;
    }
  }

  public ExternalTypeHandler start()
  {
    return new ExternalTypeHandler(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ExternalTypeHandler
 * JD-Core Version:    0.6.2
 */