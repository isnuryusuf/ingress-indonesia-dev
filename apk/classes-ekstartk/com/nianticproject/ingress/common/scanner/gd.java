package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.ae;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.at;

public final class gd extends at
{
  private final String i;

  gd(ai paramai, Texture paramTexture, String paramString)
  {
    this.b = ((Texture)an.a(paramTexture));
    this.h = ((ai)an.a(paramai));
    this.i = paramString;
  }

  public final ae a()
  {
    return ae.b;
  }

  protected final ShaderProgram d()
  {
    return ag.aA;
  }

  public final String g()
  {
    return this.i;
  }

  protected final boolean j()
  {
    com.nianticproject.ingress.common.j.ag.a();
    boolean bool1 = super.j();
    boolean bool2 = false;
    if (bool1)
    {
      this.a.setUniformi("u_texture", 0);
      bool2 = true;
    }
    return bool2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.gd
 * JD-Core Version:    0.6.2
 */