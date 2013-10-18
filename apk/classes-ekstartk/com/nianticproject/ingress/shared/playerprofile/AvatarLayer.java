package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import com.google.a.a.ah;
import org.codehaus.jackson.annotate.JsonProperty;

public final class AvatarLayer
{

  @JsonProperty
  private String imageUrl;

  @JsonProperty
  private final String layerId;

  @JsonProperty
  private final int tintColor;

  private AvatarLayer()
  {
    this.layerId = "";
    this.tintColor = 0;
    this.imageUrl = "";
  }

  public AvatarLayer(String paramString, int paramInt)
  {
    this.layerId = paramString;
    this.tintColor = paramInt;
    this.imageUrl = "";
  }

  public final String a()
  {
    return this.layerId;
  }

  public final int b()
  {
    return this.tintColor;
  }

  public final String c()
  {
    return this.imageUrl;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AvatarLayer));
    AvatarLayer localAvatarLayer;
    do
    {
      return false;
      localAvatarLayer = (AvatarLayer)paramObject;
    }
    while ((!ag.a(this.layerId, localAvatarLayer.layerId)) || (!ag.a(Integer.valueOf(this.tintColor), Integer.valueOf(localAvatarLayer.tintColor))) || (!ag.a(this.imageUrl, localAvatarLayer.imageUrl)));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.layerId;
    arrayOfObject[1] = Integer.valueOf(this.tintColor);
    arrayOfObject[2] = this.imageUrl;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return ag.a(this).a("layerId", this.layerId).a("tintColor", this.tintColor).a("imageUrl", this.imageUrl).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.AvatarLayer
 * JD-Core Version:    0.6.2
 */