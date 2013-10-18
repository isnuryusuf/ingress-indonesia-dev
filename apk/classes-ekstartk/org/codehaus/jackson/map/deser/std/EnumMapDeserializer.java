package org.codehaus.jackson.map.deser.std;

import java.util.EnumMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.util.EnumResolver;

public class EnumMapDeserializer extends StdDeserializer<EnumMap<?, ?>>
{
  protected final EnumResolver<?> _enumResolver;
  protected final JsonDeserializer<Object> _valueDeserializer;

  public EnumMapDeserializer(EnumResolver<?> paramEnumResolver, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(EnumMap.class);
    this._enumResolver = paramEnumResolver;
    this._valueDeserializer = paramJsonDeserializer;
  }

  private EnumMap<?, ?> constructMap()
  {
    return new EnumMap(this._enumResolver.getEnumClass());
  }

  public EnumMap<?, ?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() != JsonToken.START_OBJECT)
      throw paramDeserializationContext.mappingException(EnumMap.class);
    EnumMap localEnumMap = constructMap();
    if (paramJsonParser.nextToken() != JsonToken.END_OBJECT)
    {
      String str = paramJsonParser.getCurrentName();
      Enum localEnum = this._enumResolver.findEnum(str);
      if (localEnum == null)
        throw paramDeserializationContext.weirdStringException(this._enumResolver.getEnumClass(), "value not one of declared Enum instance names");
      if (paramJsonParser.nextToken() == JsonToken.VALUE_NULL);
      for (Object localObject = null; ; localObject = this._valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext))
      {
        localEnumMap.put(localEnum, localObject);
        break;
      }
    }
    return localEnumMap;
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.EnumMapDeserializer
 * JD-Core Version:    0.6.2
 */