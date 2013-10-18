package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.scanner.ev;
import com.nianticproject.ingress.common.ui.elements.MissionReminderDialog;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;

final class br
  implements ev
{
  br(bp parambp, ClickListener paramClickListener1, ClickListener paramClickListener2, ClickListener paramClickListener3)
  {
  }

  public final ModalDialog a()
  {
    return new MissionReminderDialog(this.a, this.b, this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.br
 * JD-Core Version:    0.6.2
 */