package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.nianticproject.ingress.shared.playerprofile.AvatarChoiceParams;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayer;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleAvatar
  implements Avatar, s
{

  @JsonProperty
  private AvatarLayer background;
  private transient boolean dirty;

  @JsonProperty
  private AvatarLayer foreground;

  SimpleAvatar()
  {
    this.foreground = null;
    this.background = null;
  }

  public SimpleAvatar(AvatarChoiceParams paramAvatarChoiceParams)
  {
    this.foreground = new AvatarLayer(paramAvatarChoiceParams.a(), paramAvatarChoiceParams.c());
    this.background = new AvatarLayer(paramAvatarChoiceParams.b(), paramAvatarChoiceParams.d());
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof SimpleAvatar));
    SimpleAvatar localSimpleAvatar;
    do
    {
      return false;
      localSimpleAvatar = (SimpleAvatar)paramObject;
    }
    while ((!ag.a(this.foreground, localSimpleAvatar.foreground)) || (!ag.a(this.background, localSimpleAvatar.background)) || (!ag.a(Boolean.valueOf(this.dirty), Boolean.valueOf(localSimpleAvatar.dirty))));
    return true;
  }

  public final AvatarLayer getBackground()
  {
    return this.background;
  }

  public final AvatarLayer getForeground()
  {
    return this.foreground;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.foreground;
    arrayOfObject[1] = this.background;
    arrayOfObject[2] = Boolean.valueOf(this.dirty);
    return ag.a(arrayOfObject);
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final String toString()
  {
    return ag.a(this).a("foreground", this.foreground).a("background", this.background).a("dirty", this.dirty).toString();
  }

  public final void updateAvatar(AvatarChoiceParams paramAvatarChoiceParams)
  {
    an.a(paramAvatarChoiceParams);
    AvatarLayer localAvatarLayer1 = new AvatarLayer(paramAvatarChoiceParams.a(), paramAvatarChoiceParams.c());
    AvatarLayer localAvatarLayer2 = new AvatarLayer(paramAvatarChoiceParams.b(), paramAvatarChoiceParams.d());
    if ((ag.a(this.foreground, localAvatarLayer1)) && (ag.a(this.background, localAvatarLayer2)))
      return;
    this.foreground = localAvatarLayer1;
    this.background = localAvatarLayer2;
    this.dirty = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleAvatar
 * JD-Core Version:    0.6.2
 */