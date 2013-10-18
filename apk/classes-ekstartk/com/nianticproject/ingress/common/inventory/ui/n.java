package com.nianticproject.ingress.common.inventory.ui;

import com.google.a.a.an;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.widget.c;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;

public class n
{
  protected final f a;
  protected final k b;

  public n(f paramf, k paramk)
  {
    this.a = ((f)an.a(paramf));
    this.b = ((k)an.a(paramk));
    an.a(paramf.getComponent(Resource.class), "GameEntity is not a Resource");
  }

  public String a()
  {
    return a.a(this.a);
  }

  public final String b()
  {
    return a.b(this.a);
  }

  final void b(c paramc)
  {
    com.nianticproject.ingress.common.itemupgrade.a.b(paramc, this.b);
  }

  public final l c()
  {
    return ((Resource)this.a.getComponent(Resource.class)).getRarity();
  }

  final void c(c paramc)
  {
    try
    {
      aj.a("ActionModels.updateRecycleModel");
      an.a(paramc);
      if (p.a().G())
        paramc.a(false);
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.n
 * JD-Core Version:    0.6.2
 */