package com.nianticproject.ingress.common.playerprofile;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.SnapshotArray;
import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.a.br;
import com.google.a.c.am;
import com.google.a.c.by;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievementTier;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class z extends Table
{
  private final ab a;
  private final Skin b;
  private final av c;
  private final float d;
  private final float e;
  private final Integer f;
  private final Integer g;
  private final by<d, BadgeView> h = by.b();
  private final LinkedList<d> i = eq.b();
  private final Table j;
  private final ClickListener k = new aa(this);
  private BadgeView l = null;

  public z(ab paramab, Skin paramSkin, av paramav, Integer paramInteger1, Integer paramInteger2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if ((paramInteger1 == null) || (paramInteger1.intValue() > 0));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = ((ab)an.a(paramab));
      this.b = ((Skin)an.a(paramSkin));
      this.c = ((av)an.a(paramav));
      this.d = paramFloat1;
      this.e = paramFloat2;
      this.f = paramInteger1;
      this.g = paramInteger2;
      this.j = new Table();
      this.j.left();
      add(this.j).o().g().i(paramFloat2).h(paramFloat3).j(paramFloat4);
      return;
    }
  }

  private void a(BadgeView paramBadgeView)
  {
    if (paramBadgeView != this.l)
    {
      a();
      this.l = paramBadgeView;
      this.l.a(true);
      this.l.setTouchable(Touchable.disabled);
      if (paramBadgeView.b() != null)
        this.a.a(paramBadgeView.b());
    }
    else
    {
      return;
    }
    this.a.b();
  }

  private void a(BadgeView paramBadgeView, d paramd)
  {
    if (paramd != null)
      paramd.d();
    BadgeView.a(this.b, paramBadgeView);
  }

  private BadgeView b(BadgeView paramBadgeView)
  {
    Label localLabel = BadgeView.a("MORE", (Label.LabelStyle)this.b.get("profiles-badges-more", Label.LabelStyle.class));
    this.h.a().remove(paramBadgeView);
    paramBadgeView.a(localLabel, true);
    paramBadgeView.a();
    return paramBadgeView;
  }

  private boolean b(List<DisplayedAchievement> paramList, DisplayedAchievement paramDisplayedAchievement, boolean paramBoolean)
  {
    if ((paramList == null) || (paramList.size() == 0))
    {
      bool1 = false;
      return bool1;
    }
    Table localTable = new Table();
    float f1 = l.a(0.0F);
    float f2 = l.a(0.0F);
    Iterator localIterator1 = paramList.iterator();
    int m = 0;
    int n = 1;
    float f3 = 0.0F;
    Object localObject1 = localTable;
    boolean bool1 = false;
    DisplayedAchievement localDisplayedAchievement;
    BadgeView localBadgeView1;
    label162: List localList2;
    label243: float f4;
    float f5;
    label290: float f6;
    if (localIterator1.hasNext())
    {
      localDisplayedAchievement = (DisplayedAchievement)localIterator1.next();
      int i1 = -1 + paramList.size();
      localBadgeView1 = null;
      if (m == i1)
      {
        if ((this.f == null) || (this.f.intValue() <= 0) || (paramBoolean))
          break label416;
        BadgeView localBadgeView2 = new BadgeView(null, null, null, this.b, false);
        localBadgeView2.addListener(this.k);
        localBadgeView1 = b(localBadgeView2);
      }
      if (localBadgeView1 == null)
      {
        localBadgeView1 = new BadgeView(BadgeView.a("...", (Label.LabelStyle)this.b.get("profiles-badges-loading", Label.LabelStyle.class)), localDisplayedAchievement, null, this.b, true);
        localBadgeView1.addListener(this.k);
        if (localDisplayedAchievement != null)
        {
          localList2 = localDisplayedAchievement.c();
          if ((localList2 != null) && (localList2.size() != 0))
            break label461;
          localBadgeView1 = null;
        }
      }
      if (((Table)localObject1).getPadLeft() != null)
        ((Table)localObject1).getPadLeft().a(localObject1);
      f4 = getPrefWidth() - 2.0F * this.e;
      if (((Table)localObject1).getChildren().size <= 0)
        break label522;
      f5 = f1;
      if (this.g == null)
        break label528;
      f6 = f4 / (0.5F + this.g.intValue()) - f5;
    }
    label395: label416: label461: float f8;
    label522: label528: int i2;
    Object localObject2;
    while (true)
      if (f5 + (f3 + f6) > Math.ceil(f4))
      {
        if ((this.f != null) && (n == this.f.intValue()))
        {
          SnapshotArray localSnapshotArray = ((Table)localObject1).getChildren();
          b((BadgeView)localSnapshotArray.get(-1 + localSnapshotArray.size));
          if (((Table)localObject1).getParent() != null)
            break;
          if (n <= 1)
            break label811;
          this.j.add((Actor)localObject1).k().h(f2);
          return bool1;
          localBadgeView1 = null;
          if (paramBoolean)
            break label162;
          localBadgeView1 = new BadgeView(BadgeView.a("...", (Label.LabelStyle)this.b.get("profiles-badges-loading", Label.LabelStyle.class)), null, null, this.b, false);
          break label162;
          String str = BadgeView.a(localList2).b();
          if (!br.b(str))
          {
            d locald = this.c.a(str, (int)localBadgeView1.getPrefWidth(), true);
            this.h.put(locald, localBadgeView1);
            break label243;
          }
          a(localBadgeView1, null);
          break label243;
          f5 = 0.0F;
          break label290;
          f6 = localBadgeView1.getPrefWidth();
          continue;
        }
        if (n > 1)
        {
          f8 = f2;
          this.j.add((Actor)localObject1).k().h(f8);
          this.j.row();
          i2 = n + 1;
          localObject2 = new Table();
          int i4 = i2 % 2;
          f3 = 0.0F;
          if (i4 == 0)
          {
            f3 = f6 / 2.0F - f1 / 2.0F;
            ((Table)localObject2).padLeft(f3);
          }
        }
      }
    while (true)
    {
      if (ag.a(localDisplayedAchievement, paramDisplayedAchievement))
        a(localBadgeView1);
      for (boolean bool2 = true; ; bool2 = bool1)
      {
        ((Table)localObject2).add(localBadgeView1).i(f5).b(f6).c(f6);
        float f7 = f3 + (f6 + f5);
        int i3 = m + 1;
        List localList1 = localDisplayedAchievement.c();
        if (localList1.size() > 0);
        Object localObject3;
        label716: Object localObject4;
        for (boolean bool3 = true; ; bool3 = false)
        {
          an.a(bool3);
          Iterator localIterator2 = localList1.iterator();
          for (localObject3 = null; ; localObject3 = localObject4)
          {
            if (!localIterator2.hasNext())
              break label777;
            localObject4 = (DisplayedAchievementTier)localIterator2.next();
            if (localObject3 != null)
              break;
          }
          f8 = 0.0F;
          break;
        }
        if (!((DisplayedAchievementTier)localObject4).c());
        while (true)
        {
          localObject3 = localObject4;
          break label716;
          label777: if (localObject3 != null)
            localObject3.c();
          m = i3;
          n = i2;
          f3 = f7;
          localObject1 = localObject2;
          bool1 = bool2;
          break;
          label811: f2 = 0.0F;
          break label395;
          localObject4 = localObject3;
        }
      }
      i2 = n;
      localObject2 = localObject1;
    }
  }

  private void d()
  {
    this.l = null;
    this.h.clear();
    this.j.clear();
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
      ((d)localIterator.next()).d();
    this.i.clear();
  }

  public final void a()
  {
    if (this.l != null)
    {
      this.l.a(false);
      this.l.setTouchable(Touchable.enabled);
      this.l = null;
    }
  }

  public final void a(PlayerProfile paramPlayerProfile)
  {
    a(paramPlayerProfile, null);
  }

  public final void a(PlayerProfile paramPlayerProfile, DisplayedAchievement paramDisplayedAchievement)
  {
    d();
    if (paramPlayerProfile == null)
      return;
    List localList = paramPlayerProfile.d();
    if (paramPlayerProfile.e() == -1);
    for (boolean bool = true; ; bool = false)
    {
      b(localList, paramDisplayedAchievement, bool);
      return;
    }
  }

  public final boolean a(List<DisplayedAchievement> paramList, DisplayedAchievement paramDisplayedAchievement, boolean paramBoolean)
  {
    if (this.l != null)
      paramDisplayedAchievement = this.l.b();
    d();
    return b(paramList, paramDisplayedAchievement, paramBoolean);
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    if (this.h.size() > 0)
    {
      Iterator localIterator = this.h.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        d locald = (d)localEntry.getKey();
        if (locald.a())
        {
          localIterator.remove();
          BadgeView localBadgeView = (BadgeView)localEntry.getValue();
          if (!locald.c())
          {
            this.i.add(locald);
            localBadgeView.a(locald.b());
          }
          else
          {
            a(localBadgeView, locald);
          }
        }
      }
    }
  }

  public final DisplayedAchievement b()
  {
    if (this.l != null)
      return this.l.b();
    return null;
  }

  public final void c()
  {
    a(null, null);
  }

  public final float getPrefWidth()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.z
 * JD-Core Version:    0.6.2
 */