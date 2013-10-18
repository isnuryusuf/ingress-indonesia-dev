package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.math.Matrix4;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.am;
import com.nianticproject.ingress.common.j.an;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;

public abstract class e
  implements m, o
{
  private static final float[] a = { -1.0F, 1.0F, -1.0F, -1.0F, 1.0F, -1.0F, 1.0F, 1.0F };
  private static final short[] b = { 0, 1, 2, 0, 2, 3 };
  private static final an c = new an(arrayOfFloat, arrayOfVertexAttribute);
  private static final am d = new am(b);
  private ad e;

  static
  {
    float[] arrayOfFloat = a;
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[1];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
  }

  public e(ad paramad)
  {
    this.e = paramad;
  }

  public void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    paramn.a(this.e, this);
  }

  public void a(af paramaf)
  {
    Gdx.gl20.glDrawElements(4, b.length, 5123, 0);
  }

  public final boolean a()
  {
    return false;
  }

  public boolean a(float paramFloat)
  {
    return true;
  }

  public void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.e
 * JD-Core Version:    0.6.2
 */