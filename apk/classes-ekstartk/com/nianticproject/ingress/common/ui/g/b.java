package com.nianticproject.ingress.common.ui.g;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;

final class b
  implements a
{
  public b(h paramh, Skin paramSkin)
  {
    ProgressIndicator localProgressIndicator = new ProgressIndicator(paramSkin);
    localProgressIndicator.a(true);
    paramh.add(localProgressIndicator).o().i();
    paramh.row();
    paramh.add(new Label("Loading...", paramSkin));
  }

  public final String a()
  {
    return "";
  }

  public final void a(int paramInt)
  {
  }

  public final String b()
  {
    return "";
  }

  public final void c()
  {
  }

  public final void d()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.b
 * JD-Core Version:    0.6.2
 */