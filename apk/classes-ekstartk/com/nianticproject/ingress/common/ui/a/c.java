package com.nianticproject.ingress.common.ui.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.AlphaAction;

public final class c
{
  private final Actor a;
  private final Touchable b;
  private Action c;

  private c(Actor paramActor)
  {
    this.a = paramActor;
    this.b = paramActor.getTouchable();
  }

  public static c a(Actor paramActor)
  {
    return new c(paramActor);
  }

  private void a()
  {
    if (this.c != null)
    {
      this.a.removeAction(this.c);
      this.c = null;
    }
  }

  public final void a(boolean paramBoolean)
  {
    a();
    Color localColor = this.a.getColor();
    float f;
    Actor localActor;
    if (paramBoolean)
    {
      f = 1.0F;
      localColor.a = f;
      this.a.setVisible(paramBoolean);
      localActor = this.a;
      if (!paramBoolean)
        break label60;
    }
    label60: for (Touchable localTouchable = this.b; ; localTouchable = Touchable.disabled)
    {
      localActor.setTouchable(localTouchable);
      return;
      f = 0.0F;
      break;
    }
  }

  public final void b(boolean paramBoolean)
  {
    a();
    float f;
    AlphaAction localAlphaAction;
    if (paramBoolean)
    {
      f = 1.0F;
      localAlphaAction = Actions.alpha(f, 0.5F, Interpolation.fade);
      if (!paramBoolean)
        break label60;
    }
    label60: for (this.c = Actions.sequence(Actions.visible(true), localAlphaAction, Actions.touchable(this.b)); ; this.c = Actions.sequence(Actions.touchable(Touchable.disabled), localAlphaAction, Actions.visible(false)))
    {
      this.a.addAction(this.c);
      return;
      f = 0.0F;
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.a.c
 * JD-Core Version:    0.6.2
 */