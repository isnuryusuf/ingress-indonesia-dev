package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.e;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleEnergyGlob
  implements EnergyGlob, s
{
  private transient f containingEntity;
  private transient boolean dirty;

  @JsonProperty
  private int total;

  public SimpleEnergyGlob()
  {
    this.total = 0;
    this.dirty = false;
  }

  public SimpleEnergyGlob(int paramInt)
  {
    this.total = paramInt;
    this.dirty = false;
  }

  public f getEntity()
  {
    return this.containingEntity;
  }

  public String getEntityGuid()
  {
    return this.containingEntity.getGuid();
  }

  public int getTotal()
  {
    return this.total;
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

  public void setTotal(int paramInt)
  {
    if (this.total != paramInt)
    {
      this.total = paramInt;
      this.dirty = true;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Glob: ").append(this.total);
    if (this.dirty);
    for (String str = " [dirty]"; ; str = "")
      return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleEnergyGlob
 * JD-Core Version:    0.6.2
 */