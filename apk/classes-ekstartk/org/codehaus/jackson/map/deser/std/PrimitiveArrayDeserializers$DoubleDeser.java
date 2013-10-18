package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.DoubleBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$DoubleDeser extends PrimitiveArrayDeserializers.Base<double[]>
{
  public PrimitiveArrayDeserializers$DoubleDeser()
  {
    super([D.class);
  }

  private final double[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._valueClass);
    double[] arrayOfDouble = new double[1];
    arrayOfDouble[0] = _parseDoublePrimitive(paramJsonParser, paramDeserializationContext);
    return arrayOfDouble;
  }

  public final double[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ArrayBuilders.DoubleBuilder localDoubleBuilder = paramDeserializationContext.getArrayBuilders().getDoubleBuilder();
    Object localObject = (double[])localDoubleBuilder.resetAndStart();
    int i = 0;
    double d;
    int j;
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      d = _parseDoublePrimitive(paramJsonParser, paramDeserializationContext);
      if (i < localObject.length)
        break label108;
      double[] arrayOfDouble = (double[])localDoubleBuilder.appendCompletedChunk(localObject, i);
      j = 0;
      localObject = arrayOfDouble;
    }
    while (true)
    {
      i = j + 1;
      localObject[j] = d;
      break;
      return (double[])localDoubleBuilder.completeAndClearBuffer(localObject, i);
      label108: j = i;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.DoubleDeser
 * JD-Core Version:    0.6.2
 */