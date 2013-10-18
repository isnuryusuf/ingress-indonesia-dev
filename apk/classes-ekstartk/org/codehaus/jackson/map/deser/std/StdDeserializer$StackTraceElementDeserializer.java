package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

public class StdDeserializer$StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement>
{
  public StdDeserializer$StackTraceElementDeserializer()
  {
    super(StackTraceElement.class);
  }

  public StackTraceElement deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1 = paramJsonParser.getCurrentToken();
    if (localJsonToken1 == JsonToken.START_OBJECT)
    {
      String str1 = "";
      String str2 = "";
      String str3 = "";
      int i = -1;
      while (true)
      {
        JsonToken localJsonToken2 = paramJsonParser.nextValue();
        if (localJsonToken2 == JsonToken.END_OBJECT)
          break;
        String str4 = paramJsonParser.getCurrentName();
        if ("className".equals(str4))
          str1 = paramJsonParser.getText();
        else if ("fileName".equals(str4))
          str3 = paramJsonParser.getText();
        else if ("lineNumber".equals(str4))
        {
          if (localJsonToken2.isNumeric())
            i = paramJsonParser.getIntValue();
          else
            throw JsonMappingException.from(paramJsonParser, "Non-numeric token (" + localJsonToken2 + ") for property 'lineNumber'");
        }
        else if ("methodName".equals(str4))
          str2 = paramJsonParser.getText();
        else if (!"nativeMethod".equals(str4))
          handleUnknownProperty(paramJsonParser, paramDeserializationContext, this._valueClass, str4);
      }
      return new StackTraceElement(str1, str2, str3, i);
    }
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.StackTraceElementDeserializer
 * JD-Core Version:    0.6.2
 */