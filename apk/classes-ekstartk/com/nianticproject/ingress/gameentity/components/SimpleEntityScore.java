package com.nianticproject.ingress.gameentity.components;

import java.util.logging.Level;
import java.util.logging.Logger;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleEntityScore
  implements EntityScore
{
  private static final Logger log = Logger.getLogger(SimpleEntityScore.class.getName());

  @JsonProperty
  private final long entityScore;

  private SimpleEntityScore()
  {
    this.entityScore = 0L;
  }

  public SimpleEntityScore(long paramLong)
  {
    if (paramLong <= 0L)
    {
      String str = "non-positive score: " + paramLong;
      log.log(Level.SEVERE, str, new RuntimeException(str));
    }
    this.entityScore = paramLong;
  }

  public long getScore()
  {
    return this.entityScore;
  }

  public String toString()
  {
    return "simpleEntityScore: " + this.entityScore;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleEntityScore
 * JD-Core Version:    0.6.2
 */