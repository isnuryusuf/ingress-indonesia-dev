package org.codehaus.jackson.map.util;

final class ObjectBuffer$Node
{
  final Object[] _data;
  Node _next;

  public ObjectBuffer$Node(Object[] paramArrayOfObject)
  {
    this._data = paramArrayOfObject;
  }

  public final Object[] getData()
  {
    return this._data;
  }

  public final void linkNext(Node paramNode)
  {
    if (this._next != null)
      throw new IllegalStateException();
    this._next = paramNode;
  }

  public final Node next()
  {
    return this._next;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.ObjectBuffer.Node
 * JD-Core Version:    0.6.2
 */