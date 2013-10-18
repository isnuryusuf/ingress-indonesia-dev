package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleDamageable
  implements Damageable, s
{
  private transient boolean dirty;

  @JsonProperty
  private int total;

  public SimpleDamageable()
  {
    this(0);
  }

  public SimpleDamageable(int paramInt)
  {
    this.total = paramInt;
    this.dirty = false;
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
    StringBuilder localStringBuilder = new StringBuilder().append(this.total);
    if (this.dirty);
    for (String str = " [dirty]"; ; str = "")
      return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleDamageable
 * JD-Core Version:    0.6.2
 */