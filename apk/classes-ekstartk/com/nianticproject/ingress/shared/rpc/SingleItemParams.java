package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SingleItemParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private final String itemGuid;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u playerLocation;

  private SingleItemParams()
  {
    this.itemGuid = null;
    this.playerLocation = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public SingleItemParams(String paramString)
  {
    this.itemGuid = paramString;
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
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.itemGuid;
    arrayOfObject[1] = Integer.valueOf(a.c(this.playerLocation));
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.SingleItemParams
 * JD-Core Version:    0.6.2
 */