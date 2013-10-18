package org.codehaus.jackson.node;

import java.math.BigInteger;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class BigIntegerNode extends NumericNode
{
  protected final BigInteger _value;

  public BigIntegerNode(BigInteger paramBigInteger)
  {
    this._value = paramBigInteger;
  }

  public static BigIntegerNode valueOf(BigInteger paramBigInteger)
  {
    return new BigIntegerNode(paramBigInteger);
  }

  public final String asText()
  {
    return this._value.toString();
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (paramObject.getClass() != getClass())
        return false;
    }
    while (((BigIntegerNode)paramObject)._value == this._value);
    return false;
  }

  public final int hashCode()
  {
    return this._value.hashCode();
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(this._value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.BigIntegerNode
 * JD-Core Version:    0.6.2
 */