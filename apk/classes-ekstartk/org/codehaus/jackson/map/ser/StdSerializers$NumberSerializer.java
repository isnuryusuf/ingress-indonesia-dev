package org.codehaus.jackson.map.ser;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.ScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$NumberSerializer extends ScalarSerializerBase<Number>
{
  public static final NumberSerializer instance = new NumberSerializer();

  public StdSerializers$NumberSerializer()
  {
    super(Number.class);
  }

  public final void serialize(Number paramNumber, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if ((paramNumber instanceof BigDecimal))
    {
      paramJsonGenerator.writeNumber((BigDecimal)paramNumber);
      return;
    }
    if ((paramNumber instanceof BigInteger))
    {
      paramJsonGenerator.writeNumber((BigInteger)paramNumber);
      return;
    }
    if ((paramNumber instanceof Integer))
    {
      paramJsonGenerator.writeNumber(paramNumber.intValue());
      return;
    }
    if ((paramNumber instanceof Long))
    {
      paramJsonGenerator.writeNumber(paramNumber.longValue());
      return;
    }
    if ((paramNumber instanceof Double))
    {
      paramJsonGenerator.writeNumber(paramNumber.doubleValue());
      return;
    }
    if ((paramNumber instanceof Float))
    {
      paramJsonGenerator.writeNumber(paramNumber.floatValue());
      return;
    }
    if (((paramNumber instanceof Byte)) || ((paramNumber instanceof Short)))
    {
      paramJsonGenerator.writeNumber(paramNumber.intValue());
      return;
    }
    paramJsonGenerator.writeNumber(paramNumber.toString());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.NumberSerializer
 * JD-Core Version:    0.6.2
 */