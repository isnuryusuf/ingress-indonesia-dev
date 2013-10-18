package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public class PaginatedAchievementsParams
{

  @JsonProperty
  private final int continuationToken;

  @JsonProperty
  private final String playerNickname;

  private PaginatedAchievementsParams()
  {
    this.playerNickname = null;
    this.continuationToken = 0;
  }

  public PaginatedAchievementsParams(String paramString, int paramInt)
  {
    this.playerNickname = paramString;
    this.continuationToken = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PaginatedAchievementsParams
 * JD-Core Version:    0.6.2
 */