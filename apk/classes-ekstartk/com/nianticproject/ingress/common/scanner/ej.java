package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.aj;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.ui.hud.b;
import com.nianticproject.ingress.gameentity.f;

public abstract interface ej extends Disposable, aj
{
  public abstract void a(b paramb);

  public abstract void a(f paramf);

  public abstract void a(boolean paramBoolean);

  public abstract Vector2 b();

  public abstract void b(o paramo);

  public abstract u c();

  public abstract String d();

  public abstract f e();

  public abstract ai f();

  public abstract Color g();

  public abstract String h();

  public abstract void i();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ej
 * JD-Core Version:    0.6.2
 */