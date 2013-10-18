package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class CellParams
  implements GameplayRpcParams, l
{

  @Deprecated
  @JsonProperty
  private final long[] cells;

  @JsonProperty
  private final List<String> cellsAsHex;

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private final long[] dates;

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u playerLocation;

  private CellParams()
  {
    this.cells = null;
    this.cellsAsHex = null;
    this.dates = null;
    this.playerLocation = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public CellParams(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    this.cellsAsHex = com.nianticproject.ingress.shared.l.a(paramArrayOfLong1);
    this.cells = null;
    this.dates = paramArrayOfLong2;
  }

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
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.cellsAsHex;
    arrayOfObject[1] = Integer.valueOf(Arrays.hashCode(this.dates));
    arrayOfObject[2] = Integer.valueOf(a.c(this.playerLocation));
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = this.cellsAsHex;
    arrayOfObject[1] = this.dates;
    arrayOfObject[2] = this.playerLocation;
    arrayOfObject[3] = this.energyGlobGuids;
    arrayOfObject[4] = this.knobSyncTimestamp;
    arrayOfObject[5] = this.clientBasket;
    return String.format("%s, %s, %s, %s, %s, %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.CellParams
 * JD-Core Version:    0.6.2
 */