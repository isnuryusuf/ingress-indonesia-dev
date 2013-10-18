package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleExperiencePoints
  implements ExperiencePoints, s
{
  private transient boolean dirty;

  @JsonProperty
  private int total;

  public SimpleExperiencePoints()
  {
    this.total = 0;
    this.dirty = false;
  }

  public SimpleExperiencePoints(int paramInt)
  {
    checkPositive(paramInt);
    this.total = paramInt;
    this.dirty = false;
  }

  private void checkPositive(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Value cannot be negative.");
      return;
    }
  }

  public int getTotal()
  {
    return this.total;
  }

  public void incrementBy(int paramInt)
  {
    checkPositive(paramInt);
    setTotal(paramInt + this.total);
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
    checkPositive(paramInt);
    if (this.total != paramInt)
    {
      this.total = paramInt;
      this.dirty = true;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("XP: ").append(getTotal());
    if (this.dirty);
    for (String str = " [dirty]"; ; str = "")
      return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleExperiencePoints
 * JD-Core Version:    0.6.2
 */