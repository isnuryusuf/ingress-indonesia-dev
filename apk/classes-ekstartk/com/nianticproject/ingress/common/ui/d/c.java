package com.nianticproject.ingress.common.ui.d;

import com.badlogic.gdx.math.Vector2;

public class c
  implements b
{
  private b a;

  public final void a(b paramb)
  {
    this.a = paramb;
  }

  public final boolean a(float paramFloat1, float paramFloat2)
  {
    return (this.a != null) && (this.a.a(paramFloat1, paramFloat2));
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    return (this.a != null) && (this.a.a(paramInt1, paramInt2));
  }

  public boolean fling(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    return (this.a != null) && (this.a.fling(paramFloat1, paramFloat2, paramInt1, paramInt2));
  }

  public boolean longPress(float paramFloat1, float paramFloat2)
  {
    return (this.a != null) && (this.a.longPress(paramFloat1, paramFloat2));
  }

  public boolean pan(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    return (this.a != null) && (this.a.pan(paramFloat1, paramFloat2, paramFloat3, paramFloat4));
  }

  public boolean pinch(Vector2 paramVector21, Vector2 paramVector22, Vector2 paramVector23, Vector2 paramVector24)
  {
    return (this.a != null) && (this.a.pinch(paramVector21, paramVector22, paramVector23, paramVector24));
  }

  public boolean tap(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    return (this.a != null) && (this.a.tap(paramFloat1, paramFloat2, paramInt1, paramInt2, paramInt3));
  }

  public boolean touchDown(float paramFloat1, float paramFloat2, int paramInt)
  {
    return (this.a != null) && (this.a.touchDown(paramFloat1, paramFloat2, paramInt));
  }

  public boolean zoom(float paramFloat1, float paramFloat2)
  {
    return (this.a != null) && (this.a.zoom(paramFloat1, paramFloat2));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.d.c
 * JD-Core Version:    0.6.2
 */