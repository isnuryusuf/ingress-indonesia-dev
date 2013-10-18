package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class JavaTypeDeserializer extends StdScalarDeserializer<JavaType>
{
  public JavaTypeDeserializer()
  {
    super(JavaType.class);
  }

  public JavaType deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      if (str.length() == 0)
        return (JavaType)getEmptyValue();
      return paramDeserializationContext.getTypeFactory().constructFromCanonical(str);
    }
    if (localJsonToken == JsonToken.VALUE_EMBEDDED_OBJECT)
      return (JavaType)paramJsonParser.getEmbeddedObject();
    throw paramDeserializationContext.mappingException(this._valueClass);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.JavaTypeDeserializer
 * JD-Core Version:    0.6.2
 */