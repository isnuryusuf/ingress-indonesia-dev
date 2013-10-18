package com.badlogic.gdx.utils;

public abstract class Pool<T>
{
  private final Array<T> freeObjects;
  public final int max;

  public Pool()
  {
    this(16, 2147483647);
  }

  public Pool(int paramInt)
  {
    this(paramInt, 2147483647);
  }

  public Pool(int paramInt1, int paramInt2)
  {
    this.freeObjects = new Array(false, paramInt1);
    this.max = paramInt2;
  }

  public void clear()
  {
    this.freeObjects.clear();
  }

  public void free(Array<T> paramArray)
  {
    int i = Math.min(paramArray.size, this.max - this.freeObjects.size);
    for (int j = 0; j < i; j++)
    {
      Object localObject = paramArray.get(j);
      this.freeObjects.add(localObject);
      if ((localObject instanceof Pool.Poolable))
        ((Pool.Poolable)localObject).reset();
    }
  }

  public void free(T paramT)
  {
    if (paramT == null)
      throw new IllegalArgumentException("object cannot be null.");
    if (this.freeObjects.size < this.max)
      this.freeObjects.add(paramT);
    if ((paramT instanceof Pool.Poolable))
      ((Pool.Poolable)paramT).reset();
  }

  protected abstract T newObject();

  public T obtain()
  {
    if (this.freeObjects.size == 0)
      return newObject();
    return this.freeObjects.pop();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Pool
 * JD-Core Version:    0.6.2
 */