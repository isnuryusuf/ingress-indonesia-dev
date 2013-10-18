package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ui.widget.d;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievementTier;
import java.util.Iterator;
import java.util.List;

public final class BadgeView extends Table
{
  private final Button a;
  private final Image b;
  private final BadgeView.BadgeViewStyle c;
  private DisplayedAchievement d;
  private boolean e = false;

  private BadgeView(Actor paramActor, DisplayedAchievement paramDisplayedAchievement, DisplayedAchievementTier paramDisplayedAchievementTier, Skin paramSkin, String paramString, boolean paramBoolean)
  {
    super(paramSkin);
    this.d = paramDisplayedAchievement;
    this.c = ((BadgeView.BadgeViewStyle)paramSkin.get(paramString, BadgeView.BadgeViewStyle.class));
    this.a = new d(this.c);
    this.b = new Image(paramSkin.getDrawable("badge-locked"));
    this.b.setTouchable(Touchable.disabled);
    boolean bool;
    if (paramDisplayedAchievement != null)
      if (paramDisplayedAchievementTier != null)
      {
        Image localImage = this.b;
        if ((!paramBoolean) || (!paramDisplayedAchievementTier.c()))
          break label129;
        bool = true;
        label104: localImage.setVisible(bool);
      }
    while (true)
    {
      b(paramActor, false);
      return;
      paramDisplayedAchievementTier = a(paramDisplayedAchievement.c());
      break;
      label129: bool = false;
      break label104;
      this.b.setVisible(false);
    }
  }

  public BadgeView(Actor paramActor, DisplayedAchievement paramDisplayedAchievement, DisplayedAchievementTier paramDisplayedAchievementTier, Skin paramSkin, boolean paramBoolean)
  {
    this(paramActor, paramDisplayedAchievement, paramDisplayedAchievementTier, paramSkin, "default", paramBoolean);
  }

  public static Label a(String paramString, Label.LabelStyle paramLabelStyle)
  {
    Label localLabel = new Label(paramString, paramLabelStyle);
    localLabel.setAlignment(1);
    return localLabel;
  }

  public static BadgeView a(Skin paramSkin, BadgeView paramBadgeView)
  {
    paramBadgeView.a(a("!", (Label.LabelStyle)paramSkin.get("profiles-badges-error", Label.LabelStyle.class)), false, false);
    return paramBadgeView;
  }

  public static DisplayedAchievementTier a(List<DisplayedAchievementTier> paramList)
  {
    if (paramList.size() > 0);
    Object localObject1;
    Object localObject2;
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      Iterator localIterator = paramList.iterator();
      for (localObject1 = null; ; localObject1 = localObject2)
      {
        if (!localIterator.hasNext())
          break label73;
        localObject2 = (DisplayedAchievementTier)localIterator.next();
        if (localObject1 != null)
          break;
      }
    }
    if (!((DisplayedAchievementTier)localObject2).c());
    while (true)
    {
      localObject1 = localObject2;
      break;
      label73: return localObject1;
      localObject2 = localObject1;
    }
  }

  private void a(Actor paramActor, boolean paramBoolean1, boolean paramBoolean2)
  {
    b(paramActor, paramBoolean2);
    if (paramBoolean1)
      this.d = null;
  }

  private void b(Actor paramActor, boolean paramBoolean)
  {
    clear();
    if (paramActor != null)
    {
      if (!paramBoolean)
        paramActor.setTouchable(Touchable.disabled);
      Actor[] arrayOfActor2 = new Actor[3];
      arrayOfActor2[0] = this.a;
      arrayOfActor2[1] = paramActor;
      arrayOfActor2[2] = this.b;
      stack(arrayOfActor2).n().f();
      com.nianticproject.ingress.common.ui.a.c localc = com.nianticproject.ingress.common.ui.a.c.a(paramActor);
      localc.a(false);
      localc.b(true);
      return;
    }
    Actor[] arrayOfActor1 = new Actor[2];
    arrayOfActor1[0] = this.a;
    arrayOfActor1[1] = this.b;
    stack(arrayOfActor1).n().f();
  }

  public final void a()
  {
    this.e = false;
  }

  public final void a(TextureRegion paramTextureRegion)
  {
    TextureRegionDrawable localTextureRegionDrawable = new TextureRegionDrawable(paramTextureRegion);
    a(new d(localTextureRegionDrawable, com.nianticproject.ingress.common.b.c.a(localTextureRegionDrawable, PlayerProfileStyles.COLOR_TINT_PRESSED_BADGE)), false, true);
  }

  public final void a(Actor paramActor, boolean paramBoolean)
  {
    a(paramActor, paramBoolean, false);
  }

  public final void a(boolean paramBoolean)
  {
    if (this.e)
    {
      this.a.setChecked(paramBoolean);
      return;
    }
    this.a.setChecked(false);
  }

  public final DisplayedAchievement b()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.BadgeView
 * JD-Core Version:    0.6.2
 */