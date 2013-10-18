package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public class AvatarLayerOption
{

  @JsonProperty
  private final String id;

  @JsonProperty
  private final String imageUrl;

  @JsonProperty
  private final a layer;

  public AvatarLayerOption()
  {
    this.id = null;
    this.imageUrl = null;
    this.layer = null;
  }

  private AvatarLayerOption(String paramString1, String paramString2, a parama)
  {
    this.id = paramString1;
    this.imageUrl = paramString2;
    this.layer = ((a)an.a(parama));
  }

  public static AvatarLayerOption a(AvatarLayer paramAvatarLayer, a parama)
  {
    return new AvatarLayerOption(paramAvatarLayer.a(), paramAvatarLayer.c(), parama);
  }

  public final String a()
  {
    return this.id;
  }

  public final String b()
  {
    return this.imageUrl;
  }

  public final a c()
  {
    return this.layer;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AvatarLayerOption));
    AvatarLayerOption localAvatarLayerOption;
    do
    {
      return false;
      localAvatarLayerOption = (AvatarLayerOption)paramObject;
    }
    while ((!ag.a(this.id, localAvatarLayerOption.id)) || (!ag.a(this.imageUrl, localAvatarLayerOption.imageUrl)) || (!ag.a(this.layer, localAvatarLayerOption.layer)));
    return true;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.id;
    arrayOfObject[1] = this.imageUrl;
    arrayOfObject[2] = this.layer;
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.id;
    arrayOfObject[1] = this.imageUrl;
    arrayOfObject[2] = this.layer;
    return String.format("id: %s, imageUrl: %s, layer: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption
 * JD-Core Version:    0.6.2
 */