package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.c;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.az;
import com.nianticproject.ingress.common.w.l;

final class bt extends a
{
  private static final float a = l.a(41.0F);
  private final float b = l.a(2.0F);
  private final float c = l.a(a);
  private final float d = l.a(0.0F);
  private final float e;
  private final float f;
  private final float g;
  private Table h;
  private TextButton i;
  private Rectangle j;

  public bt(float paramFloat)
  {
    this.e = paramFloat;
    this.f = l.a(4.0F);
    this.g = l.a(20.0F);
  }

  public final Rectangle a()
  {
    if (this.j == null)
      this.j = new Rectangle();
    this.j.set(this.h.getX() + this.f, this.h.getY() + 0.55F * this.i.getHeight() + this.h.getHeight() - this.i.getHeight(), this.i.getWidth() + this.g, 0.55F * this.i.getHeight());
    return this.j;
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    this.h = new Table();
    float f1 = paramStage.getWidth();
    float f2 = paramStage.getHeight();
    float f3 = f1 - this.b - this.d;
    float f4 = f2 - this.c - this.e;
    float f5 = this.b;
    float f6 = this.e;
    this.h.setX(f5);
    this.h.setY(f6);
    this.h.setWidth(f3);
    this.h.setHeight(f4);
    Table localTable1 = new Table();
    localTable1.setBackground(new az(new NinePatchDrawable(paramSkin.getPatch("remote-portal-bracket")), 16744494));
    Table localTable2 = new Table();
    this.i = new TextButton("REMOTE PORTAL VIEW", (TextButton.TextButtonStyle)paramSkin.get("remote-portal", TextButton.TextButtonStyle.class));
    this.i.setTouchable(Touchable.disabled);
    localTable2.add(this.i).n().j().k();
    this.h.stack(new Actor[] { localTable1, localTable2 }).n().f();
    return this.h;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bt
 * JD-Core Version:    0.6.2
 */