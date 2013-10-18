package com.badlogic.gdx.utils;

public class PooledLinkedList<T>
{
  private PooledLinkedList.Item<T> curr;
  private PooledLinkedList.Item<T> head;
  private PooledLinkedList.Item<T> iter;
  private final Pool<PooledLinkedList.Item<T>> pool;
  private int size = 0;
  private PooledLinkedList.Item<T> tail;

  public PooledLinkedList(int paramInt)
  {
    this.pool = new PooledLinkedList.1(this, 16, paramInt);
  }

  public void add(T paramT)
  {
    PooledLinkedList.Item localItem = (PooledLinkedList.Item)this.pool.obtain();
    localItem.payload = paramT;
    localItem.next = null;
    localItem.prev = null;
    if (this.head == null)
    {
      this.head = localItem;
      this.tail = localItem;
      this.size = (1 + this.size);
      return;
    }
    localItem.prev = this.tail;
    this.tail.next = localItem;
    this.tail = localItem;
    this.size = (1 + this.size);
  }

  public void clear()
  {
    iter();
    while (next() != null)
      remove();
  }

  public void iter()
  {
    this.iter = this.head;
  }

  public T next()
  {
    if (this.iter == null)
      return null;
    Object localObject = this.iter.payload;
    this.curr = this.iter;
    this.iter = this.iter.next;
    return localObject;
  }

  public void remove()
  {
    if (this.curr == null)
      return;
    this.size = (-1 + this.size);
    this.pool.free(this.curr);
    PooledLinkedList.Item localItem1 = this.curr;
    PooledLinkedList.Item localItem2 = this.curr.next;
    PooledLinkedList.Item localItem3 = this.curr.prev;
    this.curr = null;
    if (this.size == 0)
    {
      this.head = null;
      this.tail = null;
      return;
    }
    if (localItem1 == this.head)
    {
      localItem2.prev = null;
      this.head = localItem2;
      return;
    }
    if (localItem1 == this.tail)
    {
      localItem3.next = null;
      this.tail = localItem3;
      return;
    }
    localItem3.next = localItem2;
    localItem2.prev = localItem3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.PooledLinkedList
 * JD-Core Version:    0.6.2
 */