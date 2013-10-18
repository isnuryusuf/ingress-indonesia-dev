package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

public class m extends Button
  implements p
{
  protected final Actor a;
  protected final Actor b;
  private final Button.ButtonStyle c;
  private final Button.ButtonStyle d;
  private boolean e;

  public m(Actor paramActor1, Actor paramActor2, Button.ButtonStyle paramButtonStyle1, Button.ButtonStyle paramButtonStyle2)
  {
  }

  public final boolean a()
  {
    return !isDisabled();
  }

  public boolean addListener(EventListener paramEventListener)
  {
    if ((this.e) && ((paramEventListener instanceof ClickListener)) && (!(paramEventListener instanceof o)))
      throw new IllegalStateException("must use a DisabledClickListener for handling button clicks");
    return super.addListener(paramEventListener);
  }

  public final void b(boolean paramBoolean)
  {
    boolean bool;
    if (a() != paramBoolean)
    {
      if (paramBoolean)
        break label34;
      bool = true;
      setDisabled(bool);
      if (!paramBoolean)
        break label39;
    }
    label34: label39: for (Button.ButtonStyle localButtonStyle = this.c; ; localButtonStyle = this.d)
    {
      setStyle(localButtonStyle);
      return;
      bool = false;
      break;
    }
  }

  protected final void c()
  {
    this.b.clearActions();
    this.b.setColor(1.0F, 1.0F, 1.0F, 0.0F);
    this.a.clearActions();
    this.a.setColor(1.0F, 1.0F, 1.0F, 1.0F);
    this.a.setVisible(true);
    this.a.addAction(Actions.delay(1.0F, Actions.sequence(Actions.fadeOut(2.0F), Actions.visible(false))));
    this.b.addAction(Actions.delay(1.0F, Actions.fadeIn(2.0F)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.m
 * JD-Core Version:    0.6.2
 */