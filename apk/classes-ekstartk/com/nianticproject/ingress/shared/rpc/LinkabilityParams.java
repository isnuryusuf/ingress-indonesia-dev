package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class LinkabilityParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private final String originPortalGuid;

  @JsonProperty
  private u playerLocation;

  @JsonProperty
  private final Set<String> portalLinkKeyGuidSet;

  private LinkabilityParams()
  {
    this.originPortalGuid = null;
    this.portalLinkKeyGuidSet = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public LinkabilityParams(String paramString, Set<String> paramSet)
  {
    this.originPortalGuid = paramString;
    this.portalLinkKeyGuidSet = paramSet;
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
    arrayOfObject[0] = this.originPortalGuid;
    arrayOfObject[1] = this.portalLinkKeyGuidSet;
    arrayOfObject[2] = Integer.valueOf(a.c(this.playerLocation));
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.LinkabilityParams
 * JD-Core Version:    0.6.2
 */