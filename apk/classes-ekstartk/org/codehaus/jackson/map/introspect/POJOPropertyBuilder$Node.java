package org.codehaus.jackson.map.introspect;

final class POJOPropertyBuilder$Node<T>
{
  public final String explicitName;
  public final boolean isMarkedIgnored;
  public final boolean isVisible;
  public final Node<T> next;
  public final T value;

  public POJOPropertyBuilder$Node(T paramT, Node<T> paramNode, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.value = paramT;
    this.next = paramNode;
    Node localNode;
    if (paramString == null)
    {
      paramString = null;
      localNode = this;
    }
    while (true)
    {
      localNode.explicitName = paramString;
      this.isVisible = paramBoolean1;
      this.isMarkedIgnored = paramBoolean2;
      return;
      if (paramString.length() == 0)
      {
        localNode = this;
        paramString = null;
      }
      else
      {
        localNode = this;
      }
    }
  }

  private Node<T> append(Node<T> paramNode)
  {
    if (this.next == null)
      return withNext(paramNode);
    return withNext(this.next.append(paramNode));
  }

  public final String toString()
  {
    String str = this.value.toString() + "[visible=" + this.isVisible + "]";
    if (this.next != null)
      str = str + ", " + this.next.toString();
    return str;
  }

  public final Node<T> trimByVisibility()
  {
    if (this.next == null)
      return this;
    Node localNode = this.next.trimByVisibility();
    if (this.explicitName != null)
    {
      if (localNode.explicitName == null)
        return withNext(null);
      return withNext(localNode);
    }
    if (localNode.explicitName != null)
      return localNode;
    if (this.isVisible == localNode.isVisible)
      return withNext(localNode);
    if (this.isVisible)
      return withNext(null);
    return localNode;
  }

  public final Node<T> withNext(Node<T> paramNode)
  {
    if (paramNode == this.next)
      return this;
    return new Node(this.value, paramNode, this.explicitName, this.isVisible, this.isMarkedIgnored);
  }

  public final Node<T> withValue(T paramT)
  {
    if (paramT == this.value)
      return this;
    return new Node(paramT, this.next, this.explicitName, this.isVisible, this.isMarkedIgnored);
  }

  public final Node<T> withoutIgnored()
  {
    if (this.isMarkedIgnored)
      if (this.next == null)
        this = null;
    Node localNode;
    do
    {
      do
      {
        return this;
        this = this.next;
        break;
      }
      while (this.next == null);
      localNode = this.next.withoutIgnored();
    }
    while (localNode == this.next);
    return withNext(localNode);
  }

  public final Node<T> withoutNonVisible()
  {
    if (this.next == null);
    for (Node localNode = null; ; localNode = this.next.withoutNonVisible())
    {
      if (this.isVisible)
        localNode = withNext(localNode);
      return localNode;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.POJOPropertyBuilder.Node
 * JD-Core Version:    0.6.2
 */