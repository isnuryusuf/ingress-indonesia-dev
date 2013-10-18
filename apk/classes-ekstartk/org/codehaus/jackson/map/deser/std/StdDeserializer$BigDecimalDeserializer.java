package org.codehaus.jackson.map.deser.std;

import java.math.BigDecimal;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class StdDeserializer$BigDecimalDeserializer extends StdScalarDeserializer<BigDecimal>
{
  public StdDeserializer$BigDecimalDeserializer()
  {
    super(BigDecimal.class);
  }

  public BigDecimal deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT))
      return paramJsonParser.getDecimalValue();
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      if (str.length() == 0)
        return null;
      try
      {
        BigDecimal localBigDecimal = new BigDecimal(str);
        return localBigDecimal;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid representation");
      }
    }
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.BigDecimalDeserializer
 * JD-Core Version:    0.6.2
 */