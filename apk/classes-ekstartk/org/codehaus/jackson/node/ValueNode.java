package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class ValueNode extends BaseJsonNode
{
  public void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(this, paramJsonGenerator);
    serialize(paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(this, paramJsonGenerator);
  }

  public String toString()
  {
    return asText();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.ValueNode
 * JD-Core Version:    0.6.2
 */