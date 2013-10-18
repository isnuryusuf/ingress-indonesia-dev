package com.nianticproject.ingress.common.w;

import com.google.a.a.an;
import com.google.a.c.bw;
import com.google.a.c.ec;
import com.google.a.c.jc;
import com.google.a.c.kr;
import java.util.HashSet;
import java.util.Set;

public final class c
{
  private final kr<h, d, h> a = bw.j();
  private boolean b = false;
  private h c;
  private h d = new e();

  public final c a()
  {
    this.b = true;
    return this;
  }

  public final c a(h paramh)
  {
    this.c = paramh;
    return this;
  }

  public final c a(h paramh1, d paramd, h paramh2)
  {
    if (!this.a.a(paramh1, paramd));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "transition already defined for state=%s event=%s", new Object[] { paramh1, paramd });
      this.a.a(paramh1, paramd, paramh2);
      return this;
    }
  }

  public final b b()
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (this.c != null)
    {
      bool2 = bool1;
      an.b(bool2);
      if (this.d == null)
        break label77;
      bool3 = bool1;
      label24: an.b(bool3);
      if (this.a.l() <= 0)
        break label82;
    }
    while (true)
    {
      an.b(bool1);
      return new b(this.b, this.c, this.d, ec.a(this.a), (byte)0);
      bool2 = false;
      break;
      label77: bool3 = false;
      break label24;
      label82: bool1 = false;
    }
  }

  public final Set<h> c()
  {
    HashSet localHashSet = jc.a(this.a.a());
    localHashSet.addAll(this.a.g());
    if (this.c != null)
      localHashSet.add(this.c);
    if (this.d != null)
      localHashSet.add(this.d);
    return localHashSet;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.c
 * JD-Core Version:    0.6.2
 */