package com.nianticproject.ingress.common.inventory.ui;

import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.d;
import com.nianticproject.ingress.gameentity.f;

public class p extends n
{
  public p(f paramf, k paramk)
  {
    super(paramf, paramk);
  }

  public final int d()
  {
    Resource localResource = (Resource)this.a.getComponent(Resource.class);
    if ((localResource instanceof d))
      return ((d)localResource).getLevel();
    return 0;
  }

  public final String e()
  {
    Resource localResource = (Resource)this.a.getComponent(Resource.class);
    if ((localResource instanceof d))
      return ((d)localResource).getLevelName();
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.p
 * JD-Core Version:    0.6.2
 */