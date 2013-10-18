package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;

final class bn extends a
{
  private final float b;
  private ActionButton c;
  private Table d;

  public bn(bj parambj, float paramFloat)
  {
    this.b = paramFloat;
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    this.d = new Table();
    this.c = new ActionButton("RECHARGE", "", (ActionButton.ActionButtonStyle)paramSkin.get("primary-action", ActionButton.ActionButtonStyle.class));
    this.c.a(new bo(this));
    this.d.row().o().g();
    this.d.add(this.c).a(e.a(0.3F), e.a(0.12F));
    if ((bj.e(this.a) != null) && (bj.g(this.a)))
    {
      f localf1 = new f("DROP", paramSkin);
      localf1.addListener(new bp(this));
      this.d.add(localf1).a(e.a(0.25F), e.a(0.12F));
      if (q.f().f())
      {
        f localf2 = new f("RECYCLE", paramSkin);
        localf2.addListener(new bq(this));
        this.d.add(localf2).a(e.a(0.3F), e.a(0.12F));
      }
      this.d.row().i();
    }
    TextButton localTextButton = new TextButton("OK", paramSkin);
    localTextButton.addListener(new bs(this));
    this.d.add(localTextButton).a(e.a(0.35F), e.a(0.11F)).i().b(Integer.valueOf(3)).e(e.a(0.02F));
    this.d.row();
    this.d.padBottom(e.b(0.15F));
    this.d.setX(0.0F);
    this.d.setY(this.b);
    this.d.setWidth(paramStage.getWidth());
    this.d.setHeight(this.d.getPrefHeight());
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bn
 * JD-Core Version:    0.6.2
 */