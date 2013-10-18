package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.gameentity.components.DisplayName;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.f;

public abstract class fg extends q
  implements ej
{
  protected final eo e;
  protected f f;
  protected Color g;
  protected Color h;
  private final Matrix4 i = new Matrix4();
  private final fi j = new fi(this, (byte)0);
  private final Array<com.nianticproject.ingress.common.ui.hud.b> k = new Array(false, 0);
  private String l;
  private String m;
  private fj n;
  private float o = 6.0F;
  private float p = 1.0F;
  private boolean q;
  private fh r = fh.a;
  private float s = 0.0F;
  private boolean t = true;

  protected fg(eo parameo)
  {
    this.e = ((eo)an.a(parameo));
  }

  protected final void a(fj paramfj)
  {
    if (this.n != an.a(paramfj))
    {
      if (this.n != null)
        super.c(this.n);
      this.n = paramfj;
      super.b(this.n);
    }
  }

  public final void a(com.nianticproject.ingress.common.ui.hud.b paramb)
  {
    if (this.k.size == 0)
      b(this.j);
    this.k.add(paramb);
  }

  public void a(f paramf)
  {
    this.f = ((f)an.a(paramf));
    o();
  }

  public final void a(boolean paramBoolean)
  {
    if (this.q != paramBoolean)
    {
      this.q = paramBoolean;
      if (paramBoolean)
        c(this.n);
    }
    else
    {
      return;
    }
    b(this.n);
  }

  public final boolean a()
  {
    return true;
  }

  public boolean a(float paramFloat)
  {
    if (this.n != null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Drawable is unset");
      if (this.t)
      {
        super.a(b(this.i));
        this.t = false;
      }
      super.a(paramFloat);
      if ((this.r == fh.a) && (this.s < 0.5F))
        this.s = (paramFloat + this.s);
      if (this.r == fh.b)
      {
        if (this.s < 0.0F)
          break;
        this.s -= paramFloat;
      }
      return true;
    }
    return super.a();
  }

  protected Matrix4 b(Matrix4 paramMatrix4)
  {
    return this.e.a(paramMatrix4).scl(this.o * this.p);
  }

  public final Vector2 b()
  {
    return this.e.b();
  }

  protected final void b(float paramFloat)
  {
    this.p = paramFloat;
    this.t = true;
  }

  public final u c()
  {
    return this.e.c();
  }

  public final f e()
  {
    return this.f;
  }

  public final com.nianticproject.ingress.common.j.ai f()
  {
    return this.n.d;
  }

  public final Color g()
  {
    return this.g;
  }

  public final String h()
  {
    return this.l;
  }

  public void i()
  {
    this.r = fh.b;
  }

  protected abstract String j();

  public void l()
  {
    this.r = fh.a;
  }

  protected final float m()
  {
    if (this.s <= 0.0F)
      return 0.0F;
    if (this.s >= 0.5F)
      return 1.0F;
    return this.s / 0.5F;
  }

  protected Color n()
  {
    return ea.c(com.nianticproject.ingress.gameentity.components.b.a(this.f));
  }

  protected void o()
  {
    com.nianticproject.ingress.shared.ai localai = com.nianticproject.ingress.gameentity.components.b.a(this.f);
    this.g = n();
    this.h = ea.d(com.nianticproject.ingress.gameentity.components.b.a(this.f));
    DisplayName localDisplayName = (DisplayName)this.f.getComponent(DisplayName.class);
    String str1;
    Object[] arrayOfObject;
    if (localDisplayName != null)
    {
      str1 = localDisplayName.getDisplayName();
      this.m = str1;
      if (localai == com.nianticproject.ingress.shared.ai.c)
        break label132;
      arrayOfObject = new Object[2];
      arrayOfObject[0] = localai.a();
      arrayOfObject[1] = this.m;
    }
    label132: for (String str2 = String.format("%s %s", arrayOfObject); ; str2 = this.m)
    {
      this.l = str2;
      if (this.f.getComponent(LocationE6.class) == null)
        i();
      return;
      str1 = j();
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fg
 * JD-Core Version:    0.6.2
 */