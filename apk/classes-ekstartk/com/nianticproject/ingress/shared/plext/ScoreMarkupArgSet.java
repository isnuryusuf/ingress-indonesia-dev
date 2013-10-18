package com.nianticproject.ingress.shared.plext;

import com.nianticproject.ingress.shared.ai;
import org.codehaus.jackson.annotate.JsonProperty;

public class ScoreMarkupArgSet
  implements a
{

  @JsonProperty
  private final long aliensScore;

  @JsonProperty
  private final String plain;

  @JsonProperty
  private final long resistanceScore;

  public ScoreMarkupArgSet()
  {
    this.plain = null;
    this.resistanceScore = 0L;
    this.aliensScore = 0L;
  }

  private ScoreMarkupArgSet(String paramString, long paramLong1, long paramLong2)
  {
    this.plain = paramString;
    this.resistanceScore = paramLong1;
    this.aliensScore = paramLong2;
  }

  public static c a(long paramLong1, long paramLong2)
  {
    return new c(d.h, new ScoreMarkupArgSet(b(paramLong1, paramLong2), paramLong1, paramLong2));
  }

  private static String b(long paramLong1, long paramLong2)
  {
    if (paramLong2 < paramLong1)
    {
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = ai.a.a();
      arrayOfObject2[1] = Long.valueOf(paramLong1);
      arrayOfObject2[2] = ai.b.a();
      arrayOfObject2[3] = Long.valueOf(paramLong2);
      return String.format("%s %s - %s %s", arrayOfObject2);
    }
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = ai.b.a();
    arrayOfObject1[1] = Long.valueOf(paramLong2);
    arrayOfObject1[2] = ai.a.a();
    arrayOfObject1[3] = Long.valueOf(paramLong1);
    return String.format("%s %s - %s %s", arrayOfObject1);
  }

  public final long a()
  {
    return this.resistanceScore;
  }

  public final String b()
  {
    return this.plain;
  }

  public final long c()
  {
    return this.aliensScore;
  }

  public String toString()
  {
    return b(this.resistanceScore, this.aliensScore);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.plext.ScoreMarkupArgSet
 * JD-Core Version:    0.6.2
 */