package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.ui.WidgetGroup;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.nianticproject.ingress.common.ui.b;

public abstract class ak extends WidgetGroup
{
  private final float a;
  private final float b;
  private final Rectangle c = new Rectangle();
  private boolean d;

  public ak(float paramFloat1, float paramFloat2, ActorGestureListener paramActorGestureListener)
  {
    super(ak.class.getSimpleName());
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.d = false;
    setColor(Color.BLACK);
    if (paramActorGestureListener != null)
      addListener(paramActorGestureListener);
  }

  protected abstract void a();

  protected abstract void a(Rectangle paramRectangle);

  public final void e()
  {
    validate();
    if ((this.c.width == 0.0F) || (this.c.height == 0.0F));
    GL20 localGL20;
    do
    {
      return;
      localGL20 = Gdx.gl20;
      if (!this.d)
        break;
    }
    while (!ScissorStack.pushScissors(this.c));
    Color localColor = getColor();
    localGL20.glClearColor(localColor.r, localColor.g, localColor.b, localColor.a);
    localGL20.glClear(16640);
    ScissorStack.popScissors();
    localGL20.glViewport((int)this.c.x, (int)this.c.y, (int)this.c.width, (int)this.c.height);
    a();
    localGL20.glViewport(0, 0, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
  }

  public float getPrefHeight()
  {
    return this.b;
  }

  public float getPrefWidth()
  {
    return this.a;
  }

  public void layout()
  {
    super.layout();
    Vector2 localVector2 = b.a(this);
    getStage();
    this.c.x = localVector2.x;
    this.c.y = localVector2.y;
    this.c.width = getWidth();
    this.c.height = getHeight();
    a(this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ak
 * JD-Core Version:    0.6.2
 */