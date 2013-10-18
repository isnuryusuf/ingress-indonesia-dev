package com.nianticproject.ingress.common.scanner;

import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.FlipCard;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.c;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import java.util.HashSet;
import java.util.Iterator;

public class ek extends ga
{
  private static final aa i = new aa(ek.class);
  private static final dh<Object, gd> j = localdi.a();
  private final af k;

  static
  {
    di localdi = dh.j();
    Iterator localIterator = g.a.iterator();
    while (localIterator.hasNext())
    {
      af localaf = (af)localIterator.next();
      switch (el.a[localaf.ordinal()])
      {
      default:
        localdi.a(localaf, new gd(g.a(localaf, null), g.c(localaf), localaf.b()));
        break;
      case 1:
        localdi.a(c.a, new gd(g.a(localaf, c.a), g.c(localaf), "FlipCardADA"));
        localdi.a(c.b, new gd(g.a(localaf, c.b), g.c(localaf), "FlipCardJarvis"));
      }
    }
  }

  private ek(ge paramge, eo parameo, gd paramgd, af paramaf)
  {
    super(paramge, parameo, paramgd);
    this.k = paramaf;
  }

  public static ek a(ge paramge, eo parameo, Resource paramResource)
  {
    an.a(parameo);
    an.a(paramResource);
    Object localObject = b(paramResource);
    gd localgd = (gd)j.get(localObject);
    if (localgd == null)
      return null;
    return new ek(paramge, parameo, localgd, paramResource.getResourceType());
  }

  public static gd a(Resource paramResource)
  {
    return (gd)j.get(b(paramResource));
  }

  private static Object b(Resource paramResource)
  {
    af localaf = paramResource.getResourceType();
    if (localaf != null)
    {
      switch (el.a[localaf.ordinal()])
      {
      default:
        return localaf;
      case 1:
      }
      f localf = paramResource.getEntity();
      if (localf != null)
      {
        FlipCard localFlipCard = (FlipCard)localf.getComponent(FlipCard.class);
        if (localFlipCard != null)
          return localFlipCard.getFlipCardType();
      }
      return null;
    }
    return null;
  }

  public final String d()
  {
    return this.f.getGuid();
  }

  protected final String j()
  {
    return this.k.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ek
 * JD-Core Version:    0.6.2
 */