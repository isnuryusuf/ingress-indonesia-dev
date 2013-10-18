package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import com.google.a.c.eq;
import java.util.List;
import org.codehaus.jackson.annotate.JsonProperty;

public class AvatarOptions
{

  @JsonProperty
  private final List<Integer> backgroundColorOptions = eq.a();

  @JsonProperty
  private final List<AvatarLayerOption> backgroundOptions = eq.a();

  @JsonProperty
  private final List<Integer> foregroundColorOptions = eq.a();

  @JsonProperty
  private final List<AvatarLayerOption> foregroundOptions = eq.a();

  public final List<AvatarLayerOption> a()
  {
    return this.foregroundOptions;
  }

  public final List<AvatarLayerOption> b()
  {
    return this.backgroundOptions;
  }

  public final List<Integer> c()
  {
    return this.foregroundColorOptions;
  }

  public final List<Integer> d()
  {
    return this.backgroundColorOptions;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AvatarOptions));
    AvatarOptions localAvatarOptions;
    do
    {
      return false;
      localAvatarOptions = (AvatarOptions)paramObject;
    }
    while ((!ag.c(this.foregroundOptions, localAvatarOptions.foregroundOptions)) || (!ag.c(this.backgroundOptions, localAvatarOptions.backgroundOptions)) || (!ag.c(this.foregroundColorOptions, localAvatarOptions.foregroundColorOptions)) || (!ag.c(this.backgroundColorOptions, localAvatarOptions.backgroundColorOptions)));
    return true;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.foregroundOptions;
    arrayOfObject[1] = this.backgroundOptions;
    arrayOfObject[2] = this.foregroundColorOptions;
    arrayOfObject[3] = this.backgroundColorOptions;
    return ag.a(arrayOfObject);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.foregroundOptions;
    arrayOfObject[1] = this.backgroundOptions;
    arrayOfObject[2] = this.foregroundColorOptions;
    arrayOfObject[3] = this.backgroundColorOptions;
    return String.format("foregroundOptions: %s, backgroundOptions: %s, foregroundColorOptions: %s, backgroundColorOptions: %s, ", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.AvatarOptions
 * JD-Core Version:    0.6.2
 */