package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.google.a.c.du;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.s;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleResource
  implements Resource, s
{
  public static final Set<af> ALLOWED_SIMPLE_RESOURCE = du.a(af.c, af.i);
  private transient f containingEntity;
  private transient boolean dirty;

  @JsonProperty
  private final l resourceRarity;

  @JsonProperty
  private final af resourceType;

  private SimpleResource()
  {
    this.resourceType = null;
    this.resourceRarity = null;
  }

  public SimpleResource(af paramaf, l paraml)
  {
    an.a(paramaf);
    an.a(paraml);
    if (!ALLOWED_SIMPLE_RESOURCE.contains(paramaf))
      throw new IllegalArgumentException("Illegal SimpleResource type: " + paramaf);
    this.resourceType = paramaf;
    this.resourceRarity = paraml;
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

  public final l getRarity()
  {
    if (this.resourceRarity == null)
      return l.a;
    return this.resourceRarity;
  }

  public final l getRarityRaw()
  {
    return this.resourceRarity;
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
    this.containingEntity = e.a(this.containingEntity, this, s.class, paramf);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.resourceType;
    arrayOfObject[1] = this.resourceRarity;
    if (this.dirty);
    for (String str = ", [dirty]"; ; str = "")
    {
      arrayOfObject[2] = str;
      return String.format("Type: '%s', Rarity: '%s'%s", arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleResource
 * JD-Core Version:    0.6.2
 */