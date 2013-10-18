package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.w.ao;
import com.nianticproject.ingress.common.w.l;

public final class s extends d
{
  private final Vector3 d = new Vector3();
  private final Vector2 e = new Vector2();
  private final Vector2 f = new Vector2();
  private final g g = new g(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  private f h;
  private ej i;
  private Actor j;
  private float k;
  private float l;
  private Color m;
  private float n;

  public s(h paramh)
  {
    super(paramh);
  }

  public final void a(Actor paramActor, float paramFloat1, float paramFloat2)
  {
    this.j = paramActor;
    this.k = paramFloat1;
    this.l = paramFloat2;
  }

  public final void a(f paramf)
  {
    this.h = paramf;
  }

  public final void a(ej paramej)
  {
    this.i = paramej;
  }

  public final boolean a(float paramFloat)
  {
    if ((this.j != null) && (this.i != null) && (this.h != null))
    {
      if (this.b == null)
      {
        this.b = new Vector2();
        this.c = new Vector2();
      }
      this.e.set(this.k * this.j.getWidth(), this.l * this.j.getHeight());
      this.j.localToStageCoordinates(this.e);
      this.c.set(this.e.x / Gdx.graphics.getWidth(), this.e.y / Gdx.graphics.getHeight());
      Vector2 localVector2 = this.i.b();
      this.d.set(localVector2.x, 1.0F, localVector2.y);
      Vector3 localVector3 = ao.a(this.h, this.d);
      this.f.set(localVector3.x, localVector3.y);
      Gdx.graphics.getWidth();
      Gdx.graphics.getHeight();
      this.b.set(this.f.x, this.f.y + this.n);
      this.g.a(this.a, this.f, this.m, this.n, l.a(3.0F));
    }
    while (true)
    {
      return super.a(paramFloat);
      if (this.b != null)
      {
        this.b = null;
        this.c = null;
      }
    }
  }

  public final void b(float paramFloat)
  {
    this.n = paramFloat;
  }

  public final void b(Color paramColor)
  {
    this.m = paramColor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.s
 * JD-Core Version:    0.6.2
 */