package com.nianticproject.ingress.common.inventory.ui;

import com.google.a.a.an;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.widget.c;
import com.nianticproject.ingress.gameentity.components.AccessLevel;
import com.nianticproject.ingress.gameentity.components.AccessLevel.RestrictedUsageResult;
import com.nianticproject.ingress.gameentity.components.PowerCube;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;

public final class az extends p
{
  public az(f paramf, k paramk)
  {
    super(paramf, paramk);
    an.a(paramf.getComponent(PowerCube.class));
  }

  final void a(c paramc)
  {
    f localf = this.a;
    k localk = this.b;
    try
    {
      aj.a("ActionModels.updateUsePowerCubeModel");
      AccessLevel localAccessLevel = (AccessLevel)localf.getComponent(AccessLevel.class);
      if ((localAccessLevel != null) && (!localAccessLevel.usage(localk.l()).a()))
      {
        paramc.a("Level denied");
        return;
      }
      paramc.a(true);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final int f()
  {
    return ((PowerCube)this.a.getComponent(PowerCube.class)).getEnergy();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.az
 * JD-Core Version:    0.6.2
 */