package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import com.google.a.d.u;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class NotificationSettingsParams
  implements GameplayRpcParams, l
{

  @JsonProperty
  private GameplayRpcParams.ClientBasket clientBasket = new GameplayRpcParams.ClientBasket();

  @JsonProperty
  private Set<String> energyGlobGuids;

  @JsonProperty
  private Long knobSyncTimestamp;

  @JsonProperty
  private u location;

  @JsonProperty
  private final NotificationSettings notificationSettings;

  private NotificationSettingsParams()
  {
    this.location = null;
    this.energyGlobGuids = null;
    this.knobSyncTimestamp = null;
    this.notificationSettings = null;
  }

  public NotificationSettingsParams(NotificationSettings paramNotificationSettings)
  {
    this.notificationSettings = ((NotificationSettings)an.a(paramNotificationSettings));
  }

  public final GameplayRpcParams.ClientBasket a()
  {
    return this.clientBasket;
  }

  public final void a(long paramLong)
  {
  }

  public final void a(u paramu)
  {
    this.location = paramu;
  }

  public final void a(Set<String> paramSet)
  {
    this.energyGlobGuids = paramSet;
  }

  public final int b()
  {
    return this.notificationSettings.hashCode();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.NotificationSettingsParams
 * JD-Core Version:    0.6.2
 */