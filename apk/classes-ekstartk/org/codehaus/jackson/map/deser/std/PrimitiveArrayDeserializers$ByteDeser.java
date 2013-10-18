package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.ByteBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$ByteDeser extends PrimitiveArrayDeserializers.Base<byte[]>
{
  public PrimitiveArrayDeserializers$ByteDeser()
  {
    super([B.class);
  }

  private final byte[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
      throw paramDeserializationContext.mappingException(this._valueClass);
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT));
    for (int i = paramJsonParser.getByteValue(); ; i = 0)
    {
      return new byte[] { i };
      if (localJsonToken != JsonToken.VALUE_NULL)
        throw paramDeserializationContext.mappingException(this._valueClass.getComponentType());
    }
  }

  public final byte[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.VALUE_STRING)
      return paramJsonParser.getBinaryValue(paramDeserializationContext.getBase64Variant());
    if (localJsonToken1 == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      Object localObject2 = paramJsonParser.getEmbeddedObject();
      if (localObject2 == null)
        return null;
      if ((localObject2 instanceof byte[]))
        return (byte[])localObject2;
    }
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ArrayBuilders.ByteBuilder localByteBuilder = paramDeserializationContext.getArrayBuilders().getByteBuilder();
    Object localObject1 = (byte[])localByteBuilder.resetAndStart();
    int i = 0;
    JsonToken localJsonToken2 = paramJsonParser.nextToken();
    int j;
    label127: int k;
    if (localJsonToken2 != JsonToken.END_ARRAY)
      if ((localJsonToken2 == JsonToken.VALUE_NUMBER_INT) || (localJsonToken2 == JsonToken.VALUE_NUMBER_FLOAT))
      {
        j = paramJsonParser.getByteValue();
        if (i < localObject1.length)
          break label211;
        byte[] arrayOfByte = (byte[])localByteBuilder.appendCompletedChunk(localObject1, i);
        k = 0;
        localObject1 = arrayOfByte;
      }
    while (true)
    {
      i = k + 1;
      localObject1[k] = j;
      break;
      if (localJsonToken2 != JsonToken.VALUE_NULL)
        throw paramDeserializationContext.mappingException(this._valueClass.getComponentType());
      j = 0;
      break label127;
      return (byte[])localByteBuilder.completeAndClearBuffer(localObject1, i);
      label211: k = i;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.ByteDeser
 * JD-Core Version:    0.6.2
 */