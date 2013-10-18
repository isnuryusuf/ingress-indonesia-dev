package com.nianticproject.ingress.common.j;

final class aw
{
  private final String a;
  private final ax b;

  private aw(String paramString, int paramInt)
  {
    this.a = paramString;
    this.b = ax.a(paramInt);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    aw localaw;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localaw = (aw)paramObject;
      if (this.b != localaw.b)
        return false;
      if (this.a != null)
        break;
    }
    while (this.a == localaw.a);
    return false;
    return this.a.equals(localaw.a);
  }

  public final int hashCode()
  {
    int i;
    int j;
    int k;
    if (this.b == null)
    {
      i = 0;
      j = 31 * (i + 31);
      String str = this.a;
      k = 0;
      if (str != null)
        break label45;
    }
    while (true)
    {
      return j + k;
      i = this.b.hashCode();
      break;
      label45: k = this.a.hashCode();
    }
  }

  public final String toString()
  {
    return "size=" + this.b + ", url=" + this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.aw
 * JD-Core Version:    0.6.2
 */