package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.w.ao;
import com.nianticproject.ingress.shared.aj;
import java.util.Random;

public final class w
  implements o
{
  private final float a;
  private final h b;
  private final Color c;
  private float d;
  private x[] e;

  public w(h paramh, float paramFloat1, int paramInt, float paramFloat2, float paramFloat3, Color paramColor)
  {
    this.a = paramFloat1;
    this.b = paramh;
    this.d = 0.0F;
    this.c = new Color(paramColor);
    Random localRandom = new Random(System.currentTimeMillis());
    this.e = new x[paramInt];
    for (int i = 0; i < this.e.length; i++)
    {
      x localx = new x(this, (byte)0);
      localx.a = ao.a(localRandom.nextFloat(), localRandom.nextFloat());
      localx.b = (0.1F + 0.1F * (paramFloat3 * (2.0F * localRandom.nextFloat() - 1.0F)));
      localx.c = (0.25F + 0.25F * (paramFloat3 * (2.0F * localRandom.nextFloat() - 1.0F)));
      localx.d = (paramFloat2 + paramFloat2 * (paramFloat3 * (2.0F * localRandom.nextFloat() - 1.0F)));
      this.e[i] = localx;
    }
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("ExplodingSparksVisuals.draw");
      float f1 = Math.min(1.0F, this.d / 0.25F);
      float f2 = Math.min(0.75F, this.a - this.d) / 0.75F;
      float f3 = (float)Math.sqrt(this.d / this.a);
      this.c.a = Math.min(f1, f2);
      for (x localx : this.e)
      {
        float f4 = localx.c;
        float f5 = f4 + f3 * (localx.d - f4);
        float f6 = f5 - localx.b;
        localx.e.set(localx.a).scale(f6, f6, f6).mul(paramMatrix4);
        localx.f.set(localx.a).scale(f5, f5, f5).mul(paramMatrix4);
        this.b.a(localx.e, localx.f, this.c);
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
    this.d = (paramFloat + this.d);
    return this.d <= this.a;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.w
 * JD-Core Version:    0.6.2
 */