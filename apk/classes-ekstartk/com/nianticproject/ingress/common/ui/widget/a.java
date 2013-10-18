package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.SequenceAction;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.nianticproject.ingress.common.ui.a.e;
import com.nianticproject.ingress.common.ui.a.f;

final class a
  implements c
{
  a(ActionButton paramActionButton)
  {
  }

  public final void a(String paramString)
  {
    a(false);
    ActionButton.e(this.a).setText(paramString);
  }

  public final void a(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
    if (ActionButton.a(this.a).getParent() == null)
    {
      ActionButton.b(this.a).remove();
      ActionButton.c(this.a).addActor(ActionButton.a(this.a));
    }
  }

  public final void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    a(paramBoolean);
    ActionButton.a(this.a).setText(paramString1);
    ActionButton.d(this.a).setText(paramString2);
  }

  public final boolean a()
  {
    return this.a.a();
  }

  public final void b(String paramString)
  {
    this.a.a(false);
    ActionButton.b(this.a).setText(paramString);
    ActionButton.e(this.a).setText(paramString);
    if (ActionButton.b(this.a).getParent() == null)
    {
      ActionButton.a(this.a).remove();
      ActionButton.c(this.a).addActor(ActionButton.b(this.a));
      ActionButton.b(this.a).clearActions();
      SequenceAction localSequenceAction = Actions.sequence(new e(), new f(ActionButton.b(this.a)));
      ActionButton.b(this.a).addAction(Actions.sequence(localSequenceAction, Actions.forever(Actions.delay(3.0F, localSequenceAction))));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.a
 * JD-Core Version:    0.6.2
 */