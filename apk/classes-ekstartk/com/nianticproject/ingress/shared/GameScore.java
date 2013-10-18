package com.nianticproject.ingress.shared;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public final class GameScore
{

  @JsonProperty
  private final long alienScore = 0L;

  @JsonProperty
  private final long resistanceScore = 0L;

  public final long a()
  {
    return this.alienScore;
  }

  public final long b()
  {
    return this.resistanceScore;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    GameScore localGameScore;
    do
    {
      return true;
      if (!(paramObject instanceof GameScore))
        return false;
      localGameScore = (GameScore)paramObject;
    }
    while ((this.alienScore == localGameScore.alienScore) && (this.resistanceScore == localGameScore.resistanceScore));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(this.alienScore);
    arrayOfObject[1] = Long.valueOf(this.resistanceScore);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return "aliens: " + this.alienScore + ", resistance: " + this.resistanceScore;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.GameScore
 * JD-Core Version:    0.6.2
 */