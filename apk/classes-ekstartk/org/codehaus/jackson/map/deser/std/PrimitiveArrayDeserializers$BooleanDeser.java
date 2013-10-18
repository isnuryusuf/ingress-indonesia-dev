package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.BooleanBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$BooleanDeser extends PrimitiveArrayDeserializers.Base<boolean[]>
{
  public PrimitiveArrayDeserializers$BooleanDeser()
  {
    super([Z.class);
  }

  private final boolean[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._valueClass);
    boolean[] arrayOfBoolean = new boolean[1];
    arrayOfBoolean[0] = _parseBooleanPrimitive(paramJsonParser, paramDeserializationContext);
    return arrayOfBoolean;
  }

  public final boolean[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ArrayBuilders.BooleanBuilder localBooleanBuilder = paramDeserializationContext.getArrayBuilders().getBooleanBuilder();
    Object localObject = (boolean[])localBooleanBuilder.resetAndStart();
    int i = 0;
    boolean bool;
    int j;
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      bool = _parseBooleanPrimitive(paramJsonParser, paramDeserializationContext);
      if (i < localObject.length)
        break label108;
      boolean[] arrayOfBoolean = (boolean[])localBooleanBuilder.appendCompletedChunk(localObject, i);
      j = 0;
      localObject = arrayOfBoolean;
    }
    while (true)
    {
      i = j + 1;
      localObject[j] = bool;
      break;
      return (boolean[])localBooleanBuilder.completeAndClearBuffer(localObject, i);
      label108: j = i;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.BooleanDeser
 * JD-Core Version:    0.6.2
 */