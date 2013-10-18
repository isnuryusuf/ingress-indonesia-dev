package com.nianticproject.ingress.common.missions.a;

import com.a.a.c;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator.ProgressIndicatorStyle;
import com.nianticproject.ingress.common.ui.widget.z;

public final class e extends a
{
  private final TextureRegion d;
  private final TextureRegion e;
  private final z f;
  private final bn g;

  protected e(ad paramad, TextureRegion paramTextureRegion1, TextureRegion paramTextureRegion2, z paramz, t paramt)
  {
    super(paramad, paramt);
    this.d = paramTextureRegion1;
    this.e = paramTextureRegion2;
    this.f = paramz;
    this.g = bs.aG.a();
  }

  protected final Table a(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, "ADA", "unknown", paramFloat, false);
  }

  public final void a()
  {
    o.a().a(this.g);
  }

  protected final Table b(Skin paramSkin, float paramFloat)
  {
    Table localTable1 = new Table();
    localTable1.setX(0.0F);
    localTable1.setWidth(paramFloat);
    Table localTable2 = new Table();
    Label localLabel = new Label("Incoming Message", (Label.LabelStyle)paramSkin.get("message-label", Label.LabelStyle.class));
    localLabel.addAction(Actions.forever(Actions.sequence(Actions.alpha(0.3F, 2.0F), Actions.alpha(1.0F, 2.0F))));
    Table localTable3 = new Table();
    localTable3.add(localLabel);
    localTable3.setBackground(paramSkin.getDrawable("message-window"));
    localTable2.add(localTable3).n().a(com.a.a.e.a(0.75F)).b(com.a.a.e.b(0.5F)).a(Integer.valueOf(20));
    localTable1.add(localTable2).b(Integer.valueOf(2)).b().i().a(com.a.a.e.a(0.99F)).b(com.a.a.e.b(0.3F));
    localTable1.row();
    Table localTable4 = new Table();
    localTable4.setBackground(paramSkin.getDrawable("message-window"));
    ProgressIndicator localProgressIndicator = new ProgressIndicator(new ProgressIndicator.ProgressIndicatorStyle(this.d, -18.0F, this.e, 20.0F));
    localProgressIndicator.a(true);
    localTable4.add(localProgressIndicator).n().i();
    localTable1.add(localTable4).b(Integer.valueOf(2)).c().i().a(com.a.a.e.a(0.99F)).b(com.a.a.e.b(0.69F));
    localTable1.row();
    return localTable1;
  }

  public final void b()
  {
    this.g.n();
  }

  protected final Table c(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, paramFloat, this.f, null, "Accept", "", false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.e
 * JD-Core Version:    0.6.2
 */