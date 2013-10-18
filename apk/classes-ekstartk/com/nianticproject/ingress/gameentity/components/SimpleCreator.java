package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleCreator
  implements Creator
{
  private transient f containingEntity;

  @JsonProperty
  private final long creationTime;

  @JsonProperty
  private final String creatorGuid;

  private SimpleCreator()
  {
    this.creatorGuid = null;
    this.creationTime = 0L;
  }

  public SimpleCreator(String paramString, long paramLong)
  {
    this.creatorGuid = paramString;
    this.creationTime = paramLong;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    SimpleCreator localSimpleCreator;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof SimpleCreator))
        return false;
      localSimpleCreator = (SimpleCreator)paramObject;
    }
    while ((this.creatorGuid.equals(localSimpleCreator.creatorGuid)) && (this.creationTime == localSimpleCreator.creationTime));
    return false;
  }

  public long getCreationTime()
  {
    return this.creationTime;
  }

  public String getCreatorGuid()
  {
    return this.creatorGuid;
  }

  public f getEntity()
  {
    return this.containingEntity;
  }

  public String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public void setEntity(f paramf)
  {
    this.containingEntity = e.a(this.containingEntity, this, Creator.class, paramf);
  }

  public String toString()
  {
    return "Owner: " + this.creatorGuid + ", Creation Time: " + this.creationTime;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleCreator
 * JD-Core Version:    0.6.2
 */