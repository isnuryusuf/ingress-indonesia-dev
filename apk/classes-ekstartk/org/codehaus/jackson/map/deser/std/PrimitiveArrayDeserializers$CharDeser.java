package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.Base64Variants;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$CharDeser extends PrimitiveArrayDeserializers.Base<char[]>
{
  public PrimitiveArrayDeserializers$CharDeser()
  {
    super([C.class);
  }

  public final char[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.VALUE_STRING)
    {
      char[] arrayOfChar1 = paramJsonParser.getTextCharacters();
      int i = paramJsonParser.getTextOffset();
      int j = paramJsonParser.getTextLength();
      char[] arrayOfChar2 = new char[j];
      System.arraycopy(arrayOfChar1, i, arrayOfChar2, 0, j);
      return arrayOfChar2;
    }
    if (paramJsonParser.isExpectedStartArrayToken())
    {
      StringBuilder localStringBuilder = new StringBuilder(64);
      while (true)
      {
        JsonToken localJsonToken2 = paramJsonParser.nextToken();
        if (localJsonToken2 == JsonToken.END_ARRAY)
          break;
        if (localJsonToken2 != JsonToken.VALUE_STRING)
          throw paramDeserializationContext.mappingException(Character.TYPE);
        String str = paramJsonParser.getText();
        if (str.length() != 1)
          throw JsonMappingException.from(paramJsonParser, "Can not convert a JSON String of length " + str.length() + " into a char element of char array");
        localStringBuilder.append(str.charAt(0));
      }
      return localStringBuilder.toString().toCharArray();
    }
    if (localJsonToken1 == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      Object localObject = paramJsonParser.getEmbeddedObject();
      if (localObject == null)
        return null;
      if ((localObject instanceof char[]))
        return (char[])localObject;
      if ((localObject instanceof String))
        return ((String)localObject).toCharArray();
      if ((localObject instanceof byte[]))
        return Base64Variants.getDefaultVariant().encode((byte[])localObject, false).toCharArray();
    }
    throw paramDeserializationContext.mappingException(this._valueClass);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.CharDeser
 * JD-Core Version:    0.6.2
 */