package com.nianticproject.ingress.shared;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams.ClientBasket;
import com.nianticproject.ingress.shared.rpc.l;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class UpgradeResonatorParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  public final String emitterGuid = null;

  @JsonProperty
  private Set<String> energyGlobGuids = null;

  @JsonProperty
  private Long knobSyncTimestamp = null;

  @JsonProperty
  private u location = null;

  @JsonProperty
  public final String portalGuid = null;

  @JsonProperty
  public final String resonatorToUpgradeGuid = null;

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
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(a.c(this.location));
    arrayOfObject[1] = this.resonatorToUpgradeGuid;
    arrayOfObject[2] = this.emitterGuid;
    arrayOfObject[3] = this.portalGuid;
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.UpgradeResonatorParams
 * JD-Core Version:    0.6.2
 */