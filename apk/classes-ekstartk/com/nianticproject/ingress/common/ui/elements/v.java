package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.ac;

final class v extends ClickListener
{
  v(InvitesReminderDialog paramInvitesReminderDialog)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    a.a("InviteNag", "recruit");
    this.a.g();
    InvitesReminderDialog.a(this.a).c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.v
 * JD-Core Version:    0.6.2
 */