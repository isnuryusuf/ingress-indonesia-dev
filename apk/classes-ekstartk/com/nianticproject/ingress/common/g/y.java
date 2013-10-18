package com.nianticproject.ingress.common.g;

import com.google.a.c.hc;
import com.google.a.c.jc;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class y
{
  private final Map<af, Collection<f>> a = hc.a(af.values().length);

  public final Collection<f> a(af paramaf)
  {
    return (Collection)this.a.get(paramaf);
  }

  public final void a()
  {
    this.a.clear();
  }

  public final void a(f paramf)
  {
    Resource localResource = (Resource)paramf.getComponent(Resource.class);
    if (localResource != null)
    {
      af localaf = localResource.getResourceType();
      Object localObject = (Collection)this.a.get(localaf);
      if (localObject == null)
      {
        localObject = jc.a();
        this.a.put(localaf, localObject);
      }
      ((Collection)localObject).add(paramf);
    }
  }

  public final int b()
  {
    Iterator localIterator = this.a.values().iterator();
    int i = 0;
    while (localIterator.hasNext())
      i += ((Collection)localIterator.next()).size();
    return i;
  }

  public final void b(f paramf)
  {
    Resource localResource = (Resource)paramf.getComponent(Resource.class);
    if (localResource != null)
    {
      af localaf = localResource.getResourceType();
      Collection localCollection = (Collection)this.a.get(localaf);
      if (localCollection != null)
        localCollection.remove(paramf);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.y
 * JD-Core Version:    0.6.2
 */