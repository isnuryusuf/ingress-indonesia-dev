package com.nianticproject.ingress.common.gameentity;

import com.google.a.c.cr;
import com.google.a.d.ad;
import com.google.a.d.i;
import com.google.a.d.j;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.components.EnergyGlob;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.b.b;
import com.nianticproject.ingress.shared.g;

public final class EnergyGlobEntity
  implements EnergyGlob, LocationE6, f
{
  private final j cellId;
  private final String guid;
  private final u latLng;
  private int quantity;
  private final long timestamp;

  public EnergyGlobEntity(String paramString, long paramLong)
  {
    this.guid = paramString;
    this.quantity = ((int)g.b(paramString));
    this.cellId = new j(g.a(paramString));
    this.latLng = b.a(this.cellId);
    this.timestamp = paramLong;
  }

  public final <T extends DynamicComponent> void add(T paramT)
  {
    throw new UnsupportedOperationException("Cannot add components");
  }

  public final void computeCovering()
  {
  }

  public final <T extends a> T getComponent(Class<T> paramClass)
  {
    if ((paramClass.isAssignableFrom(f.class)) || (paramClass.isAssignableFrom(LocationE6.class)))
      return this;
    return null;
  }

  public final cr<a> getComponentsAsMap()
  {
    throw new UnsupportedOperationException("Cannot get components as map");
  }

  public final f getEntity()
  {
    return this;
  }

  public final String getEntityGuid()
  {
    return this.guid;
  }

  public final String getGuid()
  {
    return this.guid;
  }

  public final j getIndexCell()
  {
    return this.cellId;
  }

  public final u getIndexPoint()
  {
    return this.latLng;
  }

  public final ad getIndexRegion()
  {
    return new i(this.cellId);
  }

  public final long getLastModifiedMs()
  {
    return this.timestamp;
  }

  public final int getLatE6()
  {
    return (int)(1000000.0D * this.latLng.c());
  }

  public final u getLatLng()
  {
    return this.latLng;
  }

  public final int getLngE6()
  {
    return (int)(1000000.0D * this.latLng.f());
  }

  public final int getTotal()
  {
    return this.quantity;
  }

  public final <T extends DynamicComponent> T remove(Class<T> paramClass)
  {
    throw new UnsupportedOperationException("Cannot remove components");
  }

  public final void setEntity(f paramf)
  {
    if (paramf != this)
      throw new IllegalArgumentException("Cannot set Entity other than original");
  }

  public final void setLastModifiedMs(long paramLong)
  {
    throw new UnsupportedOperationException("cannot set modification time");
  }

  public final void setTotal(int paramInt)
  {
    if (paramInt != 0)
      throw new IllegalArgumentException("Cannot set energy glob total other than zero");
    this.quantity = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.gameentity.EnergyGlobEntity
 * JD-Core Version:    0.6.2
 */