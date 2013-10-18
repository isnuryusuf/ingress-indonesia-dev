package com.nianticproject.ingress.common.inventory;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.inventory.ui.am;
import com.nianticproject.ingress.common.inventory.ui.ao;
import com.nianticproject.ingress.common.inventory.ui.ap;
import com.nianticproject.ingress.common.inventory.ui.aq;
import com.nianticproject.ingress.common.inventory.ui.ax;
import com.nianticproject.ingress.common.inventory.ui.az;
import com.nianticproject.ingress.common.inventory.ui.b;
import com.nianticproject.ingress.common.inventory.ui.ba;
import com.nianticproject.ingress.common.inventory.ui.bc;
import com.nianticproject.ingress.common.inventory.ui.be;
import com.nianticproject.ingress.common.inventory.ui.j;
import com.nianticproject.ingress.common.inventory.ui.n;
import com.nianticproject.ingress.common.inventory.ui.o;
import com.nianticproject.ingress.common.inventory.ui.p;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.w.z;
import com.nianticproject.ingress.shared.af;
import java.util.Collections;
import java.util.List;

public final class e extends com.nianticproject.ingress.common.ui.a
{
  private final ao a;
  private final com.nianticproject.ingress.common.j.f b = ao.c();
  private final com.nianticproject.ingress.gameentity.f c;
  private final q d;
  private final k e;
  private final g f;
  private d g;
  private final Matrix4 h = new Matrix4();
  private boolean i;

  public e(com.nianticproject.ingress.gameentity.f paramf, k paramk, com.nianticproject.ingress.common.j.av paramav, g paramg)
  {
    super("ItemDetailsActivity");
    this.c = ((com.nianticproject.ingress.gameentity.f)com.google.a.a.an.a(paramf));
    this.e = ((k)com.google.a.a.an.a(paramk));
    this.d = ((q)q.a(Collections.singleton(paramf)).get(0));
    this.f = ((g)com.google.a.a.an.a(paramg));
    this.a = new ao();
    paramg.a(this.a);
    ad localad = K();
    af localaf = this.d.a();
    Object localObject;
    if (localaf == null)
    {
      localObject = new j(new n(this.c, this.e), this.f);
      localad.a(new am((com.nianticproject.ingress.common.inventory.ui.an)localObject));
      if (com.nianticproject.ingress.common.inventory.ui.a.b(paramf) == null)
        break label499;
    }
    label499: for (boolean bool = true; ; bool = false)
    {
      this.i = bool;
      return;
      switch (f.a[localaf.ordinal()])
      {
      default:
        localObject = new j(new n(this.c, this.e), this.f);
        break;
      case 1:
      case 2:
        localObject = new b(new ba(this.c, this.e), this.f);
        break;
      case 3:
        localObject = new o(new p(this.c, this.e), this.f);
        break;
      case 4:
        localObject = new ap(new aq(this.c, this.e), this.f);
        break;
      case 5:
        localObject = new bc(new be(this.c, this.e), this.f);
        this.g = paramav.a(com.nianticproject.ingress.gameentity.components.f.a(this.c, null), 256);
        break;
      case 6:
        localObject = new j(new com.nianticproject.ingress.common.inventory.ui.av(this.c, this.e), this.f);
        break;
      case 7:
        localObject = new ax(new az(this.c, this.e), this.f);
        break;
      case 8:
        localObject = new com.nianticproject.ingress.common.inventory.ui.e(new com.nianticproject.ingress.common.inventory.ui.g(this.c, this.e), this.f);
        break;
      }
    }
  }

  public final void a()
  {
    Gdx.gl.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
  }

  public final void a(float paramFloat)
  {
    this.a.a(paramFloat);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    super.a(paramInt1, paramInt2);
    this.b.a(paramInt1, paramInt2);
  }

  public final void a(Skin paramSkin)
  {
    this.a.a(this.d, this.g);
  }

  protected final String d()
  {
    return "ItemDetails";
  }

  public final void g()
  {
    this.h.set(z.a).scale(0.7F, 0.7F, 0.7F);
    if (this.i)
      this.h.translate(0.0F, 0.2F, 0.0F);
    this.a.a(this.h, this.b, null);
  }

  public final void p_()
  {
    super.p_();
    if (this.g != null)
      this.g.d();
    this.f.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.e
 * JD-Core Version:    0.6.2
 */