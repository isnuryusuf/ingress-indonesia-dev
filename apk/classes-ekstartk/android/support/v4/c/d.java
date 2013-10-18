package android.support.v4.c;

public final class d<E>
{
  private static final Object a = new Object();
  private boolean b = false;
  private int[] c;
  private Object[] d;
  private int e;

  public d()
  {
    this((byte)0);
  }

  private d(byte paramByte)
  {
    int i = f(10);
    this.c = new int[i];
    this.d = new Object[i];
    this.e = 0;
  }

  private static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + 0;
    int j = -1;
    int k = i;
    while (k - j > 1)
    {
      int m = (k + j) / 2;
      if (paramArrayOfInt[m] < paramInt2)
        j = m;
      else
        k = m;
    }
    if (k == paramInt1 + 0)
      k = 0xFFFFFFFF ^ paramInt1 + 0;
    while (paramArrayOfInt[k] == paramInt2)
      return k;
    return k ^ 0xFFFFFFFF;
  }

  private void c()
  {
    int i = this.e;
    int[] arrayOfInt = this.c;
    Object[] arrayOfObject = this.d;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      Object localObject = arrayOfObject[j];
      if (localObject != a)
      {
        if (j != k)
        {
          arrayOfInt[k] = arrayOfInt[j];
          arrayOfObject[k] = localObject;
        }
        k++;
      }
      j++;
    }
    this.b = false;
    this.e = k;
  }

  private static int f(int paramInt)
  {
    int i = paramInt * 4;
    for (int j = 4; ; j++)
      if (j < 32)
      {
        if (i <= -12 + (1 << j))
          i = -12 + (1 << j);
      }
      else
        return i / 4;
  }

  public final int a()
  {
    if (this.b)
      c();
    return this.e;
  }

  public final E a(int paramInt)
  {
    int i = a(this.c, this.e, paramInt);
    if ((i < 0) || (this.d[i] == a))
      return null;
    return this.d[i];
  }

  public final void a(int paramInt, E paramE)
  {
    int i = a(this.c, this.e, paramInt);
    if (i >= 0)
    {
      this.d[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.e) && (this.d[j] == a))
    {
      this.c[j] = paramInt;
      this.d[j] = paramE;
      return;
    }
    if ((this.b) && (this.e >= this.c.length))
    {
      c();
      j = 0xFFFFFFFF ^ a(this.c, this.e, paramInt);
    }
    if (this.e >= this.c.length)
    {
      int k = f(1 + this.e);
      int[] arrayOfInt = new int[k];
      Object[] arrayOfObject = new Object[k];
      System.arraycopy(this.c, 0, arrayOfInt, 0, this.c.length);
      System.arraycopy(this.d, 0, arrayOfObject, 0, this.d.length);
      this.c = arrayOfInt;
      this.d = arrayOfObject;
    }
    if (this.e - j != 0)
    {
      System.arraycopy(this.c, j, this.c, j + 1, this.e - j);
      System.arraycopy(this.d, j, this.d, j + 1, this.e - j);
    }
    this.c[j] = paramInt;
    this.d[j] = paramE;
    this.e = (1 + this.e);
  }

  public final void b()
  {
    int i = this.e;
    Object[] arrayOfObject = this.d;
    for (int j = 0; j < i; j++)
      arrayOfObject[j] = null;
    this.e = 0;
    this.b = false;
  }

  public final void b(int paramInt)
  {
    int i = a(this.c, this.e, paramInt);
    if ((i >= 0) && (this.d[i] != a))
    {
      this.d[i] = a;
      this.b = true;
    }
  }

  public final void c(int paramInt)
  {
    if (this.d[paramInt] != a)
    {
      this.d[paramInt] = a;
      this.b = true;
    }
  }

  public final int d(int paramInt)
  {
    if (this.b)
      c();
    return this.c[paramInt];
  }

  public final E e(int paramInt)
  {
    if (this.b)
      c();
    return this.d[paramInt];
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.c.d
 * JD-Core Version:    0.6.2
 */