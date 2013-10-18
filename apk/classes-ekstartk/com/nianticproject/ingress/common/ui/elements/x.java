package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Window;
import com.badlogic.gdx.scenes.scene2d.utils.PressedListener;
import com.nianticproject.ingress.common.w.l;

final class x extends PressedListener
{
  x(ModalDialog paramModalDialog, Window paramWindow)
  {
  }

  private boolean a(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    if (this.b.c.close != ModalDialog.CloseStyle.X);
    Vector2 localVector21;
    Vector2 localVector22;
    do
    {
      return false;
      localVector21 = new Vector2();
      localVector21.set(ModalDialog.a(this.b).getWidth() / 2.0F, ModalDialog.a(this.b).getHeight() / 2.0F);
      ModalDialog.a(this.b).localToStageCoordinates(localVector21);
      localVector22 = new Vector2();
      paramInputEvent.getListenerActor().localToStageCoordinates(localVector22.set(paramFloat1, paramFloat2));
    }
    while (localVector21.sub(localVector22).len() >= l.a(48.0F) / 2.0F);
    return true;
  }

  private boolean b(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    Vector2 localVector2 = new Vector2();
    paramInputEvent.getListenerActor().localToStageCoordinates(localVector2.set(paramFloat1, paramFloat2));
    this.a.stageToLocalCoordinates(localVector2);
    return (localVector2.x >= 0.0F) && (localVector2.x < this.a.getWidth()) && (localVector2.y >= 0.0F) && (localVector2.y < this.a.getHeight());
  }

  public final boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if ((b(paramInputEvent, paramFloat1, paramFloat2)) || (a(paramInputEvent, paramFloat1, paramFloat2)))
      return super.touchDown(paramInputEvent, paramFloat1, paramFloat2, paramInt1, paramInt2);
    if (this.b.c.touchOutsideToClose)
      this.b.g();
    return this.b.c.fullModal;
  }

  public final void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    super.touchUp(paramInputEvent, paramFloat1, paramFloat2, paramInt1, paramInt2);
    if (a(paramInputEvent, paramFloat1, paramFloat2))
      this.b.f();
    if ((this.b.c.touchInsideToClose) && (b(paramInputEvent, paramFloat1, paramFloat2)))
      this.b.g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.x
 * JD-Core Version:    0.6.2
 */