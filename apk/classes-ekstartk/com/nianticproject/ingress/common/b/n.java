package com.nianticproject.ingress.common.b;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.ui.widget.k;

public final class n
  implements k
{
  private Color a = new Color();

  public n(Color paramColor)
  {
    a(paramColor);
  }

  public final void a(Color paramColor)
  {
    this.a.set(paramColor);
  }

  public final void a(ShaderProgram paramShaderProgram)
  {
    paramShaderProgram.setUniformf("u_replaceColor", this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.b.n
 * JD-Core Version:    0.6.2
 */