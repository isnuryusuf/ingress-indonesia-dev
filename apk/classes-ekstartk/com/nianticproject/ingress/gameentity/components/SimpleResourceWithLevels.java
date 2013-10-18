package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.google.a.c.du;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleResourceWithLevels
  implements ResourceWithLevels, s
{
  public static final du<af> ALLOWED_SIMPLE_RESOURCE_WITH_LEVELS = du.a(af.a, af.b, af.g, af.j, af.m);
  private transient f containingEntity;
  private transient boolean dirty;

  @JsonProperty
  private final int level;

  @JsonProperty
  private final af resourceType;

  private SimpleResourceWithLevels()
  {
    this.resourceType = null;
    this.level = 0;
  }

  public SimpleResourceWithLevels(af paramaf, int paramInt)
  {
    an.a(paramaf);
    if (!a.a(paramInt))
      throw new IllegalArgumentException("level should be >= 1 and <= 8: " + paramInt);
    if (!ALLOWED_SIMPLE_RESOURCE_WITH_LEVELS.contains(paramaf))
      throw new IllegalArgumentException("Illegal SimpleResourceWithLevels type: " + paramaf);
    this.level = paramInt;
    this.resourceType = paramaf;
    this.dirty = false;
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
    return this.level;
  }

  public final String getLevelName()
  {
    return a.b(getLevel());
  }

  public final l getRarity()
  {
    return l.a;
  }

  public final af getResourceType()
  {
    return this.resourceType;
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, Resource.class, paramf);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.resourceType;
    arrayOfObject[1] = Integer.valueOf(this.level);
    if (this.dirty);
    for (String str = ", [dirty]"; ; str = "")
    {
      arrayOfObject[2] = str;
      return String.format("Type: '%s' Level: %d%s", arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleResourceWithLevels
 * JD-Core Version:    0.6.2
 */