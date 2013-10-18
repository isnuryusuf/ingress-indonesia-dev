package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleResonator
  implements Resonator, s
{
  public static final int[] energyTankVolume = { 1000, 1500, 2000, 2500, 3000, 4000, 5000, 6000 };
  private transient f containingEntity;
  private transient boolean dirty;

  @JsonProperty
  private String linkedPortalGuid;

  @JsonProperty
  private final int newResonatorLevel;

  @JsonProperty
  private final String ownerId;

  private SimpleResonator()
  {
    this.newResonatorLevel = 1;
    this.ownerId = "dummy";
  }

  public SimpleResonator(int paramInt, String paramString1, String paramString2)
  {
    an.a(a.a(paramInt), "level must be within Levels.MIN_LEVEL and Levels.MAX_LEVEL");
    this.newResonatorLevel = paramInt;
    this.ownerId = ((String)an.a(paramString2));
    this.linkedPortalGuid = paramString1;
    this.dirty = false;
  }

  public final int getEnergyCapacity()
  {
    return energyTankVolume[(-1 + getLevel())];
  }

  public final f getEntity()
  {
    return this.containingEntity;
  }

  public final String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public final int getLevel()
  {
    return this.newResonatorLevel;
  }

  public final String getLevelName()
  {
    return a.b(getLevel());
  }

  public final String getLinkedPortalGuid()
  {
    return this.linkedPortalGuid;
  }

  public final String getOwnerId()
  {
    return this.ownerId;
  }

  public final boolean hasLinkedPortal()
  {
    return !br.b(this.linkedPortalGuid);
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final void linkPortal(String paramString)
  {
    if (!br.b(paramString));
    for (boolean bool1 = true; ; bool1 = false)
    {
      an.a(bool1, "can't call linkPortal() with null or empty portal.");
      boolean bool2 = hasLinkedPortal();
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      an.b(bool3, "can't link a beacon which is already linked.");
      if (!paramString.equals(this.linkedPortalGuid))
      {
        this.linkedPortalGuid = paramString;
        this.dirty = true;
      }
      return;
    }
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, s.class, paramf);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.newResonatorLevel);
    arrayOfObject[1] = this.linkedPortalGuid;
    arrayOfObject[2] = this.ownerId;
    if (this.dirty);
    for (String str = " [dirty]"; ; str = "")
    {
      arrayOfObject[3] = str;
      return String.format("level: '%d', linkedPortalGuid: '%s', ownerGuid: '%s', %s", arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleResonator
 * JD-Core Version:    0.6.2
 */