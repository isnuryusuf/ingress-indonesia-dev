package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public class AvatarChoiceParams
{

  @JsonProperty
  private final int backgroundColor;

  @JsonProperty
  private final String backgroundLayerId;

  @JsonProperty
  private final int foregroundColor;

  @JsonProperty
  private final String foregroundLayerId;

  private AvatarChoiceParams()
  {
    this.foregroundLayerId = "";
    this.backgroundLayerId = "";
    this.foregroundColor = 0;
    this.backgroundColor = 0;
  }

  public AvatarChoiceParams(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    this.foregroundLayerId = paramString1;
    this.backgroundLayerId = paramString2;
    this.foregroundColor = paramInt1;
    this.backgroundColor = paramInt2;
  }

  public final String a()
  {
    return this.foregroundLayerId;
  }

  public final String b()
  {
    return this.backgroundLayerId;
  }

  public final int c()
  {
    return this.foregroundColor;
  }

  public final int d()
  {
    return this.backgroundColor;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AvatarChoiceParams));
    AvatarChoiceParams localAvatarChoiceParams;
    do
    {
      return false;
      localAvatarChoiceParams = (AvatarChoiceParams)paramObject;
    }
    while ((!ag.a(this.foregroundLayerId, localAvatarChoiceParams.foregroundLayerId)) || (!ag.a(this.backgroundLayerId, localAvatarChoiceParams.backgroundLayerId)) || (!ag.a(Integer.valueOf(this.foregroundColor), Integer.valueOf(localAvatarChoiceParams.foregroundColor))) || (!ag.a(Integer.valueOf(this.backgroundColor), Integer.valueOf(localAvatarChoiceParams.backgroundColor))));
    return true;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.foregroundLayerId;
    arrayOfObject[1] = this.backgroundLayerId;
    arrayOfObject[2] = Integer.valueOf(this.foregroundColor);
    arrayOfObject[3] = Integer.valueOf(this.backgroundColor);
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.foregroundLayerId;
    arrayOfObject[1] = this.backgroundLayerId;
    arrayOfObject[2] = Integer.valueOf(this.foregroundColor);
    arrayOfObject[3] = Integer.valueOf(this.backgroundColor);
    return String.format("foregroundLayerId: %s, backgroundLayerId: %s, foregroundColor: %s, backgroundColor: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.AvatarChoiceParams
 * JD-Core Version:    0.6.2
 */