package com.badlogic.gdx.utils;

class SortedIntList$NodePool<E> extends Pool<SortedIntList.Node<E>>
{
  protected SortedIntList.Node<E> newObject()
  {
    return new SortedIntList.Node();
  }

  public SortedIntList.Node<E> obtain(SortedIntList.Node<E> paramNode1, SortedIntList.Node<E> paramNode2, E paramE, int paramInt)
  {
    SortedIntList.Node localNode = (SortedIntList.Node)super.obtain();
    localNode.p = paramNode1;
    localNode.n = paramNode2;
    localNode.value = paramE;
    localNode.index = paramInt;
    return localNode;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.SortedIntList.NodePool
 * JD-Core Version:    0.6.2
 */