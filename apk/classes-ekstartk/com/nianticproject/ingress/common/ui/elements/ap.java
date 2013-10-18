package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.Group;

final class ap
  implements Runnable
{
  ap(PortalInfoDialog paramPortalInfoDialog, Group paramGroup)
  {
  }

  public final void run()
  {
    if (PortalInfoDialog.d(this.b) != null)
      this.b.a();
    this.a.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.ap
 * JD-Core Version:    0.6.2
 */