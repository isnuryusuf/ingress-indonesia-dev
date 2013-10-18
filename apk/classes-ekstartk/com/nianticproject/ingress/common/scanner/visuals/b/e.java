package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLU;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.am;
import com.nianticproject.ingress.common.j.an;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.w.ao;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;

public final class e
  implements Disposable, m, o
{
  static final float[] a = { 0.0F, 0.0F, 1.0F, 1.0F };
  static final float[] b = { 1.0F, 0.0F, 1.0F, 0.0F };
  private static final com.nianticproject.ingress.common.t.b c = com.nianticproject.ingress.common.t.c.a("Disposable Particle Render");
  private static final ad d = new f();
  private final Matrix4 e = new Matrix4();
  private final Vector3 f = new Vector3();
  private final an g;
  private final am h;
  private final b i;
  private final int j;
  private final boolean k;
  private final boolean l;
  private final ShaderProgram m;

  public e(b paramb)
  {
    this.i = paramb;
    c localc = paramb.b();
    this.j = localc.h();
    this.k = true;
    this.l = localc.i();
    this.m = localc.g();
    this.g = localc.j();
    this.h = localc.k();
    ai localai = (ai)ag.au.get(0);
    localai.e();
    localai.d();
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    this.e.set(paramf.e());
    ao.a(this.e, paramMatrix4);
    this.f.set(paramf.k());
    if (paramn != null)
    {
      paramn.a(d, this);
      return;
    }
    a(d);
  }

  public final void a(af paramaf)
  {
    GL20 localGL20;
    while (true)
    {
      try
      {
        aj.a("ParticleVisuals.draw");
        c.b();
        localGL20 = Gdx.gl20;
        localGL20.glDisable(2884);
        localGL20.glEnable(3042);
        if (this.l)
        {
          localGL20.glEnable(2929);
          if (!this.k)
            break label249;
          localGL20.glBlendFunc(770, 1);
          localGL20.glDepthMask(false);
          ag.aX.bind(0);
          this.m.begin();
          this.h.a();
          this.g.a(this.m);
          this.m.setUniformMatrix("u_modelViewProject", this.e);
          this.m.setUniformf("u_cameraPos", this.f);
          this.i.a(this.f);
          int n = localGL20.glGetError();
          if (n == 0)
            break;
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = this.i.getClass().getName();
          arrayOfObject1[1] = Integer.valueOf(n);
          arrayOfObject1[2] = Gdx.glu.gluErrorString(n);
          throw new RuntimeException(String.format("Effect class: %s: Unexpected GL Error occured before glDrawElements (%d): %s", arrayOfObject1));
        }
      }
      finally
      {
        aj.b();
        com.nianticproject.ingress.common.t.b.c();
      }
      localGL20.glDisable(2929);
      continue;
      label249: localGL20.glBlendFunc(770, 771);
    }
    Gdx.gl20.glDrawElements(4, 6 * this.j, 5123, 0);
    int i1 = localGL20.glGetError();
    if (i1 != 0)
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = this.i.getClass().getName();
      arrayOfObject2[1] = Integer.valueOf(i1);
      arrayOfObject2[2] = Gdx.glu.gluErrorString(i1);
      throw new RuntimeException(String.format("Effect class: %s: GL Error during glDrawElements (%d): %s", arrayOfObject2));
    }
    this.g.b(this.m);
    this.m.end();
    localGL20.glBlendFunc(770, 771);
    localGL20.glEnable(2884);
    localGL20.glDisable(3042);
    localGL20.glEnable(2929);
    localGL20.glDepthMask(true);
    aj.b();
    com.nianticproject.ingress.common.t.b.c();
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    return this.i.a(paramFloat);
  }

  public final void dispose()
  {
    this.i.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.e
 * JD-Core Version:    0.6.2
 */