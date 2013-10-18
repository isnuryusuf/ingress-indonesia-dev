package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.node.ArrayNode;
import org.codehaus.jackson.node.ObjectNode;

public class JsonNodeDeserializer extends BaseNodeDeserializer<JsonNode>
{
  private static final JsonNodeDeserializer instance = new JsonNodeDeserializer();

  protected JsonNodeDeserializer()
  {
    super(JsonNode.class);
  }

  public static JsonDeserializer<? extends JsonNode> getDeserializer(Class<?> paramClass)
  {
    if (paramClass == ObjectNode.class)
      return JsonNodeDeserializer.ObjectDeserializer.getInstance();
    if (paramClass == ArrayNode.class)
      return JsonNodeDeserializer.ArrayDeserializer.getInstance();
    return instance;
  }

  public JsonNode deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    switch (JsonNodeDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default:
      return deserializeAny(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    case 1:
      return deserializeObject(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    case 2:
    }
    return deserializeArray(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.JsonNodeDeserializer
 * JD-Core Version:    0.6.2
 */