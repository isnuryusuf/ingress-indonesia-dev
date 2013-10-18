package org.codehaus.jackson.node;

import java.math.BigDecimal;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class DecimalNode extends NumericNode
{
  protected final BigDecimal _value;

  public DecimalNode(BigDecimal paramBigDecimal)
  {
    this._value = paramBigDecimal;
  }

  public static DecimalNode valueOf(BigDecimal paramBigDecimal)
  {
    return new DecimalNode(paramBigDecimal);
  }

  public final String asText()
  {
    return this._value.toString();
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    Class localClass1;
    Class localClass2;
    do
    {
      do
      {
        return bool;
        bool = false;
      }
      while (paramObject == null);
      localClass1 = paramObject.getClass();
      localClass2 = getClass();
      bool = false;
    }
    while (localClass1 != localClass2);
    return ((DecimalNode)paramObject)._value.equals(this._value);
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
 * Qualified Name:     org.codehaus.jackson.node.DecimalNode
 * JD-Core Version:    0.6.2
 */