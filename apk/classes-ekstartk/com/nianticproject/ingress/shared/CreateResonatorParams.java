package com.nianticproject.ingress.shared;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams.ClientBasket;
import com.nianticproject.ingress.shared.rpc.l;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class CreateResonatorParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids = null;

  @JsonProperty
  public Set<String> itemGuids = null;

  @JsonProperty
  private Long knobSyncTimestamp = null;

  @JsonProperty
  public int latE6 = 0;

  @JsonProperty
  public int lngE6 = 0;

  @JsonProperty
  public String portalGuid = null;

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
    this.latE6 = ((int)(1000000.0D * paramu.c()));
    this.lngE6 = ((int)(1000000.0D * paramu.f()));
  }

  public final void a(Set<String> paramSet)
  {
    this.energyGlobGuids = paramSet;
  }

  public final int b()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.latE6);
    arrayOfObject[1] = Integer.valueOf(this.lngE6);
    arrayOfObject[2] = this.itemGuids;
    arrayOfObject[3] = this.portalGuid;
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.CreateResonatorParams
 * JD-Core Version:    0.6.2
 */