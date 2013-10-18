package com.badlogic.gdx.assets;

public class RefCountedContainer
{
  Object object;
  int refCount = 1;

  public RefCountedContainer(Object paramObject)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("Object must not be null");
    this.object = paramObject;
  }

  public void decRefCount()
  {
    this.refCount = (-1 + this.refCount);
  }

  public <T> T getObject(Class<T> paramClass)
  {
    return this.object;
  }

  public int getRefCount()
  {
    return this.refCount;
  }

  public void incRefCount()
  {
    this.refCount = (1 + this.refCount);
  }

  public void setObject(Object paramObject)
  {
    this.object = paramObject;
  }

  public void setRefCount(int paramInt)
  {
    this.refCount = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.RefCountedContainer
 * JD-Core Version:    0.6.2
 */