package com.nianticproject.ingress.common.playerprofile;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievementTier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class x extends Table
{
  private final Skin a;
  private final HashMap<d, BadgeView> b = hc.b();

  public x(DisplayedAchievement paramDisplayedAchievement, av paramav, Skin paramSkin, int paramInt)
  {
    this.a = ((Skin)an.a(paramSkin));
    an.a(paramDisplayedAchievement);
    an.a(paramav);
    left();
    Table localTable1 = new Table();
    int i = (int)(0.2F * paramInt);
    BadgeView localBadgeView1 = new BadgeView(null, paramDisplayedAchievement, null, paramSkin, true);
    localBadgeView1.setTouchable(Touchable.disabled);
    localTable1.add(localBadgeView1).b(i).c(i);
    a(paramav, localBadgeView1, BadgeView.a(paramDisplayedAchievement.c()), i);
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("profiles-badge-details-title", Label.LabelStyle.class);
    Label localLabel1 = new Label(paramDisplayedAchievement.a(), localLabelStyle1);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("profiles-badge-details-desc", Label.LabelStyle.class);
    Label localLabel2 = new Label(paramDisplayedAchievement.b(), localLabelStyle2);
    localLabel2.setWrap(true);
    Table localTable2 = new Table();
    localTable2.left().top();
    localTable2.add(localLabel1).o().g();
    localTable2.row();
    localTable2.add(localLabel2).o().g().c(3.0F * localLabel2.getStyle().font.getLineHeight());
    localTable1.add(localTable2).o().g().i(l.a(24.0F));
    row();
    add(localTable1).o().g().i(l.a(24.0F)).k(l.a(24.0F));
    Table localTable3 = new Table();
    localTable3.setBackground(paramSkin.getTiledDrawable("tile-diag"));
    Table localTable4 = new Table();
    int j = (int)(0.1F * paramInt);
    Table localTable5 = new Table();
    localTable4.add(localTable5).o().g();
    Iterator localIterator = paramDisplayedAchievement.c().iterator();
    Object localObject1 = localTable5;
    int k = 0;
    Table localTable6;
    Object localObject2;
    if (localIterator.hasNext())
    {
      DisplayedAchievementTier localDisplayedAchievementTier = (DisplayedAchievementTier)localIterator.next();
      localTable6 = new Table();
      BadgeView localBadgeView2 = new BadgeView(null, paramDisplayedAchievement, localDisplayedAchievementTier, paramSkin, true);
      localBadgeView2.setTouchable(Touchable.disabled);
      localTable6.add(localBadgeView2).b(j).c(j);
      Label.LabelStyle localLabelStyle3 = (Label.LabelStyle)paramSkin.get("profiles-badge-details-tier-value", Label.LabelStyle.class);
      localTable6.add(new Label(localDisplayedAchievementTier.a(), localLabelStyle3));
      a(paramav, localBadgeView2, localDisplayedAchievementTier, j);
      if (k != 3)
        break label639;
      localObject2 = new Table();
      localTable4.row().o().g();
      localTable4.add((Actor)localObject2).h(l.a(8.0F)).o().g();
      k = 0;
    }
    while (true)
    {
      ((Table)localObject2).add(localTable6).a(e.a(0.3333333F));
      int m = k + 1;
      localObject1 = localObject2;
      k = m;
      break;
      localTable3.add(localTable4).o().g().h(l.a(16.0F)).j(l.a(16.0F));
      row();
      add(localTable3).o().g().h(l.a(8.0F));
      return;
      label639: localObject2 = localObject1;
    }
  }

  private void a(av paramav, BadgeView paramBadgeView, DisplayedAchievementTier paramDisplayedAchievementTier, int paramInt)
  {
    this.b.put(paramav.a(paramDisplayedAchievementTier.b(), paramInt), paramBadgeView);
  }

  public final void a()
  {
    Iterator localIterator = this.b.keySet().iterator();
    while (localIterator.hasNext())
      ((d)localIterator.next()).d();
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      BadgeView localBadgeView = (BadgeView)localEntry.getValue();
      if (localBadgeView != null)
      {
        d locald = (d)localEntry.getKey();
        if (locald.a())
        {
          localEntry.setValue(null);
          if (!locald.c())
            localBadgeView.a(new Image(locald.b()), false);
          else
            BadgeView.a(this.a, localBadgeView);
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.x
 * JD-Core Version:    0.6.2
 */