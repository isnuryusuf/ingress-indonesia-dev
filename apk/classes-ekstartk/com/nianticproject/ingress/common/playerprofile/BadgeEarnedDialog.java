package com.nianticproject.ingress.common.playerprofile;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.Window;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievementTier;

public final class BadgeEarnedDialog extends ModalDialog
{
  private final DisplayedAchievement a;
  private final av b;
  private Skin d;
  private BadgeView e;
  private d f;
  private boolean g;

  public BadgeEarnedDialog(DisplayedAchievement paramDisplayedAchievement, av paramav)
  {
    super(new BadgeEarnedDialog.Style());
    this.a = ((DisplayedAchievement)an.a(paramDisplayedAchievement));
    this.b = ((av)an.a(paramav));
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    this.d = paramSkin;
    Table localTable1 = new Table();
    localTable1.padBottom(l.a(60.0F));
    this.e = new BadgeView(null, this.a, null, paramSkin, false);
    this.e.a();
    int i = (int)(0.35F * paramInt);
    localTable1.add(this.e).b(i).c(i);
    DisplayedAchievementTier localDisplayedAchievementTier = BadgeView.a(this.a.c());
    this.g = false;
    this.f = this.b.a(localDisplayedAchievementTier.b(), i, true);
    Table localTable2 = new Table();
    localTable2.add(new Label("Medal Earned:", (Label.LabelStyle)paramSkin.get("profiles-badge-earned-dialog-title", Label.LabelStyle.class))).o().k();
    localTable2.row();
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("profiles-badge-earned-dialog-name", Label.LabelStyle.class);
    localTable2.add(new Label(this.a.a(), localLabelStyle)).o().k();
    localTable1.add(localTable2).o().g().i().g(l.a(24.0F));
    return localTable1;
  }

  public final void a()
  {
    if (this.g)
      super.a();
  }

  protected final void a(Window paramWindow, Skin paramSkin)
  {
    paramWindow.setBackground(paramSkin.getDrawable("subtle-dialog-bg"));
    paramWindow.addListener(new y(this));
  }

  public final boolean a(float paramFloat)
  {
    if ((!this.g) && (this.f != null) && (this.f.a()))
    {
      if (this.f.c())
        break label69;
      this.e.a(this.f.b());
    }
    while (true)
    {
      this.g = true;
      a();
      return super.a(paramFloat);
      label69: BadgeView.a(this.d, this.e);
    }
  }

  public final void dispose()
  {
    if (this.f != null)
    {
      this.f.d();
      this.f = null;
    }
    super.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.BadgeEarnedDialog
 * JD-Core Version:    0.6.2
 */