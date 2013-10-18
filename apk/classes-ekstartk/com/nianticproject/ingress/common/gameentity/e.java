package com.nianticproject.ingress.common.gameentity;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;

public final class e
  implements m
{
  private final ai a;
  private final Texture b;
  private final Color c;
  private final Color d;
  private final Matrix4 e = new Matrix4();
  private final Matrix4 f = new Matrix4();
  private final Vector3 g = new Vector3();

  public e(ai paramai, Texture paramTexture, Color paramColor)
  {
    this.a = paramai;
    this.b = paramTexture;
    this.c = null;
    this.d = paramColor;
  }

  public e(ai paramai, Texture paramTexture, Color paramColor1, Color paramColor2)
  {
    this.a = paramai;
    this.b = paramTexture;
    this.c = paramColor1;
    this.d = paramColor2;
  }

  public final void a(Matrix4 paramMatrix4, f paramf)
  {
    this.e.set(paramf.e()).mul(paramMatrix4);
    if (this.c != null)
    {
      this.g.set(paramf.h()).mul(-0.025F);
      this.f.set(paramf.e()).translate(this.g).mul(paramMatrix4);
    }
  }

  public final void a(af paramaf)
  {
    this.a.a(this.e, this.b, this.d);
    if (this.c != null)
      this.a.a(this.f, this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.gameentity.e
 * JD-Core Version:    0.6.2
 */