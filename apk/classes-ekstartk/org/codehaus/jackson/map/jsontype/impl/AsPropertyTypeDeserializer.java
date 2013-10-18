package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.JsonParserSequence;
import org.codehaus.jackson.util.TokenBuffer;

public class AsPropertyTypeDeserializer extends AsArrayTypeDeserializer
{
  protected final String _typePropertyName;

  public AsPropertyTypeDeserializer(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, Class<?> paramClass, String paramString)
  {
    super(paramJavaType, paramTypeIdResolver, paramBeanProperty, paramClass);
    this._typePropertyName = paramString;
  }

  protected Object _deserializeTypedUsingDefaultImpl(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TokenBuffer paramTokenBuffer)
  {
    if (this._defaultImpl != null)
    {
      JsonDeserializer localJsonDeserializer = _findDefaultImplDeserializer(paramDeserializationContext);
      if (paramTokenBuffer != null)
      {
        paramTokenBuffer.writeEndObject();
        paramJsonParser = paramTokenBuffer.asParser(paramJsonParser);
        paramJsonParser.nextToken();
      }
      return localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
    }
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.FIELD_NAME, "missing property '" + this._typePropertyName + "' that is to contain type id  (for class " + baseTypeName() + ")");
  }

  public Object deserializeTypedFromAny(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY)
      return super.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
    return deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }

  public Object deserializeTypedFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    JsonToken localJsonToken2;
    TokenBuffer localTokenBuffer;
    if (localJsonToken1 == JsonToken.START_OBJECT)
    {
      localJsonToken1 = paramJsonParser.nextToken();
      localJsonToken2 = localJsonToken1;
      localTokenBuffer = null;
    }
    while (true)
    {
      if (localJsonToken2 != JsonToken.FIELD_NAME)
        break label171;
      String str = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      if (this._typePropertyName.equals(str))
      {
        JsonDeserializer localJsonDeserializer = _findDeserializer(paramDeserializationContext, paramJsonParser.getText());
        if (localTokenBuffer != null)
          paramJsonParser = JsonParserSequence.createFlattened(localTokenBuffer.asParser(paramJsonParser), paramJsonParser);
        paramJsonParser.nextToken();
        return localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        if (localJsonToken1 == JsonToken.FIELD_NAME)
          break;
        throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_OBJECT, "need JSON Object to contain As.PROPERTY type information (for class " + baseTypeName() + ")");
      }
      if (localTokenBuffer == null)
        localTokenBuffer = new TokenBuffer(null);
      localTokenBuffer.writeFieldName(str);
      localTokenBuffer.copyCurrentStructure(paramJsonParser);
      localJsonToken2 = paramJsonParser.nextToken();
    }
    label171: return _deserializeTypedUsingDefaultImpl(paramJsonParser, paramDeserializationContext, localTokenBuffer);
  }

  public String getPropertyName()
  {
    return this._typePropertyName;
  }

  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.PROPERTY;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsPropertyTypeDeserializer
 * JD-Core Version:    0.6.2
 */