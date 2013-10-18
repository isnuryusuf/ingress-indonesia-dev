package com.badlogic.gdx.utils;

import java.util.Iterator;

public class SortedIntList<E>
  implements Iterable<SortedIntList.Node<E>>
{
  SortedIntList.Node<E> first;
  private SortedIntList<E>.Iterator iterator;
  private SortedIntList.NodePool<E> nodePool = new SortedIntList.NodePool();
  int size = 0;

  public void clear()
  {
    while (this.first != null)
    {
      this.nodePool.free(this.first);
      this.first = this.first.n;
    }
    this.size = 0;
  }

  public E get(int paramInt)
  {
    if (this.first != null)
    {
      for (SortedIntList.Node localNode = this.first; (localNode.n != null) && (localNode.index < paramInt); localNode = localNode.n);
      if (localNode.index == paramInt)
        return localNode.value;
    }
    return null;
  }

  public E insert(int paramInt, E paramE)
  {
    if (this.first != null)
    {
      for (SortedIntList.Node localNode1 = this.first; (localNode1.n != null) && (localNode1.n.index <= paramInt); localNode1 = localNode1.n);
      if (paramInt > localNode1.index)
      {
        localNode1.n = this.nodePool.obtain(localNode1, localNode1.n, paramE, paramInt);
        if (localNode1.n.n != null)
          localNode1.n.n.p = localNode1.n;
        this.size = (1 + this.size);
        return null;
      }
      if (paramInt < localNode1.index)
      {
        SortedIntList.Node localNode2 = this.nodePool.obtain(null, this.first, paramE, paramInt);
        this.first.p = localNode2;
        this.first = localNode2;
        this.size = (1 + this.size);
        return null;
      }
      localNode1.value = paramE;
      return null;
    }
    this.first = this.nodePool.obtain(null, null, paramE, paramInt);
    this.size = (1 + this.size);
    return null;
  }

  public Iterator<SortedIntList.Node<E>> iterator()
  {
    if (this.iterator == null)
      this.iterator = new SortedIntList.Iterator(this);
    return this.iterator.reset();
  }

  public int size()
  {
    return this.size;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.SortedIntList
 * JD-Core Version:    0.6.2
 */