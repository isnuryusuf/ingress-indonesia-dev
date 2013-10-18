package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public class GameplayRpcParams$ClientBasket
{

  @JsonProperty
  private String clientBlob;

  public final ClientBasket a(String paramString)
  {
    this.clientBlob = paramString;
    return this;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.clientBlob;
    return String.format("clientBlob: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.GameplayRpcParams.ClientBasket
 * JD-Core Version:    0.6.2
 */