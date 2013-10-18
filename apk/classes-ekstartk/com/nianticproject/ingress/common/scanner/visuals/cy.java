package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.r;
import java.util.Comparator;

public final class cy extends r
{
  private static final Comparator<o> g = new cz();
  private final FloatArray e = new FloatArray();
  private final FloatArray f = new FloatArray();

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    this.a.sort(g);
    this.e.clear();
    this.f.clear();
    super.a(paramMatrix4, paramf, paramn);
  }

  public final void a(cv paramcv)
  {
    this.a.add(paramcv);
    paramcv.a(this);
  }

  public final void a(da paramda, float paramFloat)
  {
    if ((paramda == da.a) || (paramda == da.c))
      this.e.add(paramFloat);
    if ((paramda == da.b) || (paramda == da.c))
      this.f.add(paramFloat);
  }

  public final FloatArray b()
  {
    return this.e;
  }

  public final void b(o paramo)
  {
    throw new UnsupportedOperationException();
  }

  public final FloatArray c()
  {
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cy
 * JD-Core Version:    0.6.2
 */