package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.io.NumberOutput;
import org.codehaus.jackson.map.SerializerProvider;

public final class IntNode extends NumericNode
{
  private static final IntNode[] CANONICALS = new IntNode[12];
  final int _value;

  static
  {
    for (int i = 0; i < 12; i++)
      CANONICALS[i] = new IntNode(i - 1);
  }

  public IntNode(int paramInt)
  {
    this._value = paramInt;
  }

  public static IntNode valueOf(int paramInt)
  {
    if ((paramInt > 10) || (paramInt < -1))
      return new IntNode(paramInt);
    return CANONICALS[(paramInt + 1)];
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
    while (((IntNode)paramObject)._value == this._value);
    return false;
  }

  public final int hashCode()
  {
    return this._value;
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(this._value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.IntNode
 * JD-Core Version:    0.6.2
 */