package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public final class LinkPortalsParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private final String destinationPortalGuid;

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private final String linkKeyGuid;

  @JsonProperty
  private final String originPortalGuid;

  @JsonProperty
  private u playerLocation;

  private LinkPortalsParams()
  {
    this.originPortalGuid = null;
    this.destinationPortalGuid = null;
    this.linkKeyGuid = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
  }

  public LinkPortalsParams(String paramString1, String paramString2, String paramString3)
  {
    this.originPortalGuid = paramString1;
    this.destinationPortalGuid = paramString2;
    this.linkKeyGuid = paramString3;
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
    arrayOfObject[0] = this.originPortalGuid;
    arrayOfObject[1] = this.destinationPortalGuid;
    arrayOfObject[2] = this.linkKeyGuid;
    arrayOfObject[3] = Integer.valueOf(a.c(this.playerLocation));
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.LinkPortalsParams
 * JD-Core Version:    0.6.2
 */