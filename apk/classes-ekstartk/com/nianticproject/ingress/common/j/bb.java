package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.nianticproject.ingress.common.x.a;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;
import java.util.concurrent.atomic.AtomicBoolean;

final class bb extends a
{
  bb(ba paramba, String paramString, ay paramay)
  {
    super(paramString);
  }

  public final f a(p paramp)
  {
    if (ba.b(this.b).get())
      ba.a(this.b, this.a);
    do
    {
      return null;
      if ((!az.d(this.b.a)) && (this.a != null))
      {
        az.a(this.b.a, this.a.c);
        az.a(this.b.a, new Texture(this.a));
        az.e(this.b.a).setFilter(Texture.TextureFilter.Linear, Texture.TextureFilter.Linear);
        az.a(this.b.a, new TextureRegion(az.e(this.b.a), 0, 0, this.a.a, this.a.b));
        az.a(this.b.a, 4 * this.a.a * this.a.b);
        az.c(this.b.a).set(true);
        bc localbc = az.f(this.b.a);
        az localaz = this.b.a;
        av.a(localbc.a, localaz.h());
        localbc.a.a();
        return null;
      }
    }
    while (this.a == null);
    ba.a(this.b, this.a);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.bb
 * JD-Core Version:    0.6.2
 */