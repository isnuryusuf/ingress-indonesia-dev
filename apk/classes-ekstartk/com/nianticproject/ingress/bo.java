package com.nianticproject.ingress;

import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.h.ai;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;

final class bo extends n
{
  bo(NemesisActivity paramNemesisActivity, k paramk, NotificationSettings paramNotificationSettings, boolean paramBoolean)
  {
  }

  public final String a()
  {
    return "NemesisActivity:sendSetNotificationsRpc";
  }

  public final void a(ad paramad)
  {
    if (paramad != null)
    {
      this.a.b(this);
      NotificationSettings localNotificationSettings = new NotificationSettings(this.b.a(), this.c, this.b.c(), this.b.d(), this.b.e());
      this.a.a(localNotificationSettings);
      new ai(NemesisActivity.a(this.d).i(), localNotificationSettings).a();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.bo
 * JD-Core Version:    0.6.2
 */