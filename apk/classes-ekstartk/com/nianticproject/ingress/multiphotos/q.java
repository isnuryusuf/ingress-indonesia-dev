package com.nianticproject.ingress.multiphotos;

import android.support.v4.app.Fragment;
import android.support.v4.app.j;
import android.support.v4.app.r;
import com.google.a.a.ak;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public final class q extends r
{
  private final ArrayList<PlayerPortalImage> a = new ArrayList();
  private final HashMap<String, ak<Boolean, Integer>> b = new HashMap();
  private final int c;

  public q(j paramj)
  {
    this(paramj, 0);
  }

  public q(j paramj, int paramInt)
  {
    super(paramj);
    this.c = paramInt;
  }

  public final Fragment a(int paramInt)
  {
    return ag.a(((PlayerPortalImage)this.a.get(paramInt)).c(), this.c);
  }

  public final void a(Collection<PlayerPortalImage> paramCollection, Map<String, ak<Boolean, Integer>> paramMap)
  {
    this.a.clear();
    this.b.clear();
    if (paramCollection != null)
      this.a.addAll(paramCollection);
    if (paramMap != null)
      this.b.putAll(paramMap);
    d();
  }

  public final com.nianticproject.ingress.shared.portal.a b(int paramInt)
  {
    return (com.nianticproject.ingress.shared.portal.a)this.a.get(paramInt);
  }

  public final int c()
  {
    return this.a.size();
  }

  public final boolean c(int paramInt)
  {
    String str = b(paramInt).c();
    return ((Boolean)((ak)this.b.get(str)).a).booleanValue();
  }

  public final int d(int paramInt)
  {
    String str = b(paramInt).c();
    return ((Integer)((ak)this.b.get(str)).b).intValue();
  }

  public final boolean e(int paramInt)
  {
    return !com.nianticproject.ingress.i.a.a(b(paramInt).b());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.q
 * JD-Core Version:    0.6.2
 */