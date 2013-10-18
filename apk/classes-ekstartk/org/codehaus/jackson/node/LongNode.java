package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.io.NumberOutput;
import org.codehaus.jackson.map.SerializerProvider;

public final class LongNode extends NumericNode
{
  final long _value;

  public LongNode(long paramLong)
  {
    this._value = paramLong;
  }

  public static LongNode valueOf(long paramLong)
  {
    return new LongNode(paramLong);
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
    while (((LongNode)paramObject)._value == this._value);
    return false;
  }

  public final int hashCode()
  {
    return (int)this._value ^ (int)(this._value >> 32);
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(this._value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.LongNode
 * JD-Core Version:    0.6.2
 */