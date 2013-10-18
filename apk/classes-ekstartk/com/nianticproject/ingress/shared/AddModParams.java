package com.nianticproject.ingress.shared;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams.ClientBasket;
import com.nianticproject.ingress.shared.rpc.l;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class AddModParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  public final int index;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  public final String modResourceGuid;

  @JsonProperty
  public final String modableGuid;

  @JsonProperty
  private u playerLocation;

  private AddModParams()
  {
    this.modableGuid = null;
    this.modResourceGuid = null;
    this.playerLocation = null;
    this.index = -1;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public AddModParams(String paramString1, String paramString2, int paramInt)
  {
    this.modableGuid = paramString1;
    this.modResourceGuid = paramString2;
    this.index = paramInt;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
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
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.modableGuid;
    arrayOfObject[1] = this.modResourceGuid;
    arrayOfObject[2] = Integer.valueOf(a.c(this.playerLocation));
    arrayOfObject[3] = Integer.valueOf(this.index);
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.AddModParams
 * JD-Core Version:    0.6.2
 */