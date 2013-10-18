package android.support.v4.app;

import android.app.Notification;
import java.util.ArrayList;
import java.util.Iterator;

final class al
  implements ah
{
  public final Notification a(af paramaf)
  {
    an localan = new an(paramaf.a, paramaf.r, paramaf.b, paramaf.c, paramaf.h, paramaf.f, paramaf.i, paramaf.d, paramaf.e, paramaf.g, paramaf.n, paramaf.o, paramaf.p, paramaf.k, paramaf.j, paramaf.m);
    Iterator localIterator = paramaf.q.iterator();
    while (localIterator.hasNext())
    {
      ac localac = (ac)localIterator.next();
      localan.a(localac.a, localac.b, localac.c);
    }
    if (paramaf.l != null)
    {
      if (!(paramaf.l instanceof ae))
        break label177;
      ae localae = (ae)paramaf.l;
      localan.a(localae.c, localae.e, localae.d, localae.a);
    }
    while (true)
    {
      return localan.a();
      label177: if ((paramaf.l instanceof ag))
      {
        ag localag = (ag)paramaf.l;
        localan.a(localag.c, localag.e, localag.d, localag.a);
      }
      else if ((paramaf.l instanceof ad))
      {
        ad localad = (ad)paramaf.l;
        localan.a(localad.c, localad.e, localad.d, localad.a);
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.al
 * JD-Core Version:    0.6.2
 */