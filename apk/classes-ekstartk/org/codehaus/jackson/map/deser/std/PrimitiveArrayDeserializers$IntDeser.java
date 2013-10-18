package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.IntBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$IntDeser extends PrimitiveArrayDeserializers.Base<int[]>
{
  public PrimitiveArrayDeserializers$IntDeser()
  {
    super([I.class);
  }

  private final int[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._valueClass);
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
    return arrayOfInt;
  }

  public final int[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ArrayBuilders.IntBuilder localIntBuilder = paramDeserializationContext.getArrayBuilders().getIntBuilder();
    Object localObject = (int[])localIntBuilder.resetAndStart();
    int i = 0;
    int j;
    int k;
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      j = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
      if (i < localObject.length)
        break label108;
      int[] arrayOfInt = (int[])localIntBuilder.appendCompletedChunk(localObject, i);
      k = 0;
      localObject = arrayOfInt;
    }
    while (true)
    {
      i = k + 1;
      localObject[k] = j;
      break;
      return (int[])localIntBuilder.completeAndClearBuffer(localObject, i);
      label108: k = i;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.IntDeser
 * JD-Core Version:    0.6.2
 */