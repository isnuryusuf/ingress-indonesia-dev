package com.nianticproject.ingress.common.w;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.b.k;

final class af
  implements k<ShaderProgram>
{
  String a;
  String b;

  af(String paramString)
  {
  }

  public final void a()
  {
    ad.a().a("Loading shader " + this.c);
    String str1 = "shaders/" + this.c + ".glsl.vert";
    String str2 = "shaders/" + this.c + ".glsl.frag";
    this.a = c.a(str1).readString();
    this.b = c.a(str2).readString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.af
 * JD-Core Version:    0.6.2
 */