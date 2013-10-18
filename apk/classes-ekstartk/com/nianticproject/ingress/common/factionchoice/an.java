package com.nianticproject.ingress.common.factionchoice;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;

final class an extends ClickListener
{
  an(al paramal, ProgressIndicator paramProgressIndicator)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    this.a.a(true);
    switch (ap.a[this.b.a.ordinal()])
    {
    default:
      throw new IllegalStateException("Can't choose " + this.b.a);
    case 1:
      aj.c(this.b.b).b();
      return;
    case 2:
    }
    aj.c(this.b.b).a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.an
 * JD-Core Version:    0.6.2
 */