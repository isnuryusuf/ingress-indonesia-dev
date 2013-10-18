package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.ui.a;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;

public final class ac extends a
  implements ab
{
  private final av a;
  private final bi b;
  private final ap c;
  private final bc d;
  private final ax e;
  private final String f;
  private DisplayedAchievement g = null;

  public ac(String paramString, av paramav, ax paramax, DisplayedAchievement paramDisplayedAchievement, boolean paramBoolean)
  {
    super("BadgesActivity");
    this.a = paramav;
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.f = paramString;
      this.e = ((ax)an.a(paramax));
      this.b = new ae(paramString);
      this.c = new ap(this, paramDisplayedAchievement, paramav, paramBoolean);
      this.d = new bc(this.e, this.b, this.c, paramav, true, paramBoolean);
      K().a(this.c);
      return;
    }
  }

  public final void a()
  {
    Gdx.gl.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
    this.d.a(this.f, false);
  }

  public final void a(DisplayedAchievement paramDisplayedAchievement)
  {
    if (this.g == paramDisplayedAchievement)
      return;
    this.g = paramDisplayedAchievement;
    BadgeDetailsDialog localBadgeDetailsDialog = new BadgeDetailsDialog(paramDisplayedAchievement, this.a);
    localBadgeDetailsDialog.a(new ad(this));
    K().a(localBadgeDetailsDialog);
  }

  public final void b()
  {
  }

  protected final String d()
  {
    return "BadgesActivity";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.ac
 * JD-Core Version:    0.6.2
 */