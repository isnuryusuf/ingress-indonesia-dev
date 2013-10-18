package com.badlogic.gdx.utils;

class PooledLinkedList$1 extends Pool<PooledLinkedList.Item<T>>
{
  PooledLinkedList$1(PooledLinkedList paramPooledLinkedList, int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }

  protected PooledLinkedList.Item<T> newObject()
  {
    return new PooledLinkedList.Item();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.PooledLinkedList.1
 * JD-Core Version:    0.6.2
 */