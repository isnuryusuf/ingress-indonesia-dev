package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.nianticproject.ingress.common.ui.widget.f;

final class aj extends f
{
  private final ai a;

  public aj(Skin paramSkin, ai paramai)
  {
    super(paramai.a(), (TextButton.TextButtonStyle)paramSkin.get("profiles-stats-filter-tab", TextButton.TextButtonStyle.class));
    this.a = paramai;
  }

  public final ai a()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.aj
 * JD-Core Version:    0.6.2
 */