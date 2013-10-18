package org.codehaus.jackson.map.util;

final class PrimitiveArrayBuilder$Node<T>
{
  final T _data;
  final int _dataLength;
  Node<T> _next;

  public PrimitiveArrayBuilder$Node(T paramT, int paramInt)
  {
    this._data = paramT;
    this._dataLength = paramInt;
  }

  public final int copyData(T paramT, int paramInt)
  {
    System.arraycopy(this._data, 0, paramT, paramInt, this._dataLength);
    return paramInt + this._dataLength;
  }

  public final T getData()
  {
    return this._data;
  }

  public final void linkNext(Node<T> paramNode)
  {
    if (this._next != null)
      throw new IllegalStateException();
    this._next = paramNode;
  }

  public final Node<T> next()
  {
    return this._next;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.PrimitiveArrayBuilder.Node
 * JD-Core Version:    0.6.2
 */