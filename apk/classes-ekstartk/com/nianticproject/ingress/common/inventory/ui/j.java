package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;

public class j
  implements an
{
  private ActionButton a;
  private ActionButton b;
  private Label c;
  private final n d;
  private final i e;

  public j(n paramn, i parami)
  {
    this.d = ((n)com.google.a.a.an.a(paramn));
    this.e = ((i)com.google.a.a.an.a(parami));
  }

  public void a(Table paramTable, Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class);
    paramTable.add(new Label(this.d.a(), localLabelStyle)).o().k();
  }

  public void a(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class);
    com.nianticproject.ingress.gameentity.components.l locall = this.d.c();
    Label.LabelStyle localLabelStyle2 = com.nianticproject.ingress.common.ui.l.a(paramSkin, localLabelStyle1, locall);
    paramTable.add(new Label(locall.a(), localLabelStyle2)).o();
    paramTable.row();
  }

  public boolean a()
  {
    return true;
  }

  public final void b()
  {
  }

  public final void b(Table paramTable, Skin paramSkin)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class);
    Label localLabel = new Label(this.d.b(), localLabelStyle);
    localLabel.setWrap(true);
    localLabel.setAlignment(10);
    paramTable.add(localLabel).b(Integer.valueOf(2)).n().a(Float.valueOf(0.9F), Float.valueOf(0.24F)).l();
  }

  public void b(Table paramTable, Skin paramSkin, Stage paramStage)
  {
    this.a = new ActionButton("DROP", "", paramSkin);
    this.c = new Label("", paramSkin, "large-font", "white");
    paramStage.addActor(this.c);
    this.a.a(new k(this));
    paramTable.add(this.a).m().o().a(e.a(0.25F), e.a(0.12F));
    if (q.f().f())
    {
      this.b = new ActionButton("RECYCLE", "", paramSkin);
      this.b.a(new l(this));
      paramTable.add(this.b).m().a(e.a(0.33F), e.a(0.12F));
      this.e.a(new m(this, "RecycleEnergyGainListener", paramStage));
    }
    if (this.a != null)
      this.d.b(this.a.b());
    if (this.b != null)
      this.d.c(this.b.b());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.j
 * JD-Core Version:    0.6.2
 */