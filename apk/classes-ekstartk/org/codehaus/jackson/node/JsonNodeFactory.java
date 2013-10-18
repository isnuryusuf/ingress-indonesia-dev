package org.codehaus.jackson.node;

import java.math.BigDecimal;
import java.math.BigInteger;

public class JsonNodeFactory
{
  public static final JsonNodeFactory instance = new JsonNodeFactory();

  public POJONode POJONode(Object paramObject)
  {
    return new POJONode(paramObject);
  }

  public ArrayNode arrayNode()
  {
    return new ArrayNode(this);
  }

  public BooleanNode booleanNode(boolean paramBoolean)
  {
    if (paramBoolean)
      return BooleanNode.getTrue();
    return BooleanNode.getFalse();
  }

  public NullNode nullNode()
  {
    return NullNode.getInstance();
  }

  public NumericNode numberNode(double paramDouble)
  {
    return DoubleNode.valueOf(paramDouble);
  }

  public NumericNode numberNode(int paramInt)
  {
    return IntNode.valueOf(paramInt);
  }

  public NumericNode numberNode(long paramLong)
  {
    return LongNode.valueOf(paramLong);
  }

  public NumericNode numberNode(BigDecimal paramBigDecimal)
  {
    return DecimalNode.valueOf(paramBigDecimal);
  }

  public NumericNode numberNode(BigInteger paramBigInteger)
  {
    return BigIntegerNode.valueOf(paramBigInteger);
  }

  public ObjectNode objectNode()
  {
    return new ObjectNode(this);
  }

  public TextNode textNode(String paramString)
  {
    return TextNode.valueOf(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.JsonNodeFactory
 * JD-Core Version:    0.6.2
 */