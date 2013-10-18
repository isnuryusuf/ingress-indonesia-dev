package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public final class NotificationSettings
{

  @JsonProperty
  private final boolean maySendPromoEmail;

  @JsonProperty
  private final boolean shouldPushNotifyForAtPlayer;

  @JsonProperty
  private final boolean shouldPushNotifyForInvitesAndFactionInfo;

  @JsonProperty
  private final boolean shouldPushNotifyForPortalAttacks;

  @JsonProperty
  private final boolean shouldSendEmail;

  public NotificationSettings()
  {
    this.shouldSendEmail = true;
    this.maySendPromoEmail = false;
    this.shouldPushNotifyForAtPlayer = true;
    this.shouldPushNotifyForPortalAttacks = true;
    this.shouldPushNotifyForInvitesAndFactionInfo = true;
  }

  public NotificationSettings(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    this.shouldSendEmail = paramBoolean1;
    this.maySendPromoEmail = paramBoolean2;
    this.shouldPushNotifyForAtPlayer = paramBoolean3;
    this.shouldPushNotifyForPortalAttacks = paramBoolean4;
    this.shouldPushNotifyForInvitesAndFactionInfo = paramBoolean5;
  }

  public final boolean a()
  {
    return this.shouldSendEmail;
  }

  public final boolean b()
  {
    return this.maySendPromoEmail;
  }

  public final boolean c()
  {
    return this.shouldPushNotifyForAtPlayer;
  }

  public final boolean d()
  {
    return this.shouldPushNotifyForPortalAttacks;
  }

  public final boolean e()
  {
    return this.shouldPushNotifyForInvitesAndFactionInfo;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof NotificationSettings));
    NotificationSettings localNotificationSettings;
    do
    {
      return false;
      localNotificationSettings = (NotificationSettings)paramObject;
    }
    while ((this.maySendPromoEmail != localNotificationSettings.maySendPromoEmail) || (this.shouldSendEmail != localNotificationSettings.shouldSendEmail) || (this.shouldPushNotifyForAtPlayer != localNotificationSettings.shouldPushNotifyForAtPlayer) || (this.shouldPushNotifyForPortalAttacks != localNotificationSettings.shouldPushNotifyForPortalAttacks) || (this.shouldPushNotifyForInvitesAndFactionInfo != localNotificationSettings.shouldPushNotifyForInvitesAndFactionInfo));
    return true;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Boolean.valueOf(this.shouldSendEmail);
    arrayOfObject[1] = Boolean.valueOf(this.maySendPromoEmail);
    arrayOfObject[2] = Boolean.valueOf(this.shouldPushNotifyForAtPlayer);
    arrayOfObject[3] = Boolean.valueOf(this.shouldPushNotifyForPortalAttacks);
    arrayOfObject[4] = Boolean.valueOf(this.shouldPushNotifyForInvitesAndFactionInfo);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Boolean.valueOf(this.shouldSendEmail);
    arrayOfObject[1] = Boolean.valueOf(this.maySendPromoEmail);
    arrayOfObject[2] = Boolean.valueOf(this.shouldPushNotifyForAtPlayer);
    arrayOfObject[3] = Boolean.valueOf(this.shouldPushNotifyForPortalAttacks);
    arrayOfObject[4] = Boolean.valueOf(this.shouldPushNotifyForInvitesAndFactionInfo);
    return String.format("shouldSendEmail: %s, maySendPromoEmail: %s, shouldPushNotifyForAtPlayer %s, shouldPushNotifyForPortalAttacks: %s, shouldPushNotifyForInvitesAndFactionInfo %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.NotificationSettings
 * JD-Core Version:    0.6.2
 */