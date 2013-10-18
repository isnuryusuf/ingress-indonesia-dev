package com.google.a.c;

import java.io.Serializable;

final class av
  implements Serializable
{
  private int a;

  av(int paramInt)
  {
    this.a = paramInt;
  }

  public final int a()
  {
    return this.a;
  }

  public final int a(int paramInt)
  {
    int i = this.a;
    this.a = (i + paramInt);
    return i;
  }

  public final int b(int paramInt)
  {
    int i = paramInt + this.a;
    this.a = i;
    return i;
  }

  public final void b()
  {
    this.a = 0;
  }

  public final int c(int paramInt)
  {
    int i = this.a;
    this.a = paramInt;
    return i;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof av)) && (((av)paramObject).a == this.a);
  }

  public final int hashCode()
  {
    return this.a;
  }

  public final String toString()
  {
    return Integer.toString(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.av
 * JD-Core Version:    0.6.2
 */