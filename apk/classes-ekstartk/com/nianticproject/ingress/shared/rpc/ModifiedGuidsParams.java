package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.List;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ModifiedGuidsParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private final List<String> guids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u location;

  @JsonProperty
  private final List<Long> timestampsMs;

  private ModifiedGuidsParams()
  {
    this.guids = null;
    this.timestampsMs = null;
    this.location = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public ModifiedGuidsParams(List<String> paramList, List<Long> paramList1)
  {
    if (paramList.size() == paramList1.size());
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.guids = paramList;
      this.timestampsMs = paramList1;
      this.location = null;
      this.energyGlobGuids = null;
      this.knobSyncTimestamp = null;
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
    this.location = paramu;
  }

  public final void a(Set<String> paramSet)
  {
    this.energyGlobGuids = paramSet;
  }

  public final int b()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(a.c(this.location));
    arrayOfObject[1] = this.guids;
    arrayOfObject[2] = this.timestampsMs;
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.ModifiedGuidsParams
 * JD-Core Version:    0.6.2
 */