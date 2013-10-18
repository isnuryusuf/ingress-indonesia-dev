package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;
import com.nianticproject.ingress.common.j.ac;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.ui.widget.ak;

final class q extends ak
{
  private final ai b;
  private final Texture c;
  private final Texture d;
  private final ac e;
  private final Matrix4 f;
  private final Matrix4 g = new Matrix4();

  public q(Compass paramCompass, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, ActorGestureListener paramActorGestureListener)
  {
    super(paramFloat3, paramFloat4, paramActorGestureListener);
    setX(paramFloat1);
    setY(paramFloat2);
    setWidth(paramFloat3);
    setHeight(paramFloat4);
    setColor(Color.WHITE);
    this.b = ag.ae;
    this.c = ag.af;
    this.d = ag.ag;
    this.e = new ac(Compass.e(), Compass.f(), Compass.g());
    this.e.a(45.0F);
    this.f = new Matrix4();
  }

  public static void b()
  {
  }

  public static void c()
  {
  }

  protected final void a()
  {
    ShaderProgram localShaderProgram = ag.aC;
    if (this.a.c());
    for (Texture localTexture = this.c; ; localTexture = this.d)
    {
      GL20 localGL20 = Gdx.gl20;
      localGL20.glDisable(2884);
      localGL20.glEnable(3042);
      localTexture.bind();
      localShaderProgram.begin();
      this.g.set(this.e.e()).mul(this.f);
      localShaderProgram.setUniformMatrix("u_modelViewProject", this.g);
      localShaderProgram.setUniformf("u_color", getColor());
      this.b.a(localShaderProgram);
      this.b.h();
      this.b.c(localShaderProgram);
      return;
    }
  }

  protected final void a(Rectangle paramRectangle)
  {
    this.e.a((int)paramRectangle.width, (int)paramRectangle.height);
  }

  public final void d()
  {
    if (Compass.a(this.a))
    {
      this.f.setToRotation(Compass.i(), Compass.c(this.a)).rotate(Compass.h(), Compass.b(this.a));
      Compass.d(this.a);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.q
 * JD-Core Version:    0.6.2
 */