package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class NullNode extends ValueNode
{
  public static final NullNode instance = new NullNode();

  public static NullNode getInstance()
  {
    return instance;
  }

  public final String asText()
  {
    return "null";
  }

  public final boolean equals(Object paramObject)
  {
    return paramObject == this;
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNull();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.NullNode
 * JD-Core Version:    0.6.2
 */