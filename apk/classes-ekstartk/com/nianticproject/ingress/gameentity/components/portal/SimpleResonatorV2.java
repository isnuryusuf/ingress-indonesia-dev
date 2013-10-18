package com.nianticproject.ingress.gameentity.components.portal;

import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.r;
import java.util.UUID;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleResonatorV2
  implements ResonatorV2
{
  static final dc<Integer> ENERGY_TANK_VOLUME = dc.a(Integer.valueOf(1000), Integer.valueOf(1500), Integer.valueOf(2000), Integer.valueOf(2500), Integer.valueOf(3000), Integer.valueOf(4000), Integer.valueOf(5000), Integer.valueOf(6000));
  private transient boolean dirty;

  @JsonProperty
  private final int distanceToPortal;

  @JsonProperty
  private int energyTotal;
  private transient f gameEntity;

  @JsonProperty
  private final String id;

  @JsonProperty
  private final int level;
  private transient u location;

  @JsonProperty
  private final String ownerGuid;

  @JsonProperty
  private int slot;
  private final transient boolean temporary;

  private SimpleResonatorV2()
  {
    this.id = null;
    this.level = 0;
    this.distanceToPortal = 0;
    this.energyTotal = 0;
    this.ownerGuid = null;
    this.location = null;
    this.temporary = false;
  }

  public SimpleResonatorV2(int paramInt1, int paramInt2, String paramString)
  {
    this(paramInt1, paramInt2, paramString, false);
  }

  public SimpleResonatorV2(int paramInt1, int paramInt2, String paramString, boolean paramBoolean)
  {
    this(UUID.randomUUID().toString(), paramInt1, paramInt2, paramString, computeEnergyCapacity(paramInt1), paramBoolean);
  }

  private SimpleResonatorV2(String paramString1, int paramInt1, int paramInt2, String paramString2, int paramInt3, boolean paramBoolean)
  {
    boolean bool2;
    if (!paramString1.isEmpty())
    {
      bool2 = bool1;
      an.a(bool2);
      this.id = paramString1;
      an.a(com.nianticproject.ingress.gameentity.components.a.a(paramInt1), "level must be within Levels.MIN_LEVEL and Levels.MAX_LEVEL");
      if (paramInt2 < 0)
        break label94;
    }
    while (true)
    {
      an.a(bool1, "distance to portal must be non-negative");
      this.level = paramInt1;
      this.ownerGuid = ((String)an.a(paramString2));
      this.distanceToPortal = paramInt2;
      this.energyTotal = paramInt3;
      this.temporary = paramBoolean;
      this.dirty = false;
      return;
      bool2 = false;
      break;
      label94: bool1 = false;
    }
  }

  public static int computeEnergyCapacity(int paramInt)
  {
    return ((Integer)ENERGY_TANK_VOLUME.get(paramInt - 1)).intValue();
  }

  public static SimpleResonatorV2 createNonTemporary(int paramInt1, int paramInt2, String paramString)
  {
    return new SimpleResonatorV2(paramInt1, paramInt2, paramString);
  }

  public static SimpleResonatorV2 createTemporary(int paramInt1, int paramInt2, String paramString)
  {
    return new SimpleResonatorV2(paramInt1, paramInt2, paramString, true);
  }

  public final int getDistanceToPortal()
  {
    return this.distanceToPortal;
  }

  public final int getEnergyCapacity()
  {
    return computeEnergyCapacity(getLevel());
  }

  public final f getEntity()
  {
    return this.gameEntity;
  }

  public final String getEntityGuid()
  {
    return this.gameEntity.getGuid();
  }

  public final String getId()
  {
    return this.id;
  }

  public final int getLevel()
  {
    return this.level;
  }

  public final String getLevelName()
  {
    return com.nianticproject.ingress.gameentity.components.a.b(getLevel());
  }

  public final u getLocation()
  {
    if (this.location != null)
      return this.location;
    if (this.gameEntity != null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Cannot call this method when not attached to a game entity.");
      LocationE6 localLocationE6 = (LocationE6)this.gameEntity.getComponent(LocationE6.class);
      double d1 = r.a(this.slot).c();
      double d2 = this.distanceToPortal;
      this.location = com.nianticproject.ingress.shared.b.a.a(localLocationE6.getLatLng(), d1, d2);
      return this.location;
    }
  }

  public final r getOctant()
  {
    return r.a(this.slot);
  }

  public final String getOwnerGuid()
  {
    return this.ownerGuid;
  }

  public final int getTotal()
  {
    return this.energyTotal;
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final boolean isTemporary()
  {
    return this.temporary;
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final void setEntity(f paramf, r paramr)
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.gameEntity == null)
    {
      bool2 = bool1;
      an.b(bool2);
      if (paramf == null)
        break label45;
    }
    while (true)
    {
      an.a(bool1);
      this.gameEntity = paramf;
      this.slot = paramr.a();
      return;
      bool2 = false;
      break;
      label45: bool1 = false;
    }
  }

  public final void setTotal(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "energyTotal must be positive");
      if (this.energyTotal != paramInt)
        break;
      return;
    }
    this.energyTotal = paramInt;
    this.dirty = true;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = Integer.valueOf(this.level);
    arrayOfObject[1] = Integer.valueOf(this.distanceToPortal);
    arrayOfObject[2] = this.ownerGuid;
    arrayOfObject[3] = this.location;
    arrayOfObject[4] = this.id;
    if (this.dirty);
    for (String str = ", [dirty]"; ; str = "")
    {
      arrayOfObject[5] = str;
      arrayOfObject[6] = Integer.valueOf(this.energyTotal);
      return String.format("level: '%d', distanceToPortal: '%d', ownerGuid: '%s', location: '%s', id: '%s'%s, energyTotal: '%s'", arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.SimpleResonatorV2
 * JD-Core Version:    0.6.2
 */