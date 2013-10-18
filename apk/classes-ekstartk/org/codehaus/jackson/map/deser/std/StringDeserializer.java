package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.Base64Variants;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class StringDeserializer extends StdScalarDeserializer<String>
{
  public StringDeserializer()
  {
    super(String.class);
  }

  public String deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_STRING)
      return paramJsonParser.getText();
    if (localJsonToken == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      Object localObject = paramJsonParser.getEmbeddedObject();
      if (localObject == null)
        return null;
      if ((localObject instanceof byte[]))
        return Base64Variants.getDefaultVariant().encode((byte[])localObject, false);
      return localObject.toString();
    }
    if (localJsonToken.isScalarValue())
      return paramJsonParser.getText();
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  public String deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return deserialize(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StringDeserializer
 * JD-Core Version:    0.6.2
 */