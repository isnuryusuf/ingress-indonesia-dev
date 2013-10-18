package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.ui.elements.Compass.CompassStyle;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.common.w.l;

public final class af extends a
{
  private final as a;
  private final String b;
  private ProgressIndicator c;
  private ScrollLabel d;
  private Table e;

  public af(as paramas)
  {
    this(paramas, "default");
  }

  public af(as paramas, String paramString)
  {
    this.a = paramas;
    this.b = paramString;
  }

  public final float a()
  {
    return this.e.getPrefHeight();
  }

  public final void a(String paramString)
  {
    a(paramString, false);
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    this.d.setText(paramString);
    this.c.a(paramBoolean);
  }

  public final boolean a(float paramFloat)
  {
    return (super.a(paramFloat)) && (this.a != null);
  }

  public final float b()
  {
    if (this.e != null)
      return this.e.getY() + this.e.getHeight();
    return -1.0F;
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    Compass.CompassStyle localCompassStyle = (Compass.CompassStyle)paramSkin.get(Compass.CompassStyle.class);
    float f1 = l.a(localCompassStyle.heightInDips);
    float f2 = paramStage.getHeight() - paramStage.getHeight() * localCompassStyle.yRelativeToScreenHeight - f1;
    float f3 = paramStage.getHeight() - f2;
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get(this.b, Label.LabelStyle.class);
    e locale = e.b(0.15F);
    this.d = new ScrollLabel("", localLabelStyle);
    this.c = new ProgressIndicator(paramSkin);
    Table localTable = new Table();
    localTable.add(this.c).i();
    localTable.add(this.d).n().f().k().f(locale);
    localTable.pack();
    localTable.setBackground(paramSkin.getDrawable("status-gradient-vert"));
    this.e = localTable;
    this.e.setWidth(0.8F * paramStage.getWidth());
    this.e.setHeight(this.e.getPrefHeight());
    float f4 = f3 - this.e.getHeight();
    this.e.setX(0.0F);
    this.e.setY(f4);
    return this.e;
  }

  public final void b(float paramFloat)
  {
    this.e.setY(paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.af
 * JD-Core Version:    0.6.2
 */