package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.gameentity.f;

final class bq extends ClickListener
{
  bq(bn parambn)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    bj.a(this.a.a, new bk(bj.e(this.a.a).getGuid(), bj.h(this.a.a), bj.i(this.a.a), bn.c(this.a)));
    bj.j(this.a.a).a(new br(this));
    this.a.a.a.K().a(bj.j(this.a.a));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bq
 * JD-Core Version:    0.6.2
 */