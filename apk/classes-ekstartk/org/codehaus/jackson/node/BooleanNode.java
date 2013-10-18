package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class BooleanNode extends ValueNode
{
  public static final BooleanNode FALSE = new BooleanNode();
  public static final BooleanNode TRUE = new BooleanNode();

  public static BooleanNode getFalse()
  {
    return FALSE;
  }

  public static BooleanNode getTrue()
  {
    return TRUE;
  }

  public final String asText()
  {
    if (this == TRUE)
      return "true";
    return "false";
  }

  public final boolean equals(Object paramObject)
  {
    return paramObject == this;
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this == TRUE);
    for (boolean bool = true; ; bool = false)
    {
      paramJsonGenerator.writeBoolean(bool);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.BooleanNode
 * JD-Core Version:    0.6.2
 */