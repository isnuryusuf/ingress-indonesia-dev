package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ai;
import com.nianticproject.ingress.common.aj;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.bp;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.ui.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.g;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.knobs.InventoryKnobs;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.ArrayList;
import java.util.Iterator;

public class HackController
  implements com.nianticproject.ingress.common.j.o
{
  private static final aa a = new aa(HackController.class);
  private static final Color b = new Color(1.0F, 0.7F, 0.1F, 0.8F);
  private static boolean c = false;
  private static int d = 2;
  private static int e = 9;
  private ej f;
  private bt g;
  private com.nianticproject.ingress.common.model.k h;
  private com.nianticproject.ingress.common.scanner.k i;
  private l j;
  private com.nianticproject.ingress.common.g.e k;
  private au l;
  private Skin m;
  private Label.LabelStyle n;
  private Label.LabelStyle o;
  private boolean p = true;
  private ae q = null;
  private ArrayList<as> r = new ArrayList();
  private Iterator<as> s = null;
  private float t = 0.0F;
  private float u = 0.0F;
  private final eo v;
  private final eo w;
  private a x = new a(ag.L, b);
  private float y = 0.0F;
  private boolean z = true;

  public HackController(ej paramej, bt parambt, com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, l paraml, com.nianticproject.ingress.common.g.e parame, au paramau, Skin paramSkin)
  {
    this.f = paramej;
    this.g = parambt;
    this.h = paramk;
    this.i = paramk1;
    this.j = paraml;
    this.k = parame;
    this.l = paramau;
    this.m = paramSkin;
    this.n = new Label.LabelStyle(paramSkin.getFont("small-font"), Color.WHITE);
    this.o = new Label.LabelStyle(this.n.font, Color.WHITE);
    this.v = parambt.a(paramej.c());
    this.w = parambt.d();
    this.x = new a(ag.L, ea.a(paramk.h()));
    this.i.q();
    aq localaq = new aq(this, "HackController.getItems");
    if (com.nianticproject.ingress.common.gameentity.a.a(this.h))
    {
      localaq.a(RpcResult.a(ae.x));
      return;
    }
    Portal localPortal = (Portal)this.f.e().getComponent(Portal.class);
    this.j.a(localPortal, localaq);
  }

  private void a(as paramas, boolean paramBoolean)
  {
    if (!a.w())
      return;
    this.u = al.c();
    this.g.b(new al(this.i, paramas.a, this.v, this.w));
    bo localbo = new bo();
    if (paramBoolean)
    {
      ba[] arrayOfba2 = new ba[1];
      arrayOfba2[0] = ba.aN;
      localbo.a(arrayOfba2);
    }
    ba[] arrayOfba1 = new ba[1];
    arrayOfba1[0] = paramas.b;
    localbo.a(arrayOfba1).a(true).a(bp.a);
    com.nianticproject.ingress.common.c.o.a().a(localbo.f());
    StringBuilder localStringBuilder = new StringBuilder();
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = paramas.c;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = paramas.e;
    arrayOfObject2[1] = paramas.a();
    arrayOfObject1[1] = String.format("%s %s", arrayOfObject2);
    String str = String.format("%s %s", arrayOfObject1) + " acquired";
    if (c)
      p.a().l().a(str);
  }

  private String e()
  {
    if (this.q == null)
    {
      if (this.r.isEmpty())
        return "Hack acquired no items.";
      return "Acquired items:";
    }
    if (ae.i.equals(this.q))
      return null;
    ae localae = this.q;
    boolean bool;
    if (ae.x == localae)
      bool = true;
    while (bool)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(q.d().a());
      return String.format("Too many items in Inventory. Your Inventory can have no more than %d items.", arrayOfObject);
      if (ae.c != localae)
        bool = false;
      else
        bool = com.nianticproject.ingress.common.gameentity.a.a(this.h);
    }
    return c.a().a(this.q);
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    if (this.y > 0.0F)
      this.x.a(paramMatrix4, paramf, paramn);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    if (this.p);
    for (this.y = Math.min(1.0F, this.y + 2.0F * paramFloat); ; this.y = Math.max(0.0F, this.y - 1.0F * paramFloat))
    {
      this.x.b(this.y);
      this.x.a(paramFloat);
      if ((!this.p) && (!al.e))
        break;
      return true;
    }
    if ((this.s != null) && (this.s.hasNext()))
    {
      this.t -= paramFloat;
      if (this.t < 0.0F)
      {
        this.t += 0.8F * al.c();
        a((as)this.s.next(), false);
      }
      return true;
    }
    this.u -= paramFloat;
    if (this.u > 0.0F)
      return true;
    if ((this.z) && (this.i.v()))
    {
      this.z = false;
      if (e() != null)
        this.i.a(new ao(this));
      while (true)
      {
        return false;
        ai.a().b();
      }
    }
    return this.z;
  }

  public void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.HackController
 * JD-Core Version:    0.6.2
 */