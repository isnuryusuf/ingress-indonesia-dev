package com.nianticproject.ingress.common.ui.a;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

public final class f extends Action
{
  private final ScrollLabel a;

  public f(ScrollLabel paramScrollLabel)
  {
    this.a = ((ScrollLabel)an.a(paramScrollLabel));
  }

  public final boolean act(float paramFloat)
  {
    return this.a.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.a.f
 * JD-Core Version:    0.6.2
 */