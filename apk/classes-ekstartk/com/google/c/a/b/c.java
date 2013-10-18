package com.google.c.a.b;

import java.util.Enumeration;
import java.util.Hashtable;

public final class c
{
  private Object[] a = new Object[Math.min(16, 128)];
  private Hashtable b;
  private int c = -2147483648;
  private int d = -2147483648;
  private int e = 0;

  public c()
  {
    this((byte)0);
  }

  private c(byte paramByte)
  {
  }

  public final int a()
  {
    if (this.b == null)
      return this.e;
    return this.e + this.b.size();
  }

  public final Object a(int paramInt)
  {
    Object localObject;
    if ((paramInt <= this.c) && (paramInt >= 0))
      localObject = this.a[paramInt];
    Hashtable localHashtable;
    do
    {
      int i;
      do
      {
        return localObject;
        i = this.d;
        localObject = null;
      }
      while (paramInt > i);
      localHashtable = this.b;
      localObject = null;
    }
    while (localHashtable == null);
    return this.b.get(e.a(paramInt));
  }

  public final void a(int paramInt, Object paramObject)
  {
    if (paramObject == null)
    {
      if ((paramInt >= 0) && (paramInt < this.a.length))
      {
        if (this.a[paramInt] != null)
          this.e = (-1 + this.e);
        this.a[paramInt] = null;
      }
      while (this.b == null)
        return;
      this.b.remove(e.a(paramInt));
      return;
    }
    if (paramInt > this.d)
      this.d = paramInt;
    if ((paramInt < 0) || (paramInt >= this.a.length))
    {
      int i = 0;
      if (paramInt < 128)
      {
        int j = this.a.length;
        i = 0;
        if (paramInt >= j)
        {
          i = 0;
          if (paramInt > 0)
          {
            int k = this.a.length;
            do
              k <<= 1;
            while (k <= paramInt);
            Object[] arrayOfObject = new Object[Math.min(k, 128)];
            System.arraycopy(this.a, 0, arrayOfObject, 0, this.a.length);
            this.a = arrayOfObject;
            i = 1;
          }
        }
      }
      if (i == 0);
    }
    else
    {
      if (paramInt > this.c)
      {
        this.c = paramInt;
        this.e = (1 + this.e);
      }
      while (true)
      {
        this.a[paramInt] = paramObject;
        return;
        if (this.a[paramInt] == null)
          this.e = (1 + this.e);
      }
    }
    if (this.b == null)
      this.b = new Hashtable();
    this.b.put(e.a(paramInt), paramObject);
  }

  public final void b()
  {
    for (int i = 0; i < this.a.length; i++)
      this.a[i] = null;
    if (this.b != null)
      this.b.clear();
    this.d = -2147483648;
    this.c = -2147483648;
    this.e = 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if ((paramObject == null) || (!(paramObject instanceof c)))
      return false;
    c localc = (c)paramObject;
    if (a() != localc.a())
      return false;
    Object[] arrayOfObject1 = this.a;
    Object[] arrayOfObject2 = localc.a;
    int i = Math.min(arrayOfObject1.length, arrayOfObject2.length);
    int j = 0;
    int k;
    label109: Hashtable localHashtable1;
    Hashtable localHashtable2;
    int m;
    if (j < i)
      if (((arrayOfObject1[j] == null) && (arrayOfObject2[j] != null)) || ((arrayOfObject1[j] != null) && (!arrayOfObject1[j].equals(arrayOfObject2[j]))))
      {
        k = 0;
        if (k == 0)
          break label312;
        localHashtable1 = this.b;
        localHashtable2 = localc.b;
        if (localHashtable1 == localHashtable2)
          break label306;
        if ((localHashtable1 != null) && (localHashtable2 != null))
          break label235;
        m = 0;
      }
    label306: 
    while (true)
    {
      if (m == 0)
        break label312;
      return true;
      j++;
      break;
      if (arrayOfObject1.length > arrayOfObject2.length)
        while (true)
        {
          if (i >= arrayOfObject1.length)
            break label229;
          if (arrayOfObject1[i] != null)
          {
            k = 0;
            break;
          }
          i++;
        }
      if (arrayOfObject1.length < arrayOfObject2.length)
        while (true)
        {
          if (i >= arrayOfObject2.length)
            break label229;
          if (arrayOfObject2[i] != null)
          {
            k = 0;
            break;
          }
          i++;
        }
      label229: k = 1;
      break label109;
      label235: if (localHashtable1.size() != localHashtable2.size())
      {
        m = 0;
      }
      else
      {
        Enumeration localEnumeration = localHashtable1.keys();
        while (true)
          if (localEnumeration.hasMoreElements())
          {
            Object localObject = localEnumeration.nextElement();
            if (!localHashtable1.get(localObject).equals(localHashtable2.get(localObject)))
            {
              m = 0;
              break;
            }
          }
        m = 1;
      }
    }
    label312: return false;
  }

  public final int hashCode()
  {
    int i = 1;
    for (int j = 0; j < this.a.length; j++)
    {
      Object localObject = this.a[j];
      if (localObject != null)
        i = j + (i * 31 + localObject.hashCode());
    }
    if (this.b == null)
      return i;
    return i + this.b.size();
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("IntMap{lower:");
    for (int i = 0; i < this.a.length; i++)
      if (this.a[i] != null)
      {
        localStringBuffer.append(i);
        localStringBuffer.append("=>");
        localStringBuffer.append(this.a[i]);
        localStringBuffer.append(", ");
      }
    localStringBuffer.append(", higher:" + this.b + "}");
    return localStringBuffer.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.b.c
 * JD-Core Version:    0.6.2
 */