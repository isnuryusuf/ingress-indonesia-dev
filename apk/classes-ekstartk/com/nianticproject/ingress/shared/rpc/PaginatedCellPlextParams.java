package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.List;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PaginatedCellPlextParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  public final boolean ascendingTimestampOrder;

  @JsonProperty
  public final int categories;

  @JsonProperty
  public final List<String> cellsAsHex;

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  public final int desiredNumItems;

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  public final boolean factionOnly;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  public final long maxTimestampMs;

  @JsonProperty
  public final long minTimestampMs;

  @JsonProperty
  private u playerLocation;

  private PaginatedCellPlextParams()
  {
    this.factionOnly = false;
    this.cellsAsHex = null;
    this.minTimestampMs = 0L;
    this.maxTimestampMs = 0L;
    this.desiredNumItems = 0;
    this.ascendingTimestampOrder = false;
    this.playerLocation = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
    this.categories = -1;
  }

  public PaginatedCellPlextParams(boolean paramBoolean, Iterable<Long> paramIterable, long paramLong, int paramInt)
  {
    if ((paramInt == -1) || (paramInt > 0));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.factionOnly = paramBoolean;
      this.cellsAsHex = com.nianticproject.ingress.shared.l.a(paramIterable);
      this.minTimestampMs = paramLong;
      this.maxTimestampMs = -1L;
      this.desiredNumItems = 100;
      this.ascendingTimestampOrder = false;
      this.categories = paramInt;
      return;
    }
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
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = Boolean.valueOf(this.factionOnly);
    arrayOfObject[1] = this.cellsAsHex;
    arrayOfObject[2] = Long.valueOf(this.minTimestampMs);
    arrayOfObject[3] = Long.valueOf(this.maxTimestampMs);
    arrayOfObject[4] = Integer.valueOf(this.categories);
    arrayOfObject[5] = Integer.valueOf(this.desiredNumItems);
    arrayOfObject[6] = Boolean.valueOf(this.ascendingTimestampOrder);
    arrayOfObject[7] = Integer.valueOf(a.c(this.playerLocation));
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PaginatedCellPlextParams
 * JD-Core Version:    0.6.2
 */