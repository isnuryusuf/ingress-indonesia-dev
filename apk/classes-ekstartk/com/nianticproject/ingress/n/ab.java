package com.nianticproject.ingress.n;

import android.os.Handler;
import android.os.Looper;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.p;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.shared.PregameStatus;
import java.util.Set;

public class ab
{
  private static final aa a = new aa(ab.class);
  private ae b;
  private String c;
  private PregameStatus d;
  private p e;
  private final Set<ad> f = jc.a();
  private final Handler g = new Handler(Looper.getMainLooper());

  public final ae a()
  {
    return this.b;
  }

  public final void a(p paramp)
  {
    this.e = paramp;
  }

  public final void a(ad paramad)
  {
    ec.a("addOnStateChangedListener");
    this.f.add(paramad);
  }

  public final void a(ae paramae)
  {
    this.b = paramae;
    this.g.post(new ac(this, paramae));
  }

  public final void a(PregameStatus paramPregameStatus)
  {
    this.d = paramPregameStatus;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final String b()
  {
    return this.c;
  }

  public final void b(ad paramad)
  {
    ec.a("removeOnStateChangedListener");
    this.f.remove(paramad);
  }

  public final PregameStatus c()
  {
    return this.d;
  }

  public final p d()
  {
    p localp = this.e;
    this.e = null;
    return localp;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.ab
 * JD-Core Version:    0.6.2
 */