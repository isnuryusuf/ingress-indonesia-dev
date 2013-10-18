package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public class DisplayedAchievementTier
{

  @JsonProperty
  private final String badgeImageUrl = null;

  @JsonProperty
  private final boolean locked = false;

  @JsonProperty
  private final String value = null;

  public final String a()
  {
    return this.value;
  }

  public final String b()
  {
    return this.badgeImageUrl;
  }

  public final boolean c()
  {
    return this.locked;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DisplayedAchievementTier));
    DisplayedAchievementTier localDisplayedAchievementTier;
    do
    {
      return false;
      localDisplayedAchievementTier = (DisplayedAchievementTier)paramObject;
    }
    while ((!ag.a(this.value, localDisplayedAchievementTier.value)) || (!ag.a(this.badgeImageUrl, localDisplayedAchievementTier.badgeImageUrl)) || (!ag.a(Boolean.valueOf(this.locked), Boolean.valueOf(localDisplayedAchievementTier.locked))));
    return true;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.value;
    arrayOfObject[1] = this.badgeImageUrl;
    arrayOfObject[2] = Boolean.valueOf(this.locked);
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.value;
    arrayOfObject[1] = this.badgeImageUrl;
    arrayOfObject[2] = Boolean.valueOf(this.locked);
    return String.format("value: %s, badgeImageUrl: %s, locked: %b", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.DisplayedAchievementTier
 * JD-Core Version:    0.6.2
 */