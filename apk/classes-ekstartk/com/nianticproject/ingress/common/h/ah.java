package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.aq;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.ui.c;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ad;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class ah extends j<Void, ad>
{
  private final a a;
  private final String b;
  private final Set<r> c;
  private final e d;

  public ah(q paramq, a parama, String paramString, Set<r> paramSet)
  {
    super(paramq);
    this.a = ((a)an.a(parama));
    this.b = ((String)an.a(paramString));
    this.c = ((Set)an.a(paramSet));
    this.d = o.a();
  }

  protected final f a(RpcResult<Void, ad> paramRpcResult)
  {
    if (paramRpcResult.e())
    {
      a locala2 = this.a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.c.size());
      locala2.a(String.format("Recharged %d resonator(s)", arrayOfObject));
      this.d.a(bs.aE);
    }
    while (true)
    {
      return null;
      a locala1 = this.a;
      ad localad = (ad)paramRpcResult.b();
      locala1.a("Recharge failed (" + c.a().a(localad) + ")");
      this.d.a(bs.E);
    }
  }

  protected final Result<t<Void, ad>, ad> c()
  {
    this.d.a(bs.aD);
    HashSet localHashSet = jc.a(8);
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      localHashSet.add(Integer.valueOf(((r)localIterator.next()).ordinal()));
    return Result.a(aq.b(this.b, localHashSet));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.ah
 * JD-Core Version:    0.6.2
 */