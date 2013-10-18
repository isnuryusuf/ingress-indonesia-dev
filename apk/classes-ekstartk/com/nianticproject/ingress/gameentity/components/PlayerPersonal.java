package com.nianticproject.ingress.gameentity.components;

import com.google.a.c.dh;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.shared.f;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;
import java.util.Map;

public abstract interface PlayerPersonal extends a
{
  public abstract boolean getAllowNicknameEdit();

  public abstract boolean getAllowedFactionChoice();

  public abstract long getAp();

  public abstract int getClientLevel();

  public abstract int getEnergyForRead();

  public abstract f getEnergyState();

  public abstract Integer getMediaHighWaterMark(String paramString);

  public abstract dh<String, Integer> getMediaHighWaterMarks();

  public abstract NotificationSettings getNotificationSettings();

  public abstract ProfileSettings getProfileSettings();

  public abstract void setAllowNicknameEdit(boolean paramBoolean);

  public abstract void setAllowedFactionChoice(boolean paramBoolean);

  public abstract void setAp(long paramLong);

  public abstract void setClientLevel(int paramInt);

  public abstract void setEnergyOnlyForPlayerService(int paramInt);

  public abstract void setEnergyStateOnlyForPlayerService(f paramf);

  public abstract void setMediaHighWaterMark(String paramString, int paramInt);

  public abstract void setMediaHighWaterMarks(Map<String, Integer> paramMap);

  public abstract void setNotificationSettings(NotificationSettings paramNotificationSettings);

  public abstract void setProfileSettings(ProfileSettings paramProfileSettings);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.PlayerPersonal
 * JD-Core Version:    0.6.2
 */