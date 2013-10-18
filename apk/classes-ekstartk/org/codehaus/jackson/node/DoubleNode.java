package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.io.NumberOutput;
import org.codehaus.jackson.map.SerializerProvider;

public final class DoubleNode extends NumericNode
{
  protected final double _value;

  public DoubleNode(double paramDouble)
  {
    this._value = paramDouble;
  }

  public static DoubleNode valueOf(double paramDouble)
  {
    return new DoubleNode(paramDouble);
  }

  public final String asText()
  {
    return NumberOutput.toString(this._value);
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
    while (((DoubleNode)paramObject)._value == this._value);
    return false;
  }

  public final int hashCode()
  {
    long l = Double.doubleToLongBits(this._value);
    return (int)l ^ (int)(l >> 32);
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(this._value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.DoubleNode
 * JD-Core Version:    0.6.2
 */