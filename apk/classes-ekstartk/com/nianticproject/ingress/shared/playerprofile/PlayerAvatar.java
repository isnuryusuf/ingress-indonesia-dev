package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public class PlayerAvatar
{

  @JsonProperty
  private final int avatarColorBackground = 0;

  @JsonProperty
  private final int avatarColorForeground = 0;

  @JsonProperty
  private final AvatarLayerOption backgroundLayer = null;

  @JsonProperty
  private final AvatarLayerOption foregroundLayer = null;

  public final AvatarLayerOption a()
  {
    return this.foregroundLayer;
  }

  public final AvatarLayerOption b()
  {
    return this.backgroundLayer;
  }

  public final int c()
  {
    return this.avatarColorForeground;
  }

  public final int d()
  {
    return this.avatarColorBackground;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PlayerAvatar));
    PlayerAvatar localPlayerAvatar;
    do
    {
      return false;
      localPlayerAvatar = (PlayerAvatar)paramObject;
    }
    while ((!ag.a(this.backgroundLayer, localPlayerAvatar.backgroundLayer)) || (!ag.a(this.foregroundLayer, localPlayerAvatar.foregroundLayer)) || (this.avatarColorForeground != localPlayerAvatar.avatarColorForeground) || (this.avatarColorBackground != localPlayerAvatar.avatarColorBackground));
    return true;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.backgroundLayer;
    arrayOfObject[1] = this.foregroundLayer;
    arrayOfObject[2] = Integer.valueOf(this.avatarColorForeground);
    arrayOfObject[3] = Integer.valueOf(this.avatarColorBackground);
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.backgroundLayer;
    arrayOfObject[1] = this.foregroundLayer;
    arrayOfObject[2] = Integer.toHexString(this.avatarColorForeground);
    arrayOfObject[3] = Integer.toHexString(this.avatarColorBackground);
    return String.format("backgroundLayer: %s, foregroundLayer: %s, avatarColorForeground: #%s, avatarColorBackground: #%s, ", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.PlayerAvatar
 * JD-Core Version:    0.6.2
 */