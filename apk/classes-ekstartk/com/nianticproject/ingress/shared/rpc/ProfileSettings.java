package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import com.google.a.a.ah;
import org.codehaus.jackson.annotate.JsonProperty;

public final class ProfileSettings
{

  @JsonProperty
  private final boolean areMetricsPublic;

  public ProfileSettings()
  {
    this.areMetricsPublic = true;
  }

  public ProfileSettings(boolean paramBoolean)
  {
    this.areMetricsPublic = paramBoolean;
  }

  public final boolean a()
  {
    return this.areMetricsPublic;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ProfileSettings));
    ProfileSettings localProfileSettings;
    do
    {
      return false;
      localProfileSettings = (ProfileSettings)paramObject;
    }
    while (this.areMetricsPublic != localProfileSettings.areMetricsPublic);
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(this.areMetricsPublic);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    return ag.a(this).a("areMetricsPublic", this.areMetricsPublic).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.ProfileSettings
 * JD-Core Version:    0.6.2
 */