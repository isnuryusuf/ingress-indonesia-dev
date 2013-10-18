package com.nianticproject.ingress.common.missions.a;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.ac;

final class b
  implements ac
{
  private Table b;

  b(a parama)
  {
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.b = new Table(paramSkin);
    this.b.setX(0.0F);
    this.b.setY(0.0F);
    this.b.setWidth(paramStage.getWidth());
    this.b.setHeight(paramStage.getHeight());
    this.b.add(this.a.a(paramSkin, this.b.getWidth())).o().a(e.a(1.0F)).b(e.b(0.15F)).j();
    this.b.row();
    this.b.add(this.a.b(paramSkin, this.b.getWidth())).b(Integer.valueOf(2)).o().a(e.a(1.0F)).b(e.b(0.6F));
    this.b.row();
    this.b.add(this.a.c(paramSkin, this.b.getWidth())).b(Integer.valueOf(2)).o().a(e.a(1.0F)).b(e.b(0.22F)).g(e.b(0.015F)).l();
    paramStage.addActor(this.b);
  }

  public final boolean a(float paramFloat)
  {
    return this.a.r_();
  }

  public final void dispose()
  {
    this.b.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.b
 * JD-Core Version:    0.6.2
 */