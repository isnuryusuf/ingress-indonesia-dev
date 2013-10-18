package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonSerializableWithType;
import org.codehaus.jackson.map.SerializerProvider;

public abstract class BaseJsonNode extends JsonNode
  implements JsonSerializableWithType
{
  public abstract void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.BaseJsonNode
 * JD-Core Version:    0.6.2
 */