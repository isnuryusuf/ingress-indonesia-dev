package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import com.google.a.c.dc;
import java.util.List;
import org.codehaus.jackson.annotate.JsonProperty;

public final class DisplayedAchievement
{

  @JsonProperty
  private final String description = null;

  @JsonProperty
  private final String group = null;

  @JsonProperty
  private final List<DisplayedAchievementTier> tiers = dc.d();

  @JsonProperty
  private final long timestampAwarded = -1L;

  @JsonProperty
  private final String title = null;

  public final String a()
  {
    return this.title;
  }

  public final String b()
  {
    return this.description;
  }

  public final List<DisplayedAchievementTier> c()
  {
    return this.tiers;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DisplayedAchievement));
    DisplayedAchievement localDisplayedAchievement;
    do
    {
      return false;
      localDisplayedAchievement = (DisplayedAchievement)paramObject;
    }
    while ((!ag.a(this.title, localDisplayedAchievement.title)) || (!ag.a(this.description, localDisplayedAchievement.description)) || (!ag.a(this.group, localDisplayedAchievement.group)) || (!ag.c(this.tiers, localDisplayedAchievement.tiers)) || (this.timestampAwarded != localDisplayedAchievement.timestampAwarded));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.title;
    arrayOfObject[1] = this.description;
    arrayOfObject[2] = this.group;
    arrayOfObject[3] = this.tiers;
    arrayOfObject[4] = Long.valueOf(this.timestampAwarded);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.title;
    arrayOfObject[1] = this.description;
    arrayOfObject[2] = this.group;
    arrayOfObject[3] = this.tiers;
    arrayOfObject[4] = Long.valueOf(this.timestampAwarded);
    return String.format("title: %s, description: %s, group: %s, tiers: %s, timestampAwarded: %d", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.DisplayedAchievement
 * JD-Core Version:    0.6.2
 */