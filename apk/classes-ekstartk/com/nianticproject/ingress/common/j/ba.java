package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Filter;
import com.badlogic.gdx.math.MathUtils;
import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.f;
import java.util.concurrent.atomic.AtomicBoolean;

final class ba extends m<ay>
{
  private final AtomicBoolean b = new AtomicBoolean(false);
  private boolean c = true;

  ba(az paramaz)
  {
  }

  private f a(ay paramay)
  {
    if (this.b.get())
    {
      b(paramay);
      return null;
    }
    return new bb(this, "UrlImageCache:LoadImageTask", paramay);
  }

  private void b(ay paramay)
  {
    synchronized (az.g(this.a))
    {
      if (az.h(this.a) != null)
        az.i(this.a);
      if (paramay != null)
        paramay.consumePixmap().dispose();
      return;
    }
  }

  private ay j()
  {
    boolean bool = true;
    if (this.b.get())
    {
      b(null);
      return null;
    }
    Pixmap localPixmap1 = av.a(av.a(this.a.a, az.a(this.a), az.b(this.a)));
    if (localPixmap1 == null)
    {
      localPixmap1 = av.a(av.b(this.a.a));
      if (localPixmap1 == null)
      {
        av.b().b("Unable to load image for URL: " + az.a(this.a));
        az.c(this.a).set(bool);
        return null;
      }
    }
    else
    {
      bool = false;
    }
    int i = localPixmap1.getWidth();
    int j = localPixmap1.getHeight();
    Pixmap localPixmap2 = new Pixmap(MathUtils.nextPowerOfTwo(i), MathUtils.nextPowerOfTwo(j), localPixmap1.getFormat());
    Pixmap.setFilter(Pixmap.Filter.BiLinear);
    localPixmap2.drawPixmap(localPixmap1, 0, 0);
    localPixmap1.dispose();
    return new ay(this.a.a, localPixmap2, i, j, bool);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ba
 * JD-Core Version:    0.6.2
 */