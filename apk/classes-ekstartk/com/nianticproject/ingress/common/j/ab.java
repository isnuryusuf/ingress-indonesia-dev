package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.google.a.a.an;

public abstract class ab extends at
{
  public final void a(ShaderProgram paramShaderProgram)
  {
    if (this.a == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Data-based shaders can only be set once.");
      this.a = paramShaderProgram;
      return;
    }
  }

  protected final ShaderProgram d()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ab
 * JD-Core Version:    0.6.2
 */