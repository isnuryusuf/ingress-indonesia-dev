package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.ac;

public abstract class at extends al
{
  private static final aa i = new aa(at.class);
  public Texture b;
  public Texture c;
  public Texture d;
  public String e = "u_texture";
  public String f = "u_texture2";
  public String g = "u_texture3";
  public ai h;

  public at()
  {
  }

  public at(String paramString)
  {
    this.e = paramString;
  }

  public at(String paramString1, String paramString2)
  {
    this.e = paramString1;
    this.f = paramString2;
  }

  private boolean a(Texture paramTexture, String paramString, int paramInt)
  {
    if (paramTexture != null);
    try
    {
      this.a.setUniformi(paramString, paramInt);
      paramTexture.bind(paramInt);
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      if (!f())
        i.b(localIllegalArgumentException, "[DRAW FAIL] Missing texture uniform for: " + paramString);
    }
    return false;
  }

  public final void a(int paramInt, Texture paramTexture)
  {
    switch (paramInt)
    {
    default:
      aa localaa = i;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      localaa.c("Texture index out of bounds: %d. May need to support more textures.", arrayOfObject);
      return;
    case 0:
      this.b = paramTexture;
      return;
    case 1:
      this.c = paramTexture;
      return;
    case 2:
    }
    this.d = paramTexture;
  }

  public void dispose()
  {
    super.dispose();
    ac.a(this.b);
    this.b = null;
    ac.a(this.c);
    this.c = null;
    ac.a(this.d);
    this.d = null;
  }

  public final void i()
  {
    this.h.g();
  }

  protected boolean j()
  {
    if (!(true & a(this.d, this.g, 2) & a(this.c, this.f, 1) & a(this.b, this.e, 0)))
      return false;
    this.h.b(this.a);
    return true;
  }

  protected void k()
  {
    this.h.c(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.at
 * JD-Core Version:    0.6.2
 */