package org.codehaus.jackson.map.util;

public final class LinkedNode<T>
{
  final LinkedNode<T> _next;
  final T _value;

  public final LinkedNode<T> next()
  {
    return this._next;
  }

  public final T value()
  {
    return this._value;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.LinkedNode
 * JD-Core Version:    0.6.2
 */