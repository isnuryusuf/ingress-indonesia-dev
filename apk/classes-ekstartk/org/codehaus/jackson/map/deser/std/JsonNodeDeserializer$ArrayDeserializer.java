package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.node.ArrayNode;

final class JsonNodeDeserializer$ArrayDeserializer extends BaseNodeDeserializer<ArrayNode>
{
  protected static final ArrayDeserializer _instance = new ArrayDeserializer();

  protected JsonNodeDeserializer$ArrayDeserializer()
  {
    super(ArrayNode.class);
  }

  public static ArrayDeserializer getInstance()
  {
    return _instance;
  }

  public final ArrayNode deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.isExpectedStartArrayToken())
      return deserializeArray(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    throw paramDeserializationContext.mappingException(ArrayNode.class);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.JsonNodeDeserializer.ArrayDeserializer
 * JD-Core Version:    0.6.2
 */