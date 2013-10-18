package com.nianticproject.ingress.server.flip;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams.ClientBasket;
import com.nianticproject.ingress.shared.rpc.l;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class FlipParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u playerLocation;

  @JsonProperty
  private final String portalGuid;

  @JsonProperty
  private final String resourceGuid;

  private FlipParams()
  {
    this.portalGuid = null;
    this.resourceGuid = null;
  }

  public FlipParams(String paramString1, String paramString2)
  {
    this.portalGuid = paramString1;
    this.resourceGuid = paramString2;
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
    arrayOfObject[0] = this.portalGuid;
    arrayOfObject[1] = this.resourceGuid;
    arrayOfObject[2] = Integer.valueOf(a.c(this.playerLocation));
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.server.flip.FlipParams
 * JD-Core Version:    0.6.2
 */