package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.scanner.visuals.a.a;
import com.nianticproject.ingress.common.scanner.visuals.a.h;
import com.nianticproject.ingress.common.scanner.visuals.a.k;
import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.components.g;
import com.nianticproject.ingress.gameentity.components.m;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.Mod;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Map;

public final class fk extends fg
{
  private static final fo[] s = new fo[com.nianticproject.ingress.shared.ai.values().length];
  private static final fl[] t = new fl[com.nianticproject.ingress.shared.ai.values().length];
  private static final Map<com.nianticproject.ingress.shared.ai, com.nianticproject.ingress.shared.ai> w = dh.a(com.nianticproject.ingress.shared.ai.c, com.nianticproject.ingress.shared.ai.c, com.nianticproject.ingress.shared.ai.b, com.nianticproject.ingress.shared.ai.a, com.nianticproject.ingress.shared.ai.a, com.nianticproject.ingress.shared.ai.b);
  private boolean i = false;
  private final com.nianticproject.ingress.common.j.ai j;
  private final float k;
  private final float l;
  private final float m;
  private float n;
  private k o;
  private Modable p = null;
  private com.nianticproject.ingress.shared.ai q;
  private final fm r;
  private float u = 0.0F;
  private float v = 0.0F;

  static
  {
    for (com.nianticproject.ingress.shared.ai localai : com.nianticproject.ingress.shared.ai.values())
    {
      s[localai.ordinal()] = new fo(localai);
      t[localai.ordinal()] = new fl(localai, (com.nianticproject.ingress.shared.ai)w.get(localai));
    }
  }

  public fk(eo parameo)
  {
    super(parameo);
    int i1 = parameo.c().hashCode();
    this.j = ((com.nianticproject.ingress.common.j.ai)ag.au.get(Math.abs(i1) % ag.au.size()));
    this.k = this.j.e().y;
    this.l = this.j.d().y;
    this.m = (i1 / 2.147484E+09F);
    this.r = new fm(this, this.j);
    a(this.r);
  }

  public final void a(Vector2 paramVector2, float paramFloat)
  {
    this.v = 1.0F;
    if (this.o != null)
      this.o.a(paramVector2, paramFloat);
  }

  public final boolean a(float paramFloat)
  {
    this.n = (paramFloat + this.n);
    this.v -= paramFloat;
    return super.a(paramFloat);
  }

  public final void c(float paramFloat)
  {
    this.u = paramFloat;
  }

  public final String d()
  {
    return this.f.getGuid();
  }

  public final void i()
  {
    super.i();
    if (this.o != null)
      this.o.d();
  }

  protected final String j()
  {
    return "Portal";
  }

  public final fo k()
  {
    if (this.u <= 0.0F)
      return s[this.q.ordinal()];
    return t[this.q.ordinal()];
  }

  public final void l()
  {
    super.l();
    if (this.o != null)
      this.o.c();
  }

  protected final void o()
  {
    boolean bool1 = true;
    label516: label522: 
    while (true)
    {
      float f;
      boolean bool2;
      int i2;
      int i1;
      Object localObject2;
      try
      {
        aj.a("ScannerPortalEntity.processGameEntity");
        super.o();
        this.q = b.a(e());
        Portal localPortal = (Portal)e().getComponent(Portal.class);
        if (localPortal == null)
          break label499;
        f = -1 + localPortal.getLevel();
        b(1.0F + f * 0.07142858F);
        Modable localModable1 = (Modable)e().getComponent(Modable.class);
        if (this.p != null)
        {
          if (this.v <= 0.0F)
            break label505;
          bool2 = bool1;
          if (bool2)
          {
            if (this.p.maxModCount() != localModable1.maxModCount())
              break label511;
            an.a(bool1);
            i2 = 0;
            if (i2 < this.p.maxModCount())
            {
              Mod localMod2 = this.p.getLinkedMod(i2);
              if ((localMod2 == null) || (localMod2.buildModResource().getResourceType() == af.k) || (localModable1.getLinkedMod(i2) != null))
                break label516;
              b(new h(localMod2.buildModResource()));
            }
          }
        }
        this.p = localModable1;
        if ((this.i) && (this.p != null))
        {
          i1 = 0;
          if (i1 < this.p.maxModCount())
          {
            Mod localMod1 = this.p.getLinkedMod(i1);
            if ((!this.i) || (localMod1 == null) || (localMod1.buildModResource().getResourceType() == af.k))
              break label493;
            b(new h(localMod1.buildModResource()));
            this.i = false;
            break label493;
          }
        }
        Modable localModable2 = this.p;
        localObject2 = this.o;
        if (localObject2 != null)
          ((k)localObject2).a(localModable2, this.q);
        if (localModable2 == null)
          break label522;
        if (g.a(localModable2, m.b, q.j()) == 0L)
        {
          break label522;
          if (localObject2 != this.o)
          {
            if (localObject2 != null)
              break label447;
            if (!this.o.b())
              this.o.d();
            this.o = null;
          }
        }
        else
        {
          if (localObject2 != null)
            continue;
          localObject2 = new a();
          ((a)localObject2).a(localModable2, this.q);
          b((o)localObject2);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      label447: if (this.o == null)
      {
        this.o = ((k)localObject2);
        this.o.c();
      }
      else
      {
        this.o.d();
        this.o = ((k)localObject2);
        this.o.c();
        continue;
        label493: i1++;
        continue;
        label499: f = 0.0F;
        continue;
        label505: bool2 = false;
        continue;
        label511: bool1 = false;
        continue;
        i2++;
        continue;
        localObject2 = null;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fk
 * JD-Core Version:    0.6.2
 */