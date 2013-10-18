package org.codehaus.jackson.map.deser.std;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$NumberDeserializer extends StdScalarDeserializer<Number>
{
  public StdDeserializer$NumberDeserializer()
  {
    super(Number.class);
  }

  public final Number deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS))
        return paramJsonParser.getBigIntegerValue();
      return paramJsonParser.getNumberValue();
    }
    if (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)
    {
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS))
        return paramJsonParser.getDecimalValue();
      return Double.valueOf(paramJsonParser.getDoubleValue());
    }
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText().trim();
      try
      {
        if (str.indexOf('.') < 0)
          break label135;
        if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS))
        {
          BigDecimal localBigDecimal = new BigDecimal(str);
          return localBigDecimal;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid number");
      }
      return new Double(str);
      label135: if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS))
        return new BigInteger(str);
      long l = Long.parseLong(str);
      if ((l <= 2147483647L) && (l >= -2147483648L))
        return Integer.valueOf((int)l);
      Long localLong = Long.valueOf(l);
      return localLong;
    }
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }

  public final Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    switch (StdDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default:
      return paramTypeDeserializer.deserializeTypedFromScalar(paramJsonParser, paramDeserializationContext);
    case 1:
    case 2:
    case 3:
    }
    return deserialize(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.NumberDeserializer
 * JD-Core Version:    0.6.2
 */