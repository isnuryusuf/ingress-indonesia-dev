package com.nianticproject.ingress.common.scanner.visuals;

import a.a.a.a.b.bl;
import a.a.a.a.c.l;
import a.a.a.a.c.p;
import com.badlogic.gdx.math.Vector2;
import com.nianticproject.ingress.common.scanner.fp;
import java.util.Iterator;
import java.util.Map.Entry;

final class bg extends bc
{
  bg(be parambe, fp paramfp)
  {
    super(paramfp);
  }

  protected final void a()
  {
    l locall = be.b(this.a).c().a();
    while (locall.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)locall.next();
      be.a(this.a, ((Long)localEntry.getKey()).longValue(), (Vector2)localEntry.getValue());
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bg
 * JD-Core Version:    0.6.2
 */