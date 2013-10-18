package com.google.a.d;

public final class a
{
  private int a = 0;
  private Integer b = null;

  public final int a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.a = paramInt;
    this.b = null;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof a)) && (((a)paramObject).a == this.a);
  }

  public final int hashCode()
  {
    if (this.b == null)
      this.b = Integer.valueOf(this.a);
    return this.b.hashCode();
  }

  public final String toString()
  {
    return String.valueOf(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.a
 * JD-Core Version:    0.6.2
 */