package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.shared.ai;

final class an extends ClickListener
{
  private an(al paramal)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    j localj = al.a(this.a).a();
    int i = al.a(this.a).b();
    ai localai = al.a(this.a).d();
    p.a().n().b(new l(al.b(this.a), localj, localai, i, al.c(this.a)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.an
 * JD-Core Version:    0.6.2
 */