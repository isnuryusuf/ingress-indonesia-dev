package com.nianticproject.ingress.shared.rpc.push;

import java.util.List;
import org.codehaus.jackson.annotate.JsonProperty;

public final class GcmPayload
{

  @JsonProperty
  public final String id = null;

  @JsonProperty
  public final List<PushNotification> notifications = null;

  @JsonProperty
  public final String recipientNickname = null;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.push.GcmPayload
 * JD-Core Version:    0.6.2
 */