package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import com.google.a.c.eq;
import com.nianticproject.ingress.shared.ai;
import java.util.List;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PlayerProfile
{

  @JsonProperty
  private final long ap = 0L;

  @JsonProperty
  private final PlayerAvatar avatar = null;

  @JsonProperty
  private final int firstAchievementContinuationToken = 0;

  @JsonProperty
  private final List<DisplayedAchievement> highlightedAchievements = eq.a();

  @JsonProperty
  private final int level = 1;

  @JsonProperty
  private final List<FormattedAggregateMetric> metrics = eq.a();

  @JsonProperty
  private final ai team = null;

  public final ai a()
  {
    return this.team;
  }

  public final PlayerAvatar b()
  {
    return this.avatar;
  }

  public final List<FormattedAggregateMetric> c()
  {
    return this.metrics;
  }

  public final List<DisplayedAchievement> d()
  {
    return this.highlightedAchievements;
  }

  public final int e()
  {
    return this.firstAchievementContinuationToken;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PlayerProfile));
    PlayerProfile localPlayerProfile;
    do
    {
      return false;
      localPlayerProfile = (PlayerProfile)paramObject;
    }
    while ((!ag.a(this.team, localPlayerProfile.team)) || (!ag.c(this.avatar, localPlayerProfile.avatar)) || (!ag.c(this.metrics, localPlayerProfile.metrics)) || (!ag.c(this.highlightedAchievements, localPlayerProfile.highlightedAchievements)) || (this.firstAchievementContinuationToken != localPlayerProfile.firstAchievementContinuationToken) || (this.ap != localPlayerProfile.ap) || (this.level != localPlayerProfile.level));
    return true;
  }

  public final long f()
  {
    return this.ap;
  }

  public final int g()
  {
    return this.level;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = this.team;
    arrayOfObject[1] = this.avatar;
    arrayOfObject[2] = this.metrics;
    arrayOfObject[3] = this.highlightedAchievements;
    arrayOfObject[4] = Integer.valueOf(this.firstAchievementContinuationToken);
    arrayOfObject[5] = Long.valueOf(this.ap);
    arrayOfObject[6] = Integer.valueOf(this.level);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = this.team;
    arrayOfObject[1] = this.avatar;
    arrayOfObject[2] = this.metrics;
    arrayOfObject[3] = this.highlightedAchievements;
    arrayOfObject[4] = Integer.valueOf(this.firstAchievementContinuationToken);
    arrayOfObject[5] = Long.valueOf(this.ap);
    arrayOfObject[6] = Integer.valueOf(this.level);
    return String.format("team: %s, avatar: %s, metrics: %s, highlightedAchievements: %s, firstAchievementContinuationToken: %d, ap: %d, level: %d", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.PlayerProfile
 * JD-Core Version:    0.6.2
 */