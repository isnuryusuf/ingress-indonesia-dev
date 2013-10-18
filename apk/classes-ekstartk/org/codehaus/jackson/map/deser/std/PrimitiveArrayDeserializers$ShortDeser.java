package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.ShortBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$ShortDeser extends PrimitiveArrayDeserializers.Base<short[]>
{
  public PrimitiveArrayDeserializers$ShortDeser()
  {
    super([S.class);
  }

  private final short[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._valueClass);
    short[] arrayOfShort = new short[1];
    arrayOfShort[0] = _parseShortPrimitive(paramJsonParser, paramDeserializationContext);
    return arrayOfShort;
  }

  public final short[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ArrayBuilders.ShortBuilder localShortBuilder = paramDeserializationContext.getArrayBuilders().getShortBuilder();
    Object localObject = (short[])localShortBuilder.resetAndStart();
    int i = 0;
    int j;
    int k;
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      j = _parseShortPrimitive(paramJsonParser, paramDeserializationContext);
      if (i < localObject.length)
        break label108;
      short[] arrayOfShort = (short[])localShortBuilder.appendCompletedChunk(localObject, i);
      k = 0;
      localObject = arrayOfShort;
    }
    while (true)
    {
      i = k + 1;
      localObject[k] = j;
      break;
      return (short[])localShortBuilder.completeAndClearBuffer(localObject, i);
      label108: k = i;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.ShortDeser
 * JD-Core Version:    0.6.2
 */