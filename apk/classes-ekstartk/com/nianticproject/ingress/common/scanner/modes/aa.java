package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.e;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.common.ui.widget.z;
import com.nianticproject.ingress.common.w.l;

public abstract class aa extends a
{
  private String a;
  protected Button b;
  protected ActionButton c;
  protected com.nianticproject.ingress.common.ui.a.c d;

  public aa(String paramString)
  {
    this.a = paramString;
  }

  protected abstract void a();

  protected void a(Skin paramSkin, Stage paramStage, Table paramTable)
  {
    Table localTable = new Table();
    float f = 0.025F * paramStage.getHeight();
    localTable.row().h(f);
    localTable.add(this.c).c(e.a(0.36F)).k(f).p().h();
    localTable.add(this.b).c(e.a(0.36F)).i(f);
    paramTable.row();
    paramTable.add(localTable).o().g();
  }

  protected Actor b(Skin paramSkin, Stage paramStage)
  {
    Table localTable = new Table();
    localTable.bottom();
    this.c = new ActionButton(this.a, "", (ActionButton.ActionButtonStyle)paramSkin.get("primary-action", ActionButton.ActionButtonStyle.class));
    this.c.a(new ab(this));
    this.d = com.nianticproject.ingress.common.ui.a.c.a(this.c);
    this.b = new f("DONE", paramSkin);
    this.b.addListener(new ac(this));
    a(paramSkin, paramStage, localTable);
    float f = l.a(60.0F);
    localTable.setX(0.0F);
    localTable.setY(f);
    localTable.setWidth(paramStage.getWidth());
    localTable.setHeight(paramStage.getHeight() - ((TextureRegion)paramSkin.get("ap-progress-meter-neutral", TextureRegion.class)).getRegionHeight() - f);
    return localTable;
  }

  protected abstract void b();

  public final void d()
  {
    z localz = this.c.d();
    if (localz != null)
      localz.a(0.0F, 0.0F);
  }

  public void e()
  {
    this.c.b().a("");
    super.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.aa
 * JD-Core Version:    0.6.2
 */