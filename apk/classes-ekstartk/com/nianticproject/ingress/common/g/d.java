package com.nianticproject.ingress.common.g;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;
import java.util.Collection;

public abstract class d extends j<Collection<f>>
{
  private static final aa b = new aa(d.class);
  protected final e a;

  public d(e parame)
  {
    this.a = parame;
  }

  private Collection<f> g()
  {
    try
    {
      aj.a("InventoryObserver.doQuery");
      System.currentTimeMillis();
      Collection localCollection = this.a.e();
      return localCollection;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.d
 * JD-Core Version:    0.6.2
 */