package com.nianticproject.ingress.common.missions.a;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.c;
import com.nianticproject.ingress.common.ui.widget.z;

final class h extends a
{
  ActionButton a;
  private boolean b;

  final void a()
  {
    this.a.b().a(true, "CHOOSE", "");
  }

  final void a(z paramz)
  {
    this.a.a(paramz);
  }

  final void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public final boolean a(float paramFloat)
  {
    if (this.b != this.a.isVisible())
      this.a.setVisible(this.b);
    return super.a(paramFloat);
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    this.a = new ActionButton("CHOOSE", "", paramSkin);
    this.a.b().a("Tag Portal\nlocation");
    this.a.setWidth(0.25F * paramStage.getWidth());
    this.a.setHeight(0.1F * paramStage.getHeight());
    this.a.setX(0.05F * paramStage.getWidth());
    this.a.setY(0.7F * paramStage.getHeight());
    this.b = false;
    this.a.setVisible(false);
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.h
 * JD-Core Version:    0.6.2
 */