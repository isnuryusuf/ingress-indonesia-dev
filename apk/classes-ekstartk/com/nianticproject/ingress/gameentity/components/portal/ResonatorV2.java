package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.Damageable;
import com.nianticproject.ingress.gameentity.components.d;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.s;

public abstract interface ResonatorV2 extends Damageable, d, s
{
  public static final String DISPLAY_NAME = "ResonatorV2";

  public abstract int getDistanceToPortal();

  public abstract int getEnergyCapacity();

  public abstract f getEntity();

  public abstract String getEntityGuid();

  public abstract String getId();

  public abstract u getLocation();

  public abstract r getOctant();

  public abstract String getOwnerGuid();

  public abstract boolean isTemporary();

  public abstract void setEntity(f paramf, r paramr);

  public abstract void setTotal(int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.ResonatorV2
 * JD-Core Version:    0.6.2
 */