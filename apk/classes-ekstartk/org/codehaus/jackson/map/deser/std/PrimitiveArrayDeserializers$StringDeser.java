package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ObjectBuffer;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$StringDeser extends PrimitiveArrayDeserializers.Base<String[]>
{
  public PrimitiveArrayDeserializers$StringDeser()
  {
    super([Ljava.lang.String.class);
  }

  private final String[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
    {
      if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
        return null;
      throw paramDeserializationContext.mappingException(this._valueClass);
    }
    String[] arrayOfString = new String[1];
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    JsonToken localJsonToken2 = JsonToken.VALUE_NULL;
    String str = null;
    if (localJsonToken1 == localJsonToken2);
    while (true)
    {
      arrayOfString[0] = str;
      return arrayOfString;
      str = paramJsonParser.getText();
    }
  }

  public final String[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object[] arrayOfObject = localObjectBuffer.resetAndStart();
    int i = 0;
    JsonToken localJsonToken = paramJsonParser.nextToken();
    String str;
    if (localJsonToken != JsonToken.END_ARRAY)
      if (localJsonToken == JsonToken.VALUE_NULL)
      {
        str = null;
        label53: if (i < arrayOfObject.length)
          break label120;
        arrayOfObject = localObjectBuffer.appendCompletedChunk(arrayOfObject);
      }
    label120: for (int j = 0; ; j = i)
    {
      i = j + 1;
      arrayOfObject[j] = str;
      break;
      str = paramJsonParser.getText();
      break label53;
      String[] arrayOfString = (String[])localObjectBuffer.completeAndClearBuffer(arrayOfObject, i, String.class);
      paramDeserializationContext.returnObjectBuffer(localObjectBuffer);
      return arrayOfString;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.StringDeser
 * JD-Core Version:    0.6.2
 */