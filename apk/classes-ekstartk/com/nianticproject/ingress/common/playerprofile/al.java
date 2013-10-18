package com.nianticproject.ingress.common.playerprofile;

import com.a.a.c;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.br;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.ui.widget.g;
import com.nianticproject.ingress.common.w.l;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.t;
import java.util.Locale;

public final class al extends Table
{
  private final av a;
  private final Skin b;
  private final AvatarView c;
  private final g d;
  private final Label e;
  private final Label f;
  private final Table g;
  private final Label h;
  private final float i;
  private final an j = new an(this, (byte)0);
  private String k;

  public al(av paramav, Stage paramStage, Skin paramSkin, boolean paramBoolean)
  {
    super(paramSkin);
    com.google.a.a.an.a(paramStage);
    this.b = ((Skin)com.google.a.a.an.a(paramSkin));
    this.a = ((av)com.google.a.a.an.a(paramav));
    this.d = new g("[ ? ]", (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class), 1);
    this.e = new Label("[ ? ]", paramSkin, "profiles-player-header-ap");
    this.f = new Label("[ ? ]", paramSkin, "profiles-player-header-ap-to-next-level");
    float f1 = 0.1F * -((Label.LabelStyle)paramSkin.get("profiles-player-header-ap-to-next-level", Label.LabelStyle.class)).font.getLineHeight();
    Table localTable = new Table();
    localTable.add(this.d).g().o().k().j(f1);
    localTable.row();
    localTable.add(this.e).g().o().k().h(f1);
    localTable.row();
    localTable.add(this.f).g().o().k();
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("profiles-player-header-level-number", Label.LabelStyle.class);
    float f2 = 0.25F * -localLabelStyle.font.getLineHeight();
    localLabelStyle.font.setScale(1.25F);
    this.h = new Label("[ ? ]", localLabelStyle);
    Label localLabel = new Label("LEVEL", paramSkin, "profiles-player-header-level");
    this.g = new Table();
    this.g.add(this.h).j(f2);
    this.g.row();
    this.g.add(localLabel);
    setWidth(paramStage.getWidth());
    this.i = l.a(24.0F);
    pad(this.i);
    if (q.f().c(com.nianticproject.ingress.common.p.a.a()))
    {
      this.c = new AvatarView(paramav, paramSkin);
      float f3 = l.a(96.0F);
      float f4 = l.a(16.0F);
      add(this.c).a(f3, f3);
      add(new Image(paramSkin.getPatch("vertical-separator"))).h().i(f4).k(f4);
      if (paramBoolean)
        this.c.addListener(this.j);
    }
    while (true)
    {
      add(localTable).o().g();
      add(this.g);
      return;
      this.c = null;
    }
  }

  public final void a()
  {
    if (this.c != null)
      this.c.c();
  }

  public final void a(String paramString, PlayerProfile paramPlayerProfile, j paramj)
  {
    boolean bool;
    if (!br.b(paramString))
    {
      bool = true;
      label10: com.google.a.a.an.a(bool);
      com.google.a.a.an.a(paramPlayerProfile);
      this.k = paramString;
      if (paramj == null)
        break label183;
    }
    g localg2;
    Skin localSkin;
    while (true)
    {
      if (this.c != null)
      {
        this.c.a(paramj);
        this.c.a(t.c(paramPlayerProfile.g()));
        this.c.a(paramPlayerProfile.a());
      }
      g localg1 = this.d;
      String str1 = paramString;
      if (a.q())
        str1 = "";
      localg1.setText(str1);
      localg2 = this.d;
      localSkin = this.b;
      ai localai = paramPlayerProfile.a();
      switch (am.a[localai.ordinal()])
      {
      default:
        throw new IllegalArgumentException(localai + " is unsupported");
        bool = false;
        break label10;
        label183: paramj = j.a(paramPlayerProfile.b());
      case 1:
      case 2:
      case 3:
      }
    }
    String str2 = "profiles-player-header-nickname-aliens";
    while (true)
    {
      localg2.setStyle((Label.LabelStyle)localSkin.get(str2, Label.LabelStyle.class));
      this.d.getPrefWidth();
      this.d.getWidth();
      this.d.getMinWidth();
      Label localLabel1 = this.e;
      Locale localLocale1 = Locale.US;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Long.valueOf(paramPlayerProfile.f());
      arrayOfObject1[1] = "AP";
      localLabel1.setText(String.format(localLocale1, "%,d %s", arrayOfObject1));
      int m = paramPlayerProfile.g();
      int n = t.c(m);
      Label localLabel2 = this.h;
      Locale localLocale2 = Locale.US;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(n);
      localLabel2.setText(String.format(localLocale2, "%,d", arrayOfObject2));
      if (m >= t.a())
        break;
      Label localLabel3 = this.f;
      Locale localLocale3 = Locale.US;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Long.valueOf(t.b(n + 1));
      arrayOfObject3[1] = "AP to next level";
      localLabel3.setText(String.format(localLocale3, "%,d %s", arrayOfObject3));
      return;
      str2 = "profiles-player-header-nickname-resistance";
      continue;
      str2 = "profiles-player-header-nickname-neutral";
    }
    this.f.setText("");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.al
 * JD-Core Version:    0.6.2
 */