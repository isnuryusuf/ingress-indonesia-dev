package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.j.as;

final class bg extends aa
{
  private as e;

  public bg(bf parambf, as paramas)
  {
    super("DEPLOY");
    this.e = paramas;
  }

  protected final void a()
  {
    if (bf.b(this.a) != null)
      bf.b(this.a).d();
  }

  protected final void a(Skin paramSkin, Stage paramStage, Table paramTable)
  {
    bf.a(this.a, new com.nianticproject.ingress.common.itemupgrade.c(bf.a(this.a), this.c, this.d, this.e, this.a));
    paramTable.row();
    paramTable.add(bf.b(this.a).a(paramSkin, paramStage)).n().f();
    super.a(paramSkin, paramStage, paramTable);
    if (bf.c(this.a) != null)
      this.a.b(bf.c(this.a));
  }

  protected final void b()
  {
    this.a.c();
  }

  public final void e()
  {
    super.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bg
 * JD-Core Version:    0.6.2
 */