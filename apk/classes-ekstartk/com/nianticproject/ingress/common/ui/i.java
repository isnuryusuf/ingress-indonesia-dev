package com.nianticproject.ingress.common.ui;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.f;

final class i
  implements ac
{
  private Table b;

  private i(h paramh)
  {
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.b = new Table();
    this.b.setWidth(paramStage.getWidth());
    this.b.setHeight(paramStage.getHeight());
    this.b.top();
    h.a(this.a, new aa(paramSkin, (int)paramStage.getWidth(), h.a(this.a), h.b(this.a)));
    this.b.add(h.c(this.a));
    this.b.row();
    Table localTable = new Table();
    localTable.top().left();
    this.a.a(this.b, paramSkin);
    localTable.add(new Label(h.e(this.a), paramSkin, "default-blue")).e(e.a(h.d(this.a))).f(e.a(0.06F)).o().k();
    localTable.row();
    f localf = new f(h.f(this.a), paramSkin);
    localf.addListener(new j(this));
    e locale1 = e.a(h.h(this.a));
    e locale2 = e.a(0.12F);
    localTable.add(localf).o().i().h(h.d(this.a)).a(locale1, locale2);
    this.b.add(localTable).n().f();
    paramStage.addActor(this.b);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.b.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.i
 * JD-Core Version:    0.6.2
 */