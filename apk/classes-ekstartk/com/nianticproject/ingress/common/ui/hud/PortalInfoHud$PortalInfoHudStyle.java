package com.nianticproject.ingress.common.ui.hud;

import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class PortalInfoHud$PortalInfoHudStyle
{
  public Label.LabelStyle addressLabelStyle = null;
  public Drawable background = null;
  public Label.LabelStyle rangeLabelStyle = null;
  public boolean useRemotePortalViewStyle = false;

  public PortalInfoHud$PortalInfoHudStyle()
  {
  }

  public PortalInfoHud$PortalInfoHudStyle(PortalInfoHudStyle paramPortalInfoHudStyle)
  {
    this.useRemotePortalViewStyle = paramPortalInfoHudStyle.useRemotePortalViewStyle;
    this.background = paramPortalInfoHudStyle.background;
    this.addressLabelStyle = paramPortalInfoHudStyle.addressLabelStyle;
    this.rangeLabelStyle = paramPortalInfoHudStyle.rangeLabelStyle;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.PortalInfoHud.PortalInfoHudStyle
 * JD-Core Version:    0.6.2
 */