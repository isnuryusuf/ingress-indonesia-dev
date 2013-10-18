package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;

public final class fk
  implements DialogInterface.OnClickListener
{
  private final Activity a;
  private final Intent b;
  private final int c;

  public fk(Activity paramActivity, Intent paramIntent)
  {
    this.a = paramActivity;
    this.b = paramIntent;
    this.c = 0;
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if (this.b != null)
        this.a.startActivityForResult(this.b, this.c);
      paramDialogInterface.dismiss();
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fk
 * JD-Core Version:    0.6.2
 */