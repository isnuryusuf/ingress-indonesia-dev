package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.ac;

public final class am
  implements ac
{
  private an a;
  private Table b;

  public am(an paraman)
  {
    this.a = paraman;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    paramSkin.get("large", Label.LabelStyle.class);
    this.b = new Table();
    this.b.setWidth(Gdx.graphics.getWidth());
    this.b.setHeight(Gdx.graphics.getHeight());
    this.b.defaults().f().o().d(e.a(0.015F));
    this.a.a(this.b, paramSkin);
    this.b.row();
    this.a.a(this.b, paramSkin, paramStage);
    this.b.row();
    this.a.b(this.b, paramSkin);
    this.b.row();
    Table localTable = new Table("act_container");
    localTable.defaults().g(10.0F);
    this.a.b(localTable, paramSkin, paramStage);
    this.b.add(localTable).b(Integer.valueOf(2)).b(e.b(0.12F));
    paramStage.addActor(this.b);
  }

  public final boolean a(float paramFloat)
  {
    return this.a.a();
  }

  public final void dispose()
  {
    this.a.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.am
 * JD-Core Version:    0.6.2
 */