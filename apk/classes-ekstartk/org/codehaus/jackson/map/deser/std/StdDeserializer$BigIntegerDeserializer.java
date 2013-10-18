package org.codehaus.jackson.map.deser.std;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class StdDeserializer$BigIntegerDeserializer extends StdScalarDeserializer<BigInteger>
{
  public StdDeserializer$BigIntegerDeserializer()
  {
    super(BigInteger.class);
  }

  public BigInteger deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
      switch (StdDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
      {
      default:
      case 1:
      case 2:
      }
    String str;
    do
    {
      str = paramJsonParser.getText().trim();
      if (str.length() != 0)
        break;
      return null;
      return BigInteger.valueOf(paramJsonParser.getLongValue());
      if (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)
        return paramJsonParser.getDecimalValue().toBigInteger();
    }
    while (localJsonToken == JsonToken.VALUE_STRING);
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
    try
    {
      BigInteger localBigInteger = new BigInteger(str);
      return localBigInteger;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid representation");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.BigIntegerDeserializer
 * JD-Core Version:    0.6.2
 */