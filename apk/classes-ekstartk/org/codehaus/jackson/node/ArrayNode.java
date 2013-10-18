package org.codehaus.jackson.node;

import java.util.ArrayList;
import java.util.Iterator;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public final class ArrayNode extends ContainerNode
{
  protected ArrayList<JsonNode> _children;

  public ArrayNode(JsonNodeFactory paramJsonNodeFactory)
  {
    super(paramJsonNodeFactory);
  }

  private void _add(JsonNode paramJsonNode)
  {
    if (this._children == null)
      this._children = new ArrayList();
    this._children.add(paramJsonNode);
  }

  private boolean _sameChildren(ArrayList<JsonNode> paramArrayList)
  {
    int i = paramArrayList.size();
    if (size() != i)
      return false;
    for (int j = 0; j < i; j++)
      if (!((JsonNode)this._children.get(j)).equals(paramArrayList.get(j)))
        return false;
    return true;
  }

  public final void add(JsonNode paramJsonNode)
  {
    if (paramJsonNode == null)
      paramJsonNode = nullNode();
    _add(paramJsonNode);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    ArrayNode localArrayNode;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (paramObject.getClass() != getClass())
        return false;
      localArrayNode = (ArrayNode)paramObject;
      if ((this._children != null) && (this._children.size() != 0))
        break;
    }
    while (localArrayNode.size() == 0);
    return false;
    return localArrayNode._sameChildren(this._children);
  }

  public final JsonNode get(String paramString)
  {
    return null;
  }

  public final Iterator<JsonNode> getElements()
  {
    if (this._children == null)
      return ContainerNode.NoNodesIterator.instance();
    return this._children.iterator();
  }

  public final int hashCode()
  {
    if (this._children == null)
    {
      j = 1;
      return j;
    }
    int i = this._children.size();
    Iterator localIterator = this._children.iterator();
    int j = i;
    label29: JsonNode localJsonNode;
    if (localIterator.hasNext())
    {
      localJsonNode = (JsonNode)localIterator.next();
      if (localJsonNode == null)
        break label69;
    }
    label69: for (int k = j ^ localJsonNode.hashCode(); ; k = j)
    {
      j = k;
      break label29;
      break;
    }
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartArray();
    if (this._children != null)
    {
      Iterator localIterator = this._children.iterator();
      while (localIterator.hasNext())
        ((BaseJsonNode)localIterator.next()).serialize(paramJsonGenerator, paramSerializerProvider);
    }
    paramJsonGenerator.writeEndArray();
  }

  public final void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForArray(this, paramJsonGenerator);
    if (this._children != null)
    {
      Iterator localIterator = this._children.iterator();
      while (localIterator.hasNext())
        ((BaseJsonNode)localIterator.next()).serialize(paramJsonGenerator, paramSerializerProvider);
    }
    paramTypeSerializer.writeTypeSuffixForArray(this, paramJsonGenerator);
  }

  public final int size()
  {
    if (this._children == null)
      return 0;
    return this._children.size();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(16 + (size() << 4));
    localStringBuilder.append('[');
    if (this._children != null)
    {
      int i = this._children.size();
      for (int j = 0; j < i; j++)
      {
        if (j > 0)
          localStringBuilder.append(',');
        localStringBuilder.append(((JsonNode)this._children.get(j)).toString());
      }
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.ArrayNode
 * JD-Core Version:    0.6.2
 */