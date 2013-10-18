package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class DeployResonatorV2Params
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  public Set<String> itemGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u location;

  @JsonProperty
  public String portalGuid;

  @JsonProperty
  public int preferredSlot;

  private DeployResonatorV2Params()
  {
    this.location = null;
    this.itemGuids = null;
    this.portalGuid = null;
    this.preferredSlot = -2;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public DeployResonatorV2Params(String paramString1, String paramString2, int paramInt)
  {
    this.itemGuids = jc.a(new String[] { paramString1 });
    this.portalGuid = paramString2;
    this.preferredSlot = paramInt;
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
    arrayOfObject[1] = this.itemGuids;
    arrayOfObject[2] = this.portalGuid;
    arrayOfObject[3] = Integer.valueOf(this.preferredSlot);
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.DeployResonatorV2Params
 * JD-Core Version:    0.6.2
 */