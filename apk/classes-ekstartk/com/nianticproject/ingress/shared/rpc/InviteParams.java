package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public final class InviteParams
{

  @JsonProperty
  private final String customMessage;

  @JsonProperty
  private final String inviteeEmailAddress;

  private InviteParams()
  {
    this.inviteeEmailAddress = null;
    this.customMessage = null;
  }

  public InviteParams(String paramString1, String paramString2)
  {
    this.inviteeEmailAddress = paramString1;
    this.customMessage = paramString2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.InviteParams
 * JD-Core Version:    0.6.2
 */