package com.nianticproject.ingress.common.ui.elements;

import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

final class ao
  implements Runnable
{
  ao(PortalInfoDialog paramPortalInfoDialog)
  {
  }

  public final void run()
  {
    PortalInfoDialog.c(this.a).setVisible(false);
    PortalInfoDialog.c(this.a).clearActions();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ao
 * JD-Core Version:    0.6.2
 */