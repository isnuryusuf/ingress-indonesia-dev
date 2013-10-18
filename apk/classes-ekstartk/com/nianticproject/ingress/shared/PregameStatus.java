package com.nianticproject.ingress.shared;

import com.google.a.a.an;
import com.google.a.c.dh;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PregameStatus
{

  @JsonProperty
  private final y action;

  @JsonProperty
  private final String dialogText;

  @JsonProperty
  private final PregameStatus.UserAction negativeUserAction;

  @JsonProperty
  private final PregameStatus.UserAction positiveUserAction;

  private PregameStatus()
  {
    this.action = null;
    this.dialogText = null;
    this.positiveUserAction = null;
    this.negativeUserAction = null;
  }

  public PregameStatus(y paramy, String paramString, PregameStatus.UserAction paramUserAction1, PregameStatus.UserAction paramUserAction2)
  {
    this.action = ((y)an.a(paramy));
    this.dialogText = paramString;
    this.positiveUserAction = paramUserAction1;
    this.negativeUserAction = paramUserAction2;
  }

  public static PregameStatus.UserAction a(String paramString)
  {
    return new PregameStatus.UserAction(paramString, z.b, null);
  }

  public static PregameStatus.UserAction b(String paramString)
  {
    Object localObject;
    switch (x.a[ag.a.ordinal()])
    {
    default:
      localObject = null;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return new PregameStatus.UserAction(paramString, z.c, dh.b("URI", localObject));
      localObject = "https://nemesis.googleplex.com/static/Nemesis-Android-opt.apk";
      continue;
      localObject = "market://details?id=com.nianticproject.ingress";
    }
  }

  public final y a()
  {
    return this.action;
  }

  public final String b()
  {
    return this.dialogText;
  }

  public final PregameStatus.UserAction c()
  {
    return this.positiveUserAction;
  }

  public final PregameStatus.UserAction d()
  {
    return this.negativeUserAction;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.action;
    return String.format("ServerCommand: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.PregameStatus
 * JD-Core Version:    0.6.2
 */