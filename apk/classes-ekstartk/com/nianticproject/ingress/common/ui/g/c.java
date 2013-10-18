package com.nianticproject.ingress.common.ui.g;

import com.google.a.a.an;
import com.google.a.a.bl;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.al;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.w;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public class c
{
  private static final aa a = new aa(c.class);
  private final l b;
  private final String c;
  private final g d;
  private final Map<String, q> e = hc.c();
  private final al f = new al();
  private int g;
  private boolean h;
  private int i;
  private f j;
  private boolean k;
  private final com.nianticproject.ingress.common.x.g<RpcResult<Map<String, n>, w>> l = new d(this, "PagedLinkabilityReceiver");

  public c(l paraml, String paramString, g paramg)
  {
    boolean bool2;
    boolean bool3;
    if (paraml != null)
    {
      bool2 = bool1;
      an.a(bool2);
      if (bl.a(paramString))
        break label99;
      bool3 = bool1;
      label63: an.a(bool3);
      if (paramg == null)
        break label105;
    }
    while (true)
    {
      an.a(bool1);
      this.b = paraml;
      this.c = paramString;
      this.d = paramg;
      return;
      bool2 = false;
      break;
      label99: bool3 = false;
      break label63;
      label105: bool1 = false;
    }
  }

  private void d()
  {
    if (this.k);
    Collection localCollection;
    do
    {
      return;
      localCollection = this.d.a();
    }
    while ((localCollection == null) || (localCollection.isEmpty()));
    this.i += localCollection.size();
    this.e.clear();
    Iterator localIterator = localCollection.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      this.e.put(localq.h().getGuid(), localq);
    }
    this.g = 0;
    this.b.a(this.c, this.e.keySet(), this.l);
  }

  public final void a()
  {
    if (!this.h);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "query already in-progress");
      this.h = true;
      this.i = 0;
      this.f.a();
      d();
      return;
    }
  }

  public final void a(f paramf)
  {
    this.j = paramf;
  }

  public final void b()
  {
    this.k = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.c
 * JD-Core Version:    0.6.2
 */