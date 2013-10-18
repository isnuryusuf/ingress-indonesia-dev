package com.google.c.a.a.b;

final class d
{
  private int a;
  private Object b;

  d(int paramInt, Object paramObject)
  {
    this.a = paramInt;
    this.b = paramObject;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    d locald;
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof d)))
        return false;
      locald = (d)paramObject;
    }
    while ((this.a == locald.a) && ((this.b == locald.b) || ((this.b != null) && (this.b.equals(locald.b)))));
    return false;
  }

  public final int hashCode()
  {
    return this.a;
  }

  public final String toString()
  {
    return "TypeInfo{type=" + this.a + ", data=" + this.b + "}";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.b.d
 * JD-Core Version:    0.6.2
 */