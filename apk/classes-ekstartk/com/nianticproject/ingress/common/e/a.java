package com.nianticproject.ingress.common.e;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.GL20;
import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.dv;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.widget.w;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.t;
import java.util.HashMap;
import java.util.Map;

public abstract class a extends com.nianticproject.ingress.common.ui.a
{
  protected final k a;
  private final du<af> b = new dv().c(af.g).c(af.i).c(af.n).a();
  private final Map<af, Integer> c = new HashMap();
  private int d = 1;
  private int e;
  private final Map<af, w> f = new HashMap();
  private w g;
  private w h;

  public a(k paramk)
  {
    super("CheatsActivity");
    this.a = ((k)an.a(paramk));
    this.e = t.b(paramk.e());
    K().a(new b(this, (byte)0));
  }

  private int a(af paramaf)
  {
    Integer localInteger = (Integer)this.c.get(paramaf);
    if (localInteger != null)
      return localInteger.intValue();
    return 0;
  }

  private void a(af paramaf, int paramInt)
  {
    this.c.put(paramaf, Integer.valueOf(paramInt));
    ((w)this.f.get(paramaf)).a(Integer.toString(paramInt));
  }

  public final void a()
  {
    Gdx.graphics.getGL20().glClearColor(0.1F, 0.1F, 0.1F, 1.0F);
  }

  protected abstract void a(int paramInt);

  protected abstract void a(Map<af, Integer> paramMap, int paramInt);

  protected abstract void b();

  protected abstract void c();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.a
 * JD-Core Version:    0.6.2
 */