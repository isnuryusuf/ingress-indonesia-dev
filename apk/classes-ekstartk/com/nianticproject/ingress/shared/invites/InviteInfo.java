package com.nianticproject.ingress.shared.invites;

import com.google.a.c.dh;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public final class InviteInfo
{

  @JsonProperty
  private final long apGainOnInviteAccepted = 0L;

  @JsonProperty
  private final Map<String, a> inviteeToStatusMap = null;

  @JsonProperty
  private final int numAvailableInvites = 0;

  public final int a()
  {
    return this.numAvailableInvites;
  }

  public final dh<String, a> b()
  {
    return dh.a(this.inviteeToStatusMap);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.invites.InviteInfo
 * JD-Core Version:    0.6.2
 */