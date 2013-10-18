package com.nianticproject.ingress.common.factionchoice;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.ui.elements.ModalDialog.CloseStyle;
import com.nianticproject.ingress.common.ui.elements.ModalDialog.Style;
import com.nianticproject.ingress.shared.ai;

final class ar extends ClickListener
{
  ar(aq paramaq, ai paramai)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    aj localaj = this.b.a;
    ai localai = this.a;
    ModalDialog.Style localStyle = new ModalDialog.Style();
    localStyle.close = ModalDialog.CloseStyle.NONE;
    localStyle.windowAlignment = 1;
    localStyle.shrinkHeightToFit = true;
    localStyle.fullModal = true;
    al localal = new al(localaj, localStyle, localai);
    localal.a(new ao(localaj, localai));
    localaj.a(localal);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.ar
 * JD-Core Version:    0.6.2
 */