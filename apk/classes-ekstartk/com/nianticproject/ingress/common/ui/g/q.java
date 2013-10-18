package com.nianticproject.ingress.common.ui.g;

import com.a.a.c;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;

final class q extends Button
{
  private final Table b;
  private boolean c = false;
  private final float d;
  private final float e;
  private boolean f = false;
  private final InputListener g = new r(this);

  public q(m paramm, Skin paramSkin, Table paramTable, Stage paramStage)
  {
    super((Button.ButtonStyle)paramSkin.get("portal-key-chooser-handle", TextButton.TextButtonStyle.class));
    this.b = paramTable;
    Table localTable = new Table();
    localTable.setBackground(paramSkin.getDrawable("portal-key-vert"));
    add(localTable).i();
    this.d = paramStage.getWidth();
    this.e = 0.0F;
    addListener(this.g);
  }

  private void b()
  {
    this.b.setX(MathUtils.clamp(this.b.getX(), this.e, this.d - getWidth()));
  }

  public final boolean a()
  {
    return this.c;
  }

  public final void act(float paramFloat)
  {
    if (this.f)
      return;
    float f1 = this.d - getWidth();
    if ((this.b.getX() < f1) && (!this.c))
      this.b.setX(this.b.getX() + 2000.0F * paramFloat);
    while (true)
    {
      b();
      return;
      if ((this.b.getX() > this.e) && (this.c))
        this.b.setX(this.b.getX() - 2000.0F * paramFloat);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.q
 * JD-Core Version:    0.6.2
 */