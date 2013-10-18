package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.nianticproject.ingress.shared.ai;

public class AvatarView$AvatarViewStyle extends TextButton.TextButtonStyle
{
  private Color aliensTintColor = Color.GREEN;
  private Color neutralTintColor = Color.WHITE;
  private Color resistanceTintColor = Color.BLUE;

  public AvatarView$AvatarViewStyle()
  {
  }

  public AvatarView$AvatarViewStyle(AvatarViewStyle paramAvatarViewStyle)
  {
    super(paramAvatarViewStyle);
    this.neutralTintColor = paramAvatarViewStyle.neutralTintColor;
    this.aliensTintColor = paramAvatarViewStyle.aliensTintColor;
    this.resistanceTintColor = paramAvatarViewStyle.resistanceTintColor;
  }

  public Color getTintColor(ai paramai)
  {
    switch (w.a[paramai.ordinal()])
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      return this.aliensTintColor;
    case 2:
      return this.neutralTintColor;
    case 3:
    }
    return this.resistanceTintColor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.AvatarView.AvatarViewStyle
 * JD-Core Version:    0.6.2
 */