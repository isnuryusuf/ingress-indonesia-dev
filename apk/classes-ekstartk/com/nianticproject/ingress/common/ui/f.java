package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.InputProcessor;

public class f
  implements InputProcessor
{
  private InputProcessor a;

  public final void a(InputProcessor paramInputProcessor)
  {
    this.a = paramInputProcessor;
  }

  public boolean keyDown(int paramInt)
  {
    return (this.a != null) && (this.a.keyDown(paramInt));
  }

  public boolean keyTyped(char paramChar)
  {
    return (this.a != null) && (this.a.keyTyped(paramChar));
  }

  public boolean keyUp(int paramInt)
  {
    return (this.a != null) && (this.a.keyUp(paramInt));
  }

  public boolean mouseMoved(int paramInt1, int paramInt2)
  {
    return (this.a != null) && (this.a.mouseMoved(paramInt1, paramInt2));
  }

  public boolean scrolled(int paramInt)
  {
    return (this.a != null) && (this.a.scrolled(paramInt));
  }

  public boolean touchDown(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (this.a != null) && (this.a.touchDown(paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public boolean touchDragged(int paramInt1, int paramInt2, int paramInt3)
  {
    return (this.a != null) && (this.a.touchDragged(paramInt1, paramInt2, paramInt3));
  }

  public boolean touchUp(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (this.a != null) && (this.a.touchUp(paramInt1, paramInt2, paramInt3, paramInt4));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.f
 * JD-Core Version:    0.6.2
 */