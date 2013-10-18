package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.LongBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$LongDeser extends PrimitiveArrayDeserializers.Base<long[]>
{
  public PrimitiveArrayDeserializers$LongDeser()
  {
    super([J.class);
  }

  private final long[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._valueClass);
    long[] arrayOfLong = new long[1];
    arrayOfLong[0] = _parseLongPrimitive(paramJsonParser, paramDeserializationContext);
    return arrayOfLong;
  }

  public final long[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ArrayBuilders.LongBuilder localLongBuilder = paramDeserializationContext.getArrayBuilders().getLongBuilder();
    Object localObject = (long[])localLongBuilder.resetAndStart();
    int i = 0;
    long l;
    int j;
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      l = _parseLongPrimitive(paramJsonParser, paramDeserializationContext);
      if (i < localObject.length)
        break label108;
      long[] arrayOfLong = (long[])localLongBuilder.appendCompletedChunk(localObject, i);
      j = 0;
      localObject = arrayOfLong;
    }
    while (true)
    {
      i = j + 1;
      localObject[j] = l;
      break;
      return (long[])localLongBuilder.completeAndClearBuffer(localObject, i);
      label108: j = i;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.LongDeser
 * JD-Core Version:    0.6.2
 */