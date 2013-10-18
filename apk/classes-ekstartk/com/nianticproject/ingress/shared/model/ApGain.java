package com.nianticproject.ingress.shared.model;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ApGain
{

  @JsonProperty
  private final long apGainAmount = 0L;

  @JsonProperty
  private final a apTrigger = null;

  public final a a()
  {
    return this.apTrigger;
  }

  public final long b()
  {
    return this.apGainAmount;
  }

  public final boolean equals(Object paramObject)
  {
    if ((!(paramObject instanceof ApGain)) || (paramObject == null));
    ApGain localApGain;
    do
    {
      return false;
      localApGain = (ApGain)paramObject;
    }
    while ((!ag.a(this.apTrigger, localApGain.apTrigger)) || (!ag.a(Long.valueOf(this.apGainAmount), Long.valueOf(localApGain.apGainAmount))));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.apTrigger;
    arrayOfObject[1] = Long.valueOf(this.apGainAmount);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.apTrigger;
    arrayOfObject[1] = Long.valueOf(this.apGainAmount);
    return String.format("'%s':'%d'", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.model.ApGain
 * JD-Core Version:    0.6.2
 */