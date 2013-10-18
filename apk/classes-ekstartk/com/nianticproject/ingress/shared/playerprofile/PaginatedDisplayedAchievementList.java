package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import com.google.a.c.eq;
import java.util.List;
import org.codehaus.jackson.annotate.JsonProperty;

public class PaginatedDisplayedAchievementList
{

  @JsonProperty
  private final int continuationToken;

  @JsonProperty
  private final List<DisplayedAchievement> displayedAchievements;

  public PaginatedDisplayedAchievementList()
  {
    this.displayedAchievements = eq.a();
    this.continuationToken = -1;
  }

  public PaginatedDisplayedAchievementList(List<DisplayedAchievement> paramList, int paramInt)
  {
    this.displayedAchievements = paramList;
    this.continuationToken = paramInt;
  }

  public final List<DisplayedAchievement> a()
  {
    return this.displayedAchievements;
  }

  public final int b()
  {
    return this.continuationToken;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PaginatedDisplayedAchievementList));
    PaginatedDisplayedAchievementList localPaginatedDisplayedAchievementList;
    do
    {
      return false;
      localPaginatedDisplayedAchievementList = (PaginatedDisplayedAchievementList)paramObject;
    }
    while ((!ag.c(this.displayedAchievements, localPaginatedDisplayedAchievementList.displayedAchievements)) || (!ag.a(Integer.valueOf(this.continuationToken), Integer.valueOf(localPaginatedDisplayedAchievementList.continuationToken))));
    return true;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.displayedAchievements;
    arrayOfObject[1] = Integer.valueOf(this.continuationToken);
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.displayedAchievements;
    arrayOfObject[1] = Integer.valueOf(this.continuationToken);
    return String.format("displayedAchievements: %s, continuationToken: %d", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.PaginatedDisplayedAchievementList
 * JD-Core Version:    0.6.2
 */