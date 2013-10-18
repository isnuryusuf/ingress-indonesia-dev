package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.scanner.ag;

final class b extends f
{
  protected final ShaderProgram d()
  {
    return ag.aU;
  }

  protected final boolean j()
  {
    boolean bool1 = super.j();
    boolean bool2 = false;
    if (bool1)
    {
      Texture localTexture = ag.aV;
      this.a.setUniformi("u_texture", 0);
      localTexture.bind(0);
      bool2 = true;
    }
    return bool2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b
 * JD-Core Version:    0.6.2
 */