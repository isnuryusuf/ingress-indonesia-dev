package a.a.a.a.b;

import a.a.a.a.a.a;
import a.a.a.a.c;
import a.a.a.a.e;
import java.io.Serializable;

public final class cj extends aa
  implements c, Serializable, Cloneable
{
  protected transient long[] b = new long[this.e];
  protected transient boolean[] c = new boolean[this.e];
  protected final float d = 0.75F;
  protected transient int e = e.b(16, 0.75F);
  protected transient int f = e.a(this.e, 0.75F);
  protected transient int g = -1 + this.e;
  protected int h;

  private cj()
  {
  }

  public cj(byte paramByte)
  {
    this();
  }

  private cj b()
  {
    try
    {
      cj localcj = (cj)super.clone();
      localcj.b = ((long[])this.b.clone());
      localcj.c = ((boolean[])this.c.clone());
      return localcj;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new InternalError();
  }

  protected final int a(int paramInt)
  {
    for (int i = paramInt + 1 & this.g; ; i = i + 1 & this.g)
    {
      int j;
      if (this.c[i] != 0)
      {
        j = (int)e.a(this.b[i]) & this.g;
        if (paramInt > i)
          break label75;
        if ((paramInt < j) && (j <= i))
          continue;
      }
      label75: 
      while ((paramInt >= j) && (j > i))
      {
        if (this.c[i] == 0)
          break label97;
        this.b[paramInt] = this.b[i];
        paramInt = i;
        break;
      }
    }
    label97: this.c[paramInt] = false;
    return paramInt;
  }

  public final ce a()
  {
    return new ck(this, (byte)0);
  }

  public final boolean a(long paramLong)
  {
    for (int i = (int)e.a(paramLong) & this.g; this.c[i] != 0; i = i + 1 & this.g)
      if (this.b[i] == paramLong)
        return true;
    return false;
  }

  public final void clear()
  {
    if (this.h == 0)
      return;
    this.h = 0;
    a.a(this.c);
  }

  public final boolean d(long paramLong)
  {
    for (int i = (int)e.a(paramLong) & this.g; this.c[i] != 0; i = i + 1 & this.g)
      if (this.b[i] == paramLong)
        return false;
    this.c[i] = true;
    this.b[i] = paramLong;
    int j = 1 + this.h;
    this.h = j;
    if (j >= this.f)
    {
      int k = e.b(1 + this.h, this.d);
      boolean[] arrayOfBoolean1 = this.c;
      long[] arrayOfLong1 = this.b;
      int m = k - 1;
      long[] arrayOfLong2 = new long[k];
      boolean[] arrayOfBoolean2 = new boolean[k];
      int n = this.h;
      int i1 = 0;
      int i3;
      for (int i2 = n; ; i2 = i3)
      {
        i3 = i2 - 1;
        if (i2 == 0)
          break;
        while (arrayOfBoolean1[i1] == 0)
          i1++;
        long l = arrayOfLong1[i1];
        for (int i4 = m & (int)e.a(l); arrayOfBoolean2[i4] != 0; i4 = m & i4 + 1);
        arrayOfBoolean2[i4] = true;
        arrayOfLong2[i4] = l;
        i1++;
      }
      this.e = k;
      this.g = m;
      this.f = e.a(this.e, this.d);
      this.b = arrayOfLong2;
      this.c = arrayOfBoolean2;
    }
    return true;
  }

  public final boolean f(long paramLong)
  {
    for (int i = (int)e.a(paramLong) & this.g; this.c[i] != 0; i = i + 1 & this.g)
      if (this.b[i] == paramLong)
      {
        this.h = (-1 + this.h);
        a(i);
        return true;
      }
    return false;
  }

  public final int hashCode()
  {
    int i = this.h;
    int j = 0;
    int k = i;
    int m = 0;
    while (true)
    {
      int n = k - 1;
      if (k == 0)
        break;
      while (this.c[m] == 0)
        m++;
      int i1 = j + e.b(this.b[m]);
      m++;
      j = i1;
      k = n;
    }
    return j;
  }

  public final boolean isEmpty()
  {
    return this.h == 0;
  }

  public final int size()
  {
    return this.h;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.cj
 * JD-Core Version:    0.6.2
 */