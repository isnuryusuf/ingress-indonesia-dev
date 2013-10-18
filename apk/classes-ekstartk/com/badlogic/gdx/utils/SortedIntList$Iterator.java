package com.badlogic.gdx.utils;

import java.util.Iterator;

class SortedIntList$Iterator
  implements Iterator<SortedIntList.Node<E>>
{
  private SortedIntList.Node<E> position;
  private SortedIntList.Node<E> previousPosition;

  SortedIntList$Iterator(SortedIntList paramSortedIntList)
  {
  }

  public boolean hasNext()
  {
    return this.position != null;
  }

  public SortedIntList.Node<E> next()
  {
    this.previousPosition = this.position;
    this.position = this.position.n;
    return this.previousPosition;
  }

  public void remove()
  {
    if (this.previousPosition != null)
    {
      if (this.previousPosition != this.this$0.first)
        break label48;
      this.this$0.first = this.position;
    }
    while (true)
    {
      SortedIntList localSortedIntList = this.this$0;
      localSortedIntList.size = (-1 + localSortedIntList.size);
      return;
      label48: this.previousPosition.p.n = this.position;
      if (this.position != null)
        this.position.p = this.previousPosition.p;
    }
  }

  public SortedIntList<E>.Iterator reset()
  {
    this.position = this.this$0.first;
    this.previousPosition = null;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.SortedIntList.Iterator
 * JD-Core Version:    0.6.2
 */