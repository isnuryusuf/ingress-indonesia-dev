package com.nianticproject.ingress;

import com.nianticproject.ingress.common.playerprofile.BadgeEarnedDialog;
import com.nianticproject.ingress.common.scanner.ev;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;

final class av
  implements ev
{
  av(au paramau)
  {
  }

  public final ModalDialog a()
  {
    return new BadgeEarnedDialog(au.a(this.a), NemesisApplication.a().i());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.av
 * JD-Core Version:    0.6.2
 */