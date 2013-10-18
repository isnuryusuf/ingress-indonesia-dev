package com.nianticproject.ingress.knobs;

import com.google.a.a.ag;
import com.google.a.c.dh;
import org.codehaus.jackson.annotate.JsonProperty;

public final class KnobBundleUpdate
{

  @JsonProperty
  private final dh<String, g> bundleMap;

  @JsonProperty
  private final long syncTimestamp;

  private KnobBundleUpdate()
  {
    this.bundleMap = null;
    this.syncTimestamp = 0L;
  }

  public KnobBundleUpdate(dh<String, g> paramdh, long paramLong)
  {
    this.bundleMap = paramdh;
    this.syncTimestamp = paramLong;
  }

  public final dh<String, g> a()
  {
    return this.bundleMap;
  }

  public final long b()
  {
    return this.syncTimestamp;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof KnobBundleUpdate));
    KnobBundleUpdate localKnobBundleUpdate;
    do
    {
      return false;
      localKnobBundleUpdate = (KnobBundleUpdate)paramObject;
    }
    while ((this.syncTimestamp != localKnobBundleUpdate.syncTimestamp) || (!this.bundleMap.equals(localKnobBundleUpdate.bundleMap)));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.bundleMap;
    arrayOfObject[1] = Long.valueOf(this.syncTimestamp);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.bundleMap;
    arrayOfObject[1] = Long.valueOf(this.syncTimestamp);
    return String.format("bundleMap: %s, syncTimestamp: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.KnobBundleUpdate
 * JD-Core Version:    0.6.2
 */