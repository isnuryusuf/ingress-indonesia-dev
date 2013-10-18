package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.FloatArray;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.shared.aj;

public final class bs
  implements o
{
  private final FloatArray a;
  private final ai b = ag.L;
  private final float c;
  private final float d;
  private final float e;
  private final Matrix4 f = new Matrix4();
  private float g;
  private float h;
  private boolean i;

  public bs(float paramFloat)
  {
    this.c = paramFloat;
    this.d = 1.0F;
    this.e = 8.0F;
    this.h = 0.0F;
    this.a = new FloatArray(false, 6);
    this.g = 0.2F;
    this.i = true;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("PlayerPowerupVisuals.draw");
      Matrix4 localMatrix4 = paramf.e();
      Gdx.gl.glEnable(3042);
      ai.k();
      this.b.a(paramMatrix4, localMatrix4);
      for (int j = 0; j < this.a.size; j++)
      {
        float f1 = this.a.get(j) / 1.0F;
        float f2 = this.e;
        float f3 = this.d;
        float f4 = f2 + f1 * (f1 * f1) * (f3 - f2);
        float f5 = this.e;
        float f6 = this.d;
        float f7 = f5 + (float)Math.sqrt(f1) * (f6 - f5);
        this.f.set(paramMatrix4).scale(f7, f4, f7);
        float f8 = 1.0F + Math.min(f1 * f1 - 0.75F, 0.0F) / 0.75F;
        float f9 = Math.max(0.0F, (0.15F + (f1 - 1.0F)) / 0.15F);
        ai.a(ea.t, Color.WHITE, f9, f8);
        ai.b(this.f, localMatrix4);
        this.b.i();
      }
      this.b.j();
      Gdx.gl.glDisable(3042);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.h = (paramFloat + this.h);
    this.g = (paramFloat + this.g);
    int j = 0;
    if (j < this.a.size)
    {
      float f1 = paramFloat + this.a.get(j);
      if (f1 > 1.0F)
      {
        this.a.removeIndex(j);
        j--;
      }
      while (true)
      {
        j++;
        break;
        this.a.set(j, f1);
      }
    }
    if (((this.i) || (this.h < this.c)) && (this.g >= 0.2F))
    {
      this.a.add(0.0F);
      this.g = 0.0F;
    }
    boolean bool1 = c();
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    return bool2;
  }

  public final void b()
  {
    this.i = false;
  }

  public final boolean c()
  {
    return (!this.i) && (this.a.size <= 0) && (this.h >= this.c);
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bs
 * JD-Core Version:    0.6.2
 */