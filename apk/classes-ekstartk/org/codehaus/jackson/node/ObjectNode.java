package org.codehaus.jackson.node;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public class ObjectNode extends ContainerNode
{
  protected LinkedHashMap<String, JsonNode> _children = null;

  public ObjectNode(JsonNodeFactory paramJsonNodeFactory)
  {
    super(paramJsonNodeFactory);
  }

  private final JsonNode _put(String paramString, JsonNode paramJsonNode)
  {
    if (this._children == null)
      this._children = new LinkedHashMap();
    return (JsonNode)this._children.put(paramString, paramJsonNode);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (paramObject == null)
      return false;
    if (paramObject.getClass() != getClass())
      return false;
    ObjectNode localObjectNode = (ObjectNode)paramObject;
    if (localObjectNode.size() != size())
      return false;
    if (this._children != null)
    {
      Iterator localIterator = this._children.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        JsonNode localJsonNode1 = (JsonNode)localEntry.getValue();
        JsonNode localJsonNode2 = localObjectNode.get(str);
        if ((localJsonNode2 == null) || (!localJsonNode2.equals(localJsonNode1)))
          return false;
      }
    }
    return true;
  }

  public JsonNode get(String paramString)
  {
    if (this._children != null)
      return (JsonNode)this._children.get(paramString);
    return null;
  }

  public Iterator<JsonNode> getElements()
  {
    if (this._children == null)
      return ContainerNode.NoNodesIterator.instance();
    return this._children.values().iterator();
  }

  public int hashCode()
  {
    if (this._children == null)
      return -1;
    return this._children.hashCode();
  }

  public JsonNode put(String paramString, JsonNode paramJsonNode)
  {
    if (paramJsonNode == null)
      paramJsonNode = nullNode();
    return _put(paramString, paramJsonNode);
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    if (this._children != null)
    {
      Iterator localIterator = this._children.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramJsonGenerator.writeFieldName((String)localEntry.getKey());
        ((BaseJsonNode)localEntry.getValue()).serialize(paramJsonGenerator, paramSerializerProvider);
      }
    }
    paramJsonGenerator.writeEndObject();
  }

  public void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(this, paramJsonGenerator);
    if (this._children != null)
    {
      Iterator localIterator = this._children.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramJsonGenerator.writeFieldName((String)localEntry.getKey());
        ((BaseJsonNode)localEntry.getValue()).serialize(paramJsonGenerator, paramSerializerProvider);
      }
    }
    paramTypeSerializer.writeTypeSuffixForObject(this, paramJsonGenerator);
  }

  public int size()
  {
    if (this._children == null)
      return 0;
    return this._children.size();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(32 + (size() << 4));
    localStringBuilder.append("{");
    if (this._children != null)
    {
      Iterator localIterator = this._children.entrySet().iterator();
      int j;
      for (int i = 0; localIterator.hasNext(); i = j)
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (i > 0)
          localStringBuilder.append(",");
        j = i + 1;
        TextNode.appendQuoted(localStringBuilder, (String)localEntry.getKey());
        localStringBuilder.append(':');
        localStringBuilder.append(((JsonNode)localEntry.getValue()).toString());
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.ObjectNode
 * JD-Core Version:    0.6.2
 */