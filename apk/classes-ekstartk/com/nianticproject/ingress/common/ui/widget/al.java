package com.nianticproject.ingress.common.ui.widget;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.a.ak;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.components.k;
import com.nianticproject.ingress.gameentity.components.m;
import com.nianticproject.ingress.gameentity.components.p;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;

public final class al extends Table
{
  private final int a;
  private final Skin b;
  private Table c;
  private Table d;
  private String e = "Level";
  private String f = "Range";
  private String g = "Energy";
  private boolean h = false;
  private int i = 0;
  private int j = 0;
  private boolean k = false;
  private boolean l = false;
  private boolean m = true;

  public al(Skin paramSkin, int paramInt)
  {
    super(paramSkin);
    this.b = paramSkin;
    this.a = paramInt;
    this.c = new Table();
  }

  private static long a(Modable paramModable, m paramm)
  {
    switch (am.a[paramm.ordinal()])
    {
    default:
      return com.nianticproject.ingress.gameentity.components.g.a(paramModable, paramm, q.j());
    case 1:
      return k.a(paramModable, q.j());
    case 2:
    }
    return k.b(paramModable, q.j());
  }

  private static void a(Label paramLabel, long paramLong, String paramString)
  {
    Object[] arrayOfObject2;
    String str2;
    if (paramString != null)
    {
      arrayOfObject2 = new Object[2];
      if (paramLong >= 0L)
      {
        str2 = "+";
        arrayOfObject2[0] = str2;
        arrayOfObject2[1] = paramString;
      }
    }
    Object[] arrayOfObject1;
    for (String str1 = String.format("%s%s", arrayOfObject2); ; str1 = String.format("%+d", arrayOfObject1))
    {
      b(paramLabel, paramLong, str1);
      return;
      str2 = "";
      break;
      arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(paramLong);
    }
  }

  private void a(String paramString, Label.LabelStyle paramLabelStyle, Label paramLabel1, Label paramLabel2, Color paramColor)
  {
    float f1 = -0.14F * paramLabel1.getPrefHeight();
    float f2 = -0.06F * paramLabel1.getPrefHeight();
    this.c.row().h(f1).j(f2).k();
    float f3 = com.nianticproject.ingress.common.w.l.a(3.0F);
    float f4 = 0.2F * paramLabel1.getHeight();
    this.c.add(new Label(paramString, paramLabelStyle)).i(f3);
    if (this.k)
      this.c.add(new Label(":", paramLabelStyle));
    Table localTable = new Table();
    localTable.add(paramLabel1).k();
    if (paramLabel2 != null)
    {
      Label localLabel1 = new Label("[", paramLabel2.getStyle());
      Label localLabel2 = new Label("]", paramLabel2.getStyle());
      localLabel1.setColor(paramColor);
      localLabel2.setColor(paramColor);
      localTable.add(localLabel1).i(f4).k();
      localTable.add(paramLabel2).k();
      localTable.add(localLabel2).k();
    }
    localTable.pack();
    this.c.add(localTable).i(f4).k(f3).o();
  }

  private static void b(Label paramLabel, long paramLong, String paramString)
  {
    paramLabel.setVisible(true);
    paramLabel.setText(paramString);
    if (paramLong > 0L)
    {
      paramLabel.setColor(Color.GREEN);
      return;
    }
    if (paramLong == 0L)
    {
      paramLabel.setColor(Color.GRAY);
      return;
    }
    paramLabel.setColor(Color.RED);
  }

  public final void a()
  {
    this.e = "LVL";
    this.f = "RNG";
    this.g = "ENR";
  }

  public final void a(Drawable paramDrawable)
  {
    this.c.setBackground(paramDrawable);
  }

  public final void a(f paramf, com.nianticproject.ingress.gameentity.g paramg)
  {
    this.h = true;
    ak localak = k.a(paramf, paramg);
    this.i = ((Integer)localak.a).intValue();
    this.j = ((Integer)localak.b).intValue();
  }

  public final void a(ai paramai, f paramf, Color paramColor, Modable paramModable, p paramp)
  {
    if (!isVisible())
      return;
    clear();
    this.c.clear();
    Modable localModable = (Modable)paramf.getComponent(Modable.class);
    if (paramModable == null)
      paramModable = localModable;
    p localp = new p(paramf);
    if (paramp == null)
      paramp = localp;
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)this.b.get("portal-details-stats", Label.LabelStyle.class);
    Label localLabel8;
    Label localLabel6;
    label257: int n;
    int i2;
    label363: Label localLabel3;
    label469: int i3;
    if (this.l)
    {
      Portal localPortal = (Portal)paramf.getComponent(Portal.class);
      Label localLabel7 = new Label(localPortal.getLevelName(), localLabelStyle);
      if (paramp != localp)
      {
        localLabel8 = new Label("", localLabelStyle);
        a(localLabel8, k.a(paramp) - localPortal.getLevel(), null);
        a(this.e, localLabelStyle, localLabel7, localLabel8, paramColor);
      }
    }
    else
    {
      if (this.m)
      {
        long l4 = k.a(localp, localModable);
        long l5 = k.a(paramp, paramModable);
        Label localLabel5 = new Label(com.nianticproject.ingress.common.ui.l.a((float)l4), localLabelStyle);
        if (l5 == l4)
          break label516;
        localLabel6 = new Label("", localLabelStyle);
        long l6 = Math.max(0L, l5 - l4);
        a(localLabel6, l6, com.nianticproject.ingress.common.ui.l.a((float)l6));
        a(this.f, localLabelStyle, localLabel5, localLabel6, paramColor);
      }
      if (this.h)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(this.i);
        arrayOfObject[1] = Integer.valueOf(this.j);
        Label localLabel4 = new Label(String.format("%d / %d", arrayOfObject), localLabelStyle);
        a(this.g, localLabelStyle, localLabel4, null, null);
      }
      if (this.a <= 0)
        break label528;
      n = 0;
      m[] arrayOfm = m.values();
      int i1 = arrayOfm.length;
      i2 = 0;
      if (i2 >= i1)
        break label528;
      m localm = arrayOfm[i2];
      long l1 = a(paramModable, localm);
      if ((!localm.d()) || (l1 <= 0L))
        break label693;
      long l2 = a(localModable, localm);
      Label localLabel2 = new Label(localm.a(l2), localLabelStyle);
      long l3 = l1 - l2;
      if (l3 == 0L)
        break label522;
      localLabel3 = new Label("", localLabelStyle);
      b(localLabel3, l3, localm.b(l3));
      a(localm.c(), localLabelStyle, localLabel2, localLabel3, paramColor);
      i3 = n + 1;
      if (i3 == this.a)
        break label528;
    }
    while (true)
    {
      i2++;
      n = i3;
      break label363;
      localLabel8 = null;
      break;
      label516: localLabel6 = null;
      break label257;
      label522: localLabel3 = null;
      break label469;
      label528: row();
      add(this.c).g().o();
      if (b.a(paramf, paramai))
      {
        float f1 = com.nianticproject.ingress.common.w.l.a(3.0F);
        if (this.d == null)
        {
          Label localLabel1 = new Label("ENEMY PORTAL", (Label.LabelStyle)this.b.get("portal-enemy-tag", Label.LabelStyle.class));
          Drawable localDrawable = this.b.getDrawable("transparent-no-outline");
          this.d = new Table();
          this.d.setBackground(localDrawable);
          this.d.row();
          this.d.add(localLabel1).i(f1).k(f1).o().k();
        }
        row();
        add(this.d).h(f1).g().o();
      }
      pack();
      return;
      label693: i3 = n;
    }
  }

  public final void b()
  {
    this.k = true;
  }

  public final void c()
  {
    this.l = true;
  }

  public final void d()
  {
    this.m = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.al
 * JD-Core Version:    0.6.2
 */