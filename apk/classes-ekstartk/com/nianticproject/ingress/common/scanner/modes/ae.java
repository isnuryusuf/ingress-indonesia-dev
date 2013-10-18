package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ProgressBar;
import com.nianticproject.ingress.common.ui.widget.an;

public final class ae extends a
{
  private static final e a = e.b(0.02F);
  private final as b;
  private Label c;
  private Label d;
  private ProgressBar e;
  private Table f;

  public ae(as paramas)
  {
    this.b = paramas;
  }

  public final Table a()
  {
    return this.f;
  }

  public final void a(String paramString)
  {
    this.c.setText(paramString);
  }

  public final boolean a(float paramFloat)
  {
    return (super.a(paramFloat)) && (this.b != null);
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    float f1 = paramStage.getHeight();
    float f2 = 0.3F * f1;
    float f3 = 0.1F * f1;
    Rectangle localRectangle = (Rectangle)paramSkin.get("compass", Rectangle.class);
    float f4 = paramStage.getHeight() - f2;
    Table localTable = c(paramSkin, paramStage);
    localTable.setWidth(paramStage.getWidth() - localRectangle.getWidth());
    localTable.setHeight(f3);
    localTable.setX(localRectangle.getWidth());
    localTable.setY(f4);
    return localTable;
  }

  public final an b()
  {
    return this.e.a();
  }

  public final void b(String paramString)
  {
    this.d.setText(paramString);
  }

  public final Table c(Skin paramSkin, Stage paramStage)
  {
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("small", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class);
    float f1 = 0.02F * paramStage.getHeight();
    this.c = new Label("", localLabelStyle1);
    this.d = new Label("", localLabelStyle2);
    this.e = new ProgressBar(paramSkin);
    this.f = new Table();
    this.f.defaults();
    this.f.add(this.c).m();
    this.f.row();
    this.f.add(this.e).o().g().i().c(f1);
    this.f.row();
    this.f.add(this.d).e(e.b(-0.08F));
    this.f.setBackground(paramSkin.getDrawable("transparent-no-outline"));
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.ae
 * JD-Core Version:    0.6.2
 */