package com.nianticproject.ingress.shared.promotioncodes;

import com.nianticproject.ingress.gameentity.f;
import java.util.Collection;
import org.codehaus.jackson.annotate.JsonProperty;

public final class Reward
{

  @JsonProperty
  private final long apAward = 0L;

  @JsonProperty
  private final Collection<f> inventoryAward = null;

  @JsonProperty
  private final long xmAward = 0L;

  public final long a()
  {
    return this.apAward;
  }

  public final long b()
  {
    return this.xmAward;
  }

  public final Collection<f> c()
  {
    return this.inventoryAward;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Long.valueOf(this.apAward);
    arrayOfObject[1] = Long.valueOf(this.xmAward);
    arrayOfObject[2] = this.inventoryAward;
    return String.format("apAward: %d, xmAward: %d, inventoryAward: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.promotioncodes.Reward
 * JD-Core Version:    0.6.2
 */