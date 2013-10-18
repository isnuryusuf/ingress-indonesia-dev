package org.codehaus.jackson.node;

public abstract class ContainerNode extends BaseJsonNode
{
  JsonNodeFactory _nodeFactory;

  protected ContainerNode(JsonNodeFactory paramJsonNodeFactory)
  {
    this._nodeFactory = paramJsonNodeFactory;
  }

  public String asText()
  {
    return "";
  }

  public final NullNode nullNode()
  {
    return this._nodeFactory.nullNode();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.ContainerNode
 * JD-Core Version:    0.6.2
 */