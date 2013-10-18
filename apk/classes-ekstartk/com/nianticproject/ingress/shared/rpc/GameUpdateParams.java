package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class GameUpdateParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private final List<String> cellsAsHex = null;

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private final long[] dates = null;

  @JsonProperty
  private Set<String> energyGlobGuids = null;

  @JsonProperty
  private Long knobSyncTimestamp = null;

  @JsonProperty
  private final long lastInventoryQueryTimestamp = -1L;

  @JsonProperty
  private u playerLocation = null;

  public final GameplayRpcParams.ClientBasket a()
  {
    return this.clientBasket;
  }

  public final void a(long paramLong)
  {
    this.knobSyncTimestamp = Long.valueOf(paramLong);
  }

  public final void a(u paramu)
  {
    this.playerLocation = paramu;
  }

  public final void a(Set<String> paramSet)
  {
    this.energyGlobGuids = paramSet;
  }

  public final int b()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.cellsAsHex;
    arrayOfObject[1] = Integer.valueOf(Arrays.hashCode(this.dates));
    arrayOfObject[2] = Long.valueOf(this.lastInventoryQueryTimestamp);
    arrayOfObject[3] = Integer.valueOf(a.c(this.playerLocation));
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = this.cellsAsHex;
    arrayOfObject[1] = this.dates;
    arrayOfObject[2] = Long.valueOf(this.lastInventoryQueryTimestamp);
    arrayOfObject[3] = this.playerLocation;
    arrayOfObject[4] = this.energyGlobGuids;
    arrayOfObject[5] = this.knobSyncTimestamp;
    arrayOfObject[6] = this.clientBasket;
    return String.format("cells: %s\ndates: %s\nlastInventoryQueryTimestamp: %s\nplayerLocation: %s\nenergyGlobGuids: %s\nknobSyncTimestamp: %s\nclientBasket: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.GameUpdateParams
 * JD-Core Version:    0.6.2
 */