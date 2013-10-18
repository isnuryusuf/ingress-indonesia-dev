package com.nianticproject.ingress.shared.rpc.push;

import com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PushNotification
{

  @JsonProperty
  public final DisplayedAchievement achievement = null;

  @JsonProperty
  public final long eventTimestampMs = 0L;

  @JsonProperty
  public final long expirationTimestampMs = 0L;

  @JsonProperty
  public final String senderNickname = null;

  @JsonProperty
  public final String subject = null;

  @JsonProperty
  public final String targetGuid = null;

  @JsonProperty
  public final a type = null;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.push.PushNotification
 * JD-Core Version:    0.6.2
 */