package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.node.ObjectNode;

final class JsonNodeDeserializer$ObjectDeserializer extends BaseNodeDeserializer<ObjectNode>
{
  protected static final ObjectDeserializer _instance = new ObjectDeserializer();

  protected JsonNodeDeserializer$ObjectDeserializer()
  {
    super(ObjectNode.class);
  }

  public static ObjectDeserializer getInstance()
  {
    return _instance;
  }

  public final ObjectNode deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.START_OBJECT)
    {
      paramJsonParser.nextToken();
      return deserializeObject(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    }
    if (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      return deserializeObject(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    throw paramDeserializationContext.mappingException(ObjectNode.class);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.JsonNodeDeserializer.ObjectDeserializer
 * JD-Core Version:    0.6.2
 */