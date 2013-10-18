package com.nianticproject.ingress.common.missions.tutorial;

import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.ui.elements.ModalDialog.CloseStyle;
import com.nianticproject.ingress.common.ui.elements.ModalDialog.Style;

public class TutorialDialog$Style extends ModalDialog.Style
{
  public bs narration = null;
  public boolean showArrowLine = true;

  public TutorialDialog$Style()
  {
    this.windowWidthPercent = 0.94F;
    this.windowHeightPercent = 0.0F;
    this.windowAlignment = 2;
    this.windowStyleName = "tutorial";
    this.padTop = 100;
    this.close = ModalDialog.CloseStyle.NONE;
    this.shrinkHeightToFit = true;
    this.fullModal = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.TutorialDialog.Style
 * JD-Core Version:    0.6.2
 */