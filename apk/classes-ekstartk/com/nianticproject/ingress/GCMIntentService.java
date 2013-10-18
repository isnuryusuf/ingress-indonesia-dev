package com.nianticproject.ingress;

import android.content.Context;
import android.content.Intent;
import com.google.android.gcm.GCMBaseIntentService;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.push.NemesisNotificationsService;

public class GCMIntentService extends GCMBaseIntentService
{
  private static final aa a = new aa(GCMIntentService.class);

  public GCMIntentService()
  {
    super(new String[] { "589210111770" });
  }

  protected final void a(Context paramContext, Intent paramIntent)
  {
    NemesisNotificationsService.a(paramContext, paramIntent);
  }

  protected final void a(Context paramContext, String paramString)
  {
    NemesisNotificationsService.a(paramContext, paramString);
  }

  protected final void a(String paramString)
  {
    a.c("Error in GCM service: " + paramString);
  }

  protected final void b(String paramString)
  {
    new StringBuilder("unregistered ID: ").append(paramString).toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.GCMIntentService
 * JD-Core Version:    0.6.2
 */