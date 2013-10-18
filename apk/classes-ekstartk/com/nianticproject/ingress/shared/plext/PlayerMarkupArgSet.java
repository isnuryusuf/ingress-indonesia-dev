package com.nianticproject.ingress.shared.plext;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.nianticproject.ingress.shared.ai;
import org.codehaus.jackson.annotate.JsonProperty;

public class PlayerMarkupArgSet
  implements a
{

  @JsonProperty
  private final String guid;

  @JsonProperty
  private final String plain;

  @JsonProperty
  private final ai team;

  private PlayerMarkupArgSet()
  {
    this.plain = null;
    this.guid = null;
    this.team = null;
  }

  private PlayerMarkupArgSet(String paramString1, String paramString2, ai paramai)
  {
    an.a(paramString1);
    an.a(paramai);
    this.plain = paramString1;
    this.guid = paramString2;
    this.team = paramai;
  }

  public static c a(String paramString1, String paramString2, ai paramai)
  {
    PlayerMarkupArgSet localPlayerMarkupArgSet = new PlayerMarkupArgSet(paramString1, paramString2, paramai);
    return new c(d.c, localPlayerMarkupArgSet);
  }

  public static String a(d paramd, String paramString)
  {
    switch (e.a[paramd.ordinal()])
    {
    default:
    case 2:
    case 1:
    case 3:
    }
    do
    {
      do
      {
        paramString = null;
        return paramString;
      }
      while ((paramString == null) || (!paramString.endsWith(": ")));
      return paramString.substring(0, -2 + paramString.length());
    }
    while ((paramString == null) || (!paramString.startsWith("@")));
    return paramString.substring(1, paramString.length());
  }

  public static String a(String paramString)
  {
    if (paramString == null)
      return null;
    return "@" + paramString;
  }

  public final ai a()
  {
    return this.team;
  }

  public final String b()
  {
    return this.plain;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PlayerMarkupArgSet localPlayerMarkupArgSet;
    do
    {
      return true;
      if (!(paramObject instanceof PlayerMarkupArgSet))
        return false;
      localPlayerMarkupArgSet = (PlayerMarkupArgSet)paramObject;
    }
    while ((this.plain.equals(localPlayerMarkupArgSet.plain)) && (this.team.equals(localPlayerMarkupArgSet.team)) && (ag.a(this.guid, localPlayerMarkupArgSet.guid)));
    return false;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.plain;
    arrayOfObject[1] = this.guid;
    arrayOfObject[2] = this.team;
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.plain;
    arrayOfObject[1] = this.team;
    return String.format("%s (%s)", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.plext.PlayerMarkupArgSet
 * JD-Core Version:    0.6.2
 */