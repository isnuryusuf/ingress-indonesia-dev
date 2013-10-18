package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.FloatBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$FloatDeser extends PrimitiveArrayDeserializers.Base<float[]>
{
  public PrimitiveArrayDeserializers$FloatDeser()
  {
    super([F.class);
  }

  private final float[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._valueClass);
    float[] arrayOfFloat = new float[1];
    arrayOfFloat[0] = _parseFloatPrimitive(paramJsonParser, paramDeserializationContext);
    return arrayOfFloat;
  }

  public final float[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ArrayBuilders.FloatBuilder localFloatBuilder = paramDeserializationContext.getArrayBuilders().getFloatBuilder();
    Object localObject = (float[])localFloatBuilder.resetAndStart();
    int i = 0;
    float f;
    int j;
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      f = _parseFloatPrimitive(paramJsonParser, paramDeserializationContext);
      if (i < localObject.length)
        break label108;
      float[] arrayOfFloat = (float[])localFloatBuilder.appendCompletedChunk(localObject, i);
      j = 0;
      localObject = arrayOfFloat;
    }
    while (true)
    {
      i = j + 1;
      localObject[j] = f;
      break;
      return (float[])localFloatBuilder.completeAndClearBuffer(localObject, i);
      label108: j = i;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.FloatDeser
 * JD-Core Version:    0.6.2
 */