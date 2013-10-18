package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.google.a.c.du;
import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.s;
import java.util.Map;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleModResource
  implements ModResource, s
{
  public static final Set<af> ALLOWED_SIMPLE_MOD_RESOURCES = du.a(af.k, af.f, af.d, af.e, af.h, af.l, new af[0]);
  private transient f containingEntity;
  private transient boolean dirty;

  @JsonProperty
  private final String displayName;

  @JsonProperty
  private final l rarity;

  @JsonProperty
  private final af resourceType;

  @JsonProperty
  private final Map<m, Long> stats;

  private SimpleModResource()
  {
    this.resourceType = null;
    this.rarity = l.a;
    this.stats = null;
    this.displayName = null;
  }

  public SimpleModResource(String paramString, af paramaf, l paraml, Map<m, Long> paramMap)
  {
    this.displayName = ((String)an.a(paramString));
    this.resourceType = ((af)an.a(paramaf));
    this.rarity = ((l)an.a(paraml));
    this.stats = ((Map)an.a(paramMap));
    this.containingEntity = null;
    this.dirty = false;
  }

  public ModResource copy()
  {
    return new SimpleModResource(this.displayName, this.resourceType, this.rarity, this.stats);
  }

  public String getDisplayName()
  {
    return this.displayName;
  }

  public f getEntity()
  {
    return this.containingEntity;
  }

  public String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public l getRarity()
  {
    return this.rarity;
  }

  public af getResourceType()
  {
    return this.resourceType;
  }

  public Map<m, Long> getStatModifiers()
  {
    return this.stats;
  }

  public boolean isDirty()
  {
    return this.dirty;
  }

  public void setClean()
  {
    this.dirty = false;
  }

  public void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, s.class, paramf);
  }

  public String toString()
  {
    return ag.a(getClass()).a("resourceType", this.resourceType).a("rarity", this.rarity).a("stats", this.stats).a("displayName", this.displayName).a("dirty", this.dirty).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleModResource
 * JD-Core Version:    0.6.2
 */