package com.google.a.c;

abstract class ia<E> extends jh<hu<E>>
{
  abstract ht<E> a();

  public void clear()
  {
    a().clear();
  }

  public boolean contains(Object paramObject)
  {
    hu localhu;
    if ((paramObject instanceof hu))
    {
      localhu = (hu)paramObject;
      if (localhu.b() > 0)
        break label23;
    }
    label23: 
    while (a().a(localhu.a()) != localhu.b())
      return false;
    return true;
  }

  public boolean remove(Object paramObject)
  {
    boolean bool1 = paramObject instanceof hu;
    boolean bool2 = false;
    if (bool1)
    {
      hu localhu = (hu)paramObject;
      Object localObject = localhu.a();
      int i = localhu.b();
      bool2 = false;
      if (i != 0)
        bool2 = a().a(localObject, i, 0);
    }
    return bool2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ia
 * JD-Core Version:    0.6.2
 */