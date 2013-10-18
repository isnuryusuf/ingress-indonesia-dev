package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.itemupgrade.a;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.common.ui.widget.c;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import java.util.Set;

final class bd extends aa
{
  public bd(ba paramba)
  {
    super("RECHARGE ALL");
  }

  private void a(Set<Resonator> paramSet, k paramk)
  {
    if ((this.c != null) && (!ba.h(this.a)))
    {
      ba.a(this.a, a.a(this.c.b(), ba.b(this.a).getEntity(), paramSet, paramk, ba.e(this.a)));
      String str = "RECHARGE";
      if (paramSet.size() > 1)
        str = "RECHARGE ALL";
      this.c.b().a(this.c.b().a(), str, "");
    }
  }

  protected final void a()
  {
    if (!this.a.a)
      return;
    this.c.b(false);
    ba.g(this.a);
  }

  protected final void a(Skin paramSkin, Stage paramStage, Table paramTable)
  {
    ba.a(this.a, paramSkin, paramStage, paramTable);
    ba.a(this.a, paramSkin, paramTable);
    ba.b(this.a, paramSkin, paramStage, paramTable);
    super.a(paramSkin, paramStage, paramTable);
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    Actor localActor = super.b(paramSkin, paramStage);
    ba.b(this.a).getEntity();
    Set localSet = ba.c(this.a);
    k localk = ba.d(this.a);
    ba.e(this.a);
    a(localSet, localk);
    this.c.addListener(new be(this));
    return localActor;
  }

  protected final void b()
  {
    this.a.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bd
 * JD-Core Version:    0.6.2
 */