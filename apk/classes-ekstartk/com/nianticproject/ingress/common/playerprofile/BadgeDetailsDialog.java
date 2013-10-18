package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;

public final class BadgeDetailsDialog extends ModalDialog
{
  private static final BadgeDetailsDialog.Style a = new BadgeDetailsDialog.Style();
  private final DisplayedAchievement b;
  private final av d;
  private x e;

  public BadgeDetailsDialog(DisplayedAchievement paramDisplayedAchievement, av paramav)
  {
    super(a);
    this.b = ((DisplayedAchievement)an.a(paramDisplayedAchievement));
    this.d = ((av)an.a(paramav));
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    this.e = new x(this.b, this.d, paramSkin, paramInt);
    return this.e;
  }

  public final void dispose()
  {
    if (this.e != null)
      this.e.a();
    super.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.BadgeDetailsDialog
 * JD-Core Version:    0.6.2
 */