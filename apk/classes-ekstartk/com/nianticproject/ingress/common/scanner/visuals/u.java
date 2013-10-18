package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.shared.aj;
import java.util.Random;

public final class u
  implements o
{
  private final float a;
  private final h b;
  private final float c;
  private final float d;
  private final float e;
  private final Matrix4 f = new Matrix4();
  private final Color g;
  private float h;
  private v[] i;

  public u(h paramh, ai paramai, float paramFloat1, int paramInt, float paramFloat2, float paramFloat3, Color paramColor)
  {
    an.a(paramai.b(), "Mesh must have face indices");
    this.a = paramFloat1;
    this.b = paramh;
    this.c = paramFloat2;
    this.d = paramFloat3;
    this.e = 180.0F;
    this.h = 0.0F;
    this.g = new Color(paramColor);
    Random localRandom = new Random(System.currentTimeMillis());
    short[] arrayOfShort = paramai.b();
    int j = arrayOfShort.length / 3;
    this.i = new v[Math.min(j, paramInt)];
    for (int k = 0; k < this.i.length; k++)
    {
      int m = localRandom.nextInt(j);
      v localv = new v(this, (byte)0);
      localv.a = new Vector3[3];
      localv.b = new Vector3[3];
      localv.e = new Vector3();
      localv.c = new Vector3();
      for (int n = 0; n < 3; n++)
      {
        int i1 = arrayOfShort[(n + m * 3)];
        localv.b[n] = new Vector3();
        localv.a[n] = paramai.a(i1);
        localv.c.add(localv.a[n]);
      }
      localv.c.mul(0.3333333F);
      localv.e = new Vector3(localv.a[0]).sub(localv.a[1]).nor();
      localv.d = new Vector3(localv.a[2]).sub(localv.a[0]).crs(localv.e).nor();
      this.i[k] = localv;
    }
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("ExplodingMeshVisuals.draw");
      this.g.a = (Math.min(0.75F, this.a - this.h) / 0.75F);
      float f1 = this.h / this.a;
      float f2 = this.c;
      float f3 = this.d;
      float f4 = f2 + (float)Math.sqrt(f1) * (f3 - f2);
      float f5 = this.e * this.h;
      for (v localv : this.i)
      {
        this.f.set(paramMatrix4).translate(f4 * localv.d.x, f4 * localv.d.y, f4 * localv.d.z).rotate(localv.e.x, localv.e.y, localv.e.z, f5).translate(-localv.c.x, -localv.c.y, -localv.c.z);
        for (int m = 0; m < 3; m++)
          localv.b[m].set(localv.a[m]).mul(this.f);
        this.b.a(localv.b[0], localv.b[1], localv.b[2], this.g);
      }
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    this.h = (paramFloat + this.h);
    return this.h <= this.a;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.u
 * JD-Core Version:    0.6.2
 */