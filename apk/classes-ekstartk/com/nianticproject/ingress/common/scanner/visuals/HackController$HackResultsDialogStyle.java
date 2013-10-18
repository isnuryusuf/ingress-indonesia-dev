package com.nianticproject.ingress.common.scanner.visuals;

import com.nianticproject.ingress.common.ui.elements.ModalDialog.CloseStyle;
import com.nianticproject.ingress.common.ui.elements.ModalDialog.Style;
import com.nianticproject.ingress.common.w.l;

public class HackController$HackResultsDialogStyle extends ModalDialog.Style
{
  private static final int WINDOW_ALIGNMENT = 4;
  private static final float WINDOW_WIDTH = 0.94F;

  public HackController$HackResultsDialogStyle()
  {
    this.windowWidthPercent = 0.94F;
    this.windowHeightPercent = 0.0F;
    this.windowAlignment = 4;
    this.padBottom = ((int)l.a(44.0F));
    this.touchOutsideToClose = true;
    this.touchInsideToClose = true;
    this.shrinkHeightToFit = true;
    this.close = ModalDialog.CloseStyle.NONE;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.HackController.HackResultsDialogStyle
 * JD-Core Version:    0.6.2
 */