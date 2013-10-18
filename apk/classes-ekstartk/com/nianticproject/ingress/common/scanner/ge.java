package com.nianticproject.ingress.common.scanner;

import a.a.a.a.b.bi;
import a.a.a.a.b.bl;
import com.google.a.c.jc;
import java.util.SortedSet;

public final class ge
  implements gb
{
  private final bi<SortedSet<String>> a = new bl((byte)0);

  public final void a(ga paramga)
  {
    long l = paramga.k();
    SortedSet localSortedSet = (SortedSet)this.a.e(l);
    if (localSortedSet != null)
    {
      localSortedSet.remove(paramga.d());
      if (localSortedSet.size() == 0)
        this.a.a(l);
    }
  }

  public final void b(ga paramga)
  {
    long l = paramga.k();
    Object localObject = (SortedSet)this.a.e(l);
    if (localObject == null)
    {
      localObject = jc.d();
      this.a.a(l, localObject);
    }
    ((SortedSet)localObject).add(paramga.d());
    paramga.a(this);
  }

  public final boolean c(ga paramga)
  {
    long l = paramga.k();
    SortedSet localSortedSet = (SortedSet)this.a.e(l);
    return (localSortedSet != null) && (localSortedSet.size() > 0) && (((String)localSortedSet.first()).equals(paramga.d()));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ge
 * JD-Core Version:    0.6.2
 */