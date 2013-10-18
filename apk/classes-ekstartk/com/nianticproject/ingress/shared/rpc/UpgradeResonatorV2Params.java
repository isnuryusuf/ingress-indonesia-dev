package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class UpgradeResonatorV2Params
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  public final String emitterGuid;

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u location;

  @JsonProperty
  public final String portalGuid;

  @JsonProperty
  public final int resonatorSlotToUpgrade;

  private UpgradeResonatorV2Params()
  {
    this.location = null;
    this.resonatorSlotToUpgrade = -1;
    this.emitterGuid = null;
    this.portalGuid = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public UpgradeResonatorV2Params(String paramString1, String paramString2, int paramInt)
  {
    this.resonatorSlotToUpgrade = paramInt;
    this.emitterGuid = paramString1;
    this.portalGuid = paramString2;
    this.energyGlobGuids = null;
    if ((paramInt >= 0) && (paramInt <= 7));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
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
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(a.c(this.location));
    arrayOfObject[1] = Integer.valueOf(this.resonatorSlotToUpgrade);
    arrayOfObject[2] = this.emitterGuid;
    arrayOfObject[3] = this.portalGuid;
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.UpgradeResonatorV2Params
 * JD-Core Version:    0.6.2
 */