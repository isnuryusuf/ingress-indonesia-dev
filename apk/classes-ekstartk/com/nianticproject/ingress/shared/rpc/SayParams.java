package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.d.u;
import com.nianticproject.ingress.shared.b.a;
import org.codehaus.jackson.annotate.JsonProperty;

public class SayParams
  implements GameplayRpcParams
{

  @JsonProperty
  private final GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  public final boolean factionOnly;

  @JsonProperty
  public final String message;

  @JsonProperty
  private final u playerLocation;

  private SayParams()
  {
    this.message = null;
    this.playerLocation = null;
    this.factionOnly = false;
  }

  public SayParams(String paramString, u paramu, boolean paramBoolean)
  {
    this.message = paramString;
    this.playerLocation = paramu;
    this.factionOnly = paramBoolean;
  }

  public final GameplayRpcParams.ClientBasket a()
  {
    return this.clientBasket;
  }

  public final int b()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.message;
    arrayOfObject[1] = Integer.valueOf(a.c(this.playerLocation));
    arrayOfObject[2] = Boolean.valueOf(this.factionOnly);
    return ag.a(arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.SayParams
 * JD-Core Version:    0.6.2
 */