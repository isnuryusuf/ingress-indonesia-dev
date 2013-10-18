package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.google.a.c.hc;
import com.nianticproject.ingress.shared.f;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;
import com.nianticproject.ingress.shared.s;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public final class SimplePlayerPersonal
  implements PlayerPersonal, s
{

  @JsonProperty
  private boolean allowFactionChoice;

  @JsonProperty
  private boolean allowNicknameEdit;

  @JsonProperty
  private long ap;

  @JsonProperty
  private int clientLevel;
  private transient boolean dirty;

  @JsonProperty
  private int energy;

  @JsonProperty
  private f energyState;

  @JsonProperty
  private Map<String, Integer> mediaHighWaterMarks;

  @JsonProperty
  private NotificationSettings notificationSettings;

  @JsonProperty
  private ProfileSettings profileSettings;

  private SimplePlayerPersonal()
  {
    this.ap = 0L;
    this.energy = 0;
    this.clientLevel = 1;
    this.mediaHighWaterMarks = hc.b();
    this.energyState = f.b;
    this.allowNicknameEdit = false;
    this.allowFactionChoice = false;
    this.notificationSettings = new NotificationSettings(true, true, true, true, true);
    this.profileSettings = new ProfileSettings(true);
  }

  public SimplePlayerPersonal(int paramInt, long paramLong, Map<String, Integer> paramMap, f paramf, boolean paramBoolean1, boolean paramBoolean2, NotificationSettings paramNotificationSettings, ProfileSettings paramProfileSettings)
  {
    boolean bool1;
    if (paramInt >= 0)
    {
      bool1 = true;
      an.a(bool1);
      if (paramLong < 0L)
        break label154;
    }
    label154: for (boolean bool2 = true; ; bool2 = false)
    {
      an.a(bool2);
      an.a(paramMap);
      an.a(paramf);
      boolean bool3;
      if (paramInt == 0)
      {
        boolean bool4 = paramf.equals(f.b);
        bool3 = false;
        if (!bool4);
      }
      else
      {
        bool3 = true;
      }
      an.a(bool3);
      an.a(paramNotificationSettings);
      an.a(paramProfileSettings);
      this.ap = paramLong;
      this.energy = paramInt;
      this.clientLevel = 1;
      this.mediaHighWaterMarks = hc.b();
      this.mediaHighWaterMarks.putAll(paramMap);
      this.energyState = paramf;
      this.allowNicknameEdit = paramBoolean1;
      this.allowFactionChoice = paramBoolean2;
      this.notificationSettings = paramNotificationSettings;
      this.profileSettings = paramProfileSettings;
      return;
      bool1 = false;
      break;
    }
  }

  public SimplePlayerPersonal(String paramString, int paramInt)
  {
    this(paramString, paramInt, 0L, hc.b(), f.c, true, true, new NotificationSettings(true, true, true, true, true), new ProfileSettings(true));
  }

  public SimplePlayerPersonal(String paramString, int paramInt, long paramLong, f paramf, boolean paramBoolean)
  {
    this(paramString, paramInt, paramLong, hc.b(), paramf, paramBoolean, true, new NotificationSettings(true, true, true, true, true), new ProfileSettings(true));
  }

  public SimplePlayerPersonal(String paramString, int paramInt, long paramLong, Map<String, Integer> paramMap, f paramf, boolean paramBoolean1, boolean paramBoolean2, NotificationSettings paramNotificationSettings, ProfileSettings paramProfileSettings)
  {
    this(paramInt, paramLong, paramMap, paramf, paramBoolean1, paramBoolean2, paramNotificationSettings, paramProfileSettings);
  }

  public final boolean getAllowNicknameEdit()
  {
    return this.allowNicknameEdit;
  }

  public final boolean getAllowedFactionChoice()
  {
    return this.allowFactionChoice;
  }

  public final long getAp()
  {
    return this.ap;
  }

  public final int getClientLevel()
  {
    return this.clientLevel;
  }

  public final int getEnergyForRead()
  {
    return this.energy;
  }

  public final f getEnergyState()
  {
    return this.energyState;
  }

  public final Integer getMediaHighWaterMark(String paramString)
  {
    return (Integer)this.mediaHighWaterMarks.get(paramString);
  }

  public final dh<String, Integer> getMediaHighWaterMarks()
  {
    return dh.j().a(this.mediaHighWaterMarks).a();
  }

  public final NotificationSettings getNotificationSettings()
  {
    return this.notificationSettings;
  }

  public final ProfileSettings getProfileSettings()
  {
    return this.profileSettings;
  }

  public final boolean isDirty()
  {
    return this.dirty;
  }

  public final void setAllowNicknameEdit(boolean paramBoolean)
  {
    if (this.allowNicknameEdit != paramBoolean)
    {
      this.allowNicknameEdit = paramBoolean;
      this.dirty = true;
    }
  }

  public final void setAllowedFactionChoice(boolean paramBoolean)
  {
    if (this.allowFactionChoice != paramBoolean)
    {
      this.allowFactionChoice = paramBoolean;
      this.dirty = true;
    }
  }

  public final void setAp(long paramLong)
  {
    if (paramLong >= 0L);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      if (this.ap != paramLong)
      {
        this.ap = paramLong;
        this.dirty = true;
      }
      return;
    }
  }

  public final void setClean()
  {
    this.dirty = false;
  }

  public final void setClientLevel(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.clientLevel = paramInt;
      return;
    }
  }

  public final void setEnergyOnlyForPlayerService(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      if (this.energy != paramInt)
      {
        this.energy = paramInt;
        this.dirty = true;
      }
      return;
    }
  }

  public final void setEnergyStateOnlyForPlayerService(f paramf)
  {
    if (!this.energyState.equals(paramf))
    {
      this.energyState = paramf;
      this.dirty = true;
    }
  }

  public final void setMediaHighWaterMark(String paramString, int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.mediaHighWaterMarks.put(paramString, Integer.valueOf(paramInt));
      this.dirty = true;
      return;
    }
  }

  public final void setMediaHighWaterMarks(Map<String, Integer> paramMap)
  {
    this.mediaHighWaterMarks = hc.b();
    this.mediaHighWaterMarks.putAll(paramMap);
    this.dirty = true;
  }

  public final void setNotificationSettings(NotificationSettings paramNotificationSettings)
  {
    this.notificationSettings = paramNotificationSettings;
    this.dirty = true;
  }

  public final void setProfileSettings(ProfileSettings paramProfileSettings)
  {
    this.profileSettings = paramProfileSettings;
    this.dirty = true;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[9];
    arrayOfObject[0] = Integer.valueOf(this.energy);
    arrayOfObject[1] = Long.valueOf(this.ap);
    arrayOfObject[2] = Integer.valueOf(this.clientLevel);
    arrayOfObject[3] = this.mediaHighWaterMarks;
    String str1;
    String str2;
    if (this.dirty)
    {
      str1 = " [dirty]";
      arrayOfObject[4] = str1;
      if (!this.allowNicknameEdit)
        break label117;
      str2 = " [allowNicknameEdit]";
      label67: arrayOfObject[5] = str2;
      if (!this.allowFactionChoice)
        break label123;
    }
    label117: label123: for (String str3 = " [allowFactionChoice]"; ; str3 = "")
    {
      arrayOfObject[6] = str3;
      arrayOfObject[7] = this.notificationSettings;
      arrayOfObject[8] = this.profileSettings;
      return String.format("xm: %d, ap: %d, clientLevel: %d, sequences: %s, %s, %s, %s, notificationSettings: %s, profileSettings: %s", arrayOfObject);
      str1 = "";
      break;
      str2 = "";
      break label67;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimplePlayerPersonal
 * JD-Core Version:    0.6.2
 */