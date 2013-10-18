package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.j.a;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.g;
import com.nianticproject.ingress.common.scanner.h;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.common.w.z;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.List;

public final class ck
  implements o, g
{
  private static ShaderProgram a;
  private static ai b;
  private final Matrix4 c = new Matrix4();
  private final k d;
  private final List<h> e = eq.a();
  private float f = 0.0F;

  public ck(k paramk)
  {
    this.d = paramk;
  }

  public static void b()
  {
    ad.a("CreatePulseShader", "uniform mat4 u_modelViewProject;\nattribute vec2 a_position;\nvoid main() { \n  gl_Position = u_modelViewProject * vec4(a_position.x, 0, a_position.y, 1.0);\n}", "#ifdef GL_ES\nprecision mediump float;\n#endif\nuniform vec4 u_color;\nvoid main() {\n  gl_FragColor = u_color;\n}", new cl());
    float[] arrayOfFloat = new float[360];
    float f1 = 0.0F;
    for (int i = 0; i < 360; i += 2)
    {
      arrayOfFloat[(i + 0)] = MathUtils.cos(f1);
      arrayOfFloat[(i + 1)] = MathUtils.sin(f1);
      f1 += 0.03490659F;
    }
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[1];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
    c.a("CreatePulseMesh", a.a(arrayOfFloat, null, null, arrayOfVertexAttribute), new cm());
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    float f1 = z.a(paramMatrix4);
    float f2 = 300.0F * this.f / f1;
    float f3 = 1.0F - Math.max(0.0F, (300.0F * this.f - 240.0F) / 60.0F);
    Color localColor = ea.a(this.d.h());
    try
    {
      aj.a("PulseVisuals.draw");
      Gdx.gl20.glEnable(3042);
      this.c.set(paramf.e()).mul(paramMatrix4).scale(f2, 1.0F, f2).translate(0.0F, 0.5F, 0.0F);
      a.begin();
      a.setUniformMatrix("u_modelViewProject", this.c);
      ad.a(a, "u_color", localColor, f3);
      b.a(a);
      b.b(2);
      b.c(a);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(h paramh)
  {
    this.e.add(paramh);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.f += 0.15F * paramFloat;
    if (this.f > 1.0F)
    {
      this.f = 0.0F;
      Iterator localIterator = this.e.iterator();
      while (localIterator.hasNext())
        ((h)localIterator.next()).a();
    }
    return true;
  }

  public final void dispose()
  {
    ac.a(a);
    ac.a(b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.ck
 * JD-Core Version:    0.6.2
 */