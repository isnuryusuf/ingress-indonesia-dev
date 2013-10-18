package com.nianticproject.ingress.common.playerprofile;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.ButtonGroup;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.google.a.c.al;
import com.google.a.c.eq;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.ui.widget.g;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.shared.playerprofile.FormattedAggregateMetric;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class af extends Table
{
  private final Skin a;
  private final float b;
  private final float c;
  private List<FormattedAggregateMetric> d;
  private Table e;
  private ButtonGroup f;

  public af(Skin paramSkin, float paramFloat1, float paramFloat2)
  {
    super(paramSkin);
    this.a = ((Skin)an.a(paramSkin));
    this.b = paramFloat1;
    this.c = paramFloat2;
  }

  private String a(FormattedAggregateMetric paramFormattedAggregateMetric)
  {
    return a(paramFormattedAggregateMetric, b());
  }

  private static String a(FormattedAggregateMetric paramFormattedAggregateMetric, ai paramai)
  {
    switch (ah.a[paramai.ordinal()])
    {
    default:
      throw new IllegalArgumentException("Tab " + paramai + " is not supported");
    case 1:
      return paramFormattedAggregateMetric.c();
    case 2:
      return paramFormattedAggregateMetric.d();
    case 3:
      return paramFormattedAggregateMetric.e();
    case 4:
    }
    return paramFormattedAggregateMetric.f();
  }

  private void a()
  {
    reset();
    this.e = new Table();
    this.e.setWidth(this.b);
    LinkedHashSet localLinkedHashSet = jc.c();
    Iterator localIterator1 = this.d.iterator();
    do
    {
      if (!localIterator1.hasNext())
        break;
      FormattedAggregateMetric localFormattedAggregateMetric3 = (FormattedAggregateMetric)localIterator1.next();
      for (ai localai4 : ai.values())
        if ((!localLinkedHashSet.contains(localai4)) && (a(localFormattedAggregateMetric3, localai4) != null))
          localLinkedHashSet.add(localai4);
    }
    while (localLinkedHashSet.size() != ai.values().length);
    ai localai1 = b();
    if (!localLinkedHashSet.contains(localai1));
    for (ai localai2 = null; ; localai2 = localai1)
    {
      Table localTable1 = new Table();
      this.f = new ButtonGroup();
      Iterator localIterator2 = localLinkedHashSet.iterator();
      int i = 0;
      if (localIterator2.hasNext())
      {
        ai localai3 = (ai)localIterator2.next();
        int j = i + 1;
        int k;
        label215: int m;
        if (i == 0)
        {
          k = 1;
          if (localai2 == null)
            break label358;
          if (localai3 != localai2)
            break label352;
          m = 1;
        }
        while (true)
        {
          if (k == 0)
            localTable1.add(new Image(this.a.getPatch("vertical-separator"))).h().i(l.a(16.0F)).k(l.a(16.0F));
          aj localaj = new aj(this.a, localai3);
          localaj.addListener(new ag(this));
          localTable1.add(localaj).o().g();
          this.f.add(localaj);
          if (m != 0)
            localaj.setChecked(true);
          i = j;
          break;
          k = 0;
          break label215;
          label352: m = 0;
          continue;
          label358: m = k;
        }
      }
      this.e.add(localTable1).o().g().i(24.0F).k(24.0F).h(16.0F).j(16.0F);
      this.e.row();
      LinkedList localLinkedList = eq.b();
      al localal = al.i();
      Iterator localIterator3 = this.d.iterator();
      while (localIterator3.hasNext())
      {
        FormattedAggregateMetric localFormattedAggregateMetric2 = (FormattedAggregateMetric)localIterator3.next();
        if (a(localFormattedAggregateMetric2) != null)
        {
          String str2 = localFormattedAggregateMetric2.b();
          List localList2 = localal.a(str2);
          if (localList2.size() == 0)
            localLinkedList.add(str2);
          localList2.add(localFormattedAggregateMetric2);
        }
      }
      Iterator localIterator4 = localLinkedList.iterator();
      while (localIterator4.hasNext())
      {
        String str1 = (String)localIterator4.next();
        List localList1 = localal.a(str1);
        if (localList1.size() > 0)
        {
          Table localTable2 = new Table();
          localTable2.setBackground(this.a.getDrawable("profiles-category-background"));
          localTable2.add(new Image(this.a.getDrawable("profiles-category"))).b(l.a(12.0F)).c(l.a(12.0F)).i(this.c).k(l.a(8.0F));
          Label.LabelStyle localLabelStyle = (Label.LabelStyle)this.a.get("profiles-category", Label.LabelStyle.class);
          float f1 = 0.2F * -localLabelStyle.font.getLineHeight();
          float f2 = 0.1F * -localLabelStyle.font.getLineHeight();
          localTable2.add(new Label(str1, localLabelStyle)).h(f1).j(f2).o().g();
          this.e.add(localTable2).o().g().j(-l.a(-8.0F));
          this.e.row();
        }
        Iterator localIterator5 = localList1.iterator();
        while (localIterator5.hasNext())
        {
          FormattedAggregateMetric localFormattedAggregateMetric1 = (FormattedAggregateMetric)localIterator5.next();
          Table localTable3 = new Table();
          localTable3.add(new g(localFormattedAggregateMetric1.a(), (Label.LabelStyle)this.a.get("profiles-metric-name", Label.LabelStyle.class), 0)).i(this.c).o().g();
          Label localLabel = new Label(a(localFormattedAggregateMetric1), (Label.LabelStyle)this.a.get("profiles-metric-value", Label.LabelStyle.class));
          localLabel.setAlignment(16);
          localTable3.add(localLabel).g();
          this.e.add(localTable3).o().g().h(l.a(-8.0F));
          this.e.row();
        }
      }
      add(this.e).a(e.a(1.0F));
      return;
    }
  }

  private ai b()
  {
    if (this.f == null);
    while (this.f.getChecked() == null)
      return null;
    return ((aj)this.f.getChecked()).a();
  }

  public final void a(List<FormattedAggregateMetric> paramList)
  {
    this.d = paramList;
    a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.af
 * JD-Core Version:    0.6.2
 */