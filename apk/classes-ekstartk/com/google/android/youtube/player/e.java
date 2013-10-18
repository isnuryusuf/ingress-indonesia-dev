package com.google.android.youtube.player;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;
import com.google.android.youtube.player.internal.c;

final class e
  implements DialogInterface.OnClickListener
{
  private final Activity a;
  private final Intent b;
  private final int c;

  public e(Activity paramActivity, Intent paramIntent)
  {
    this.a = ((Activity)c.a(paramActivity, "activity cannot be null"));
    this.b = ((Intent)c.a(paramIntent, "intent cannot be null"));
    this.c = ((Integer)c.a(Integer.valueOf(0), "requestCode cannot be null")).intValue();
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      this.a.startActivityForResult(this.b, this.c);
      paramDialogInterface.dismiss();
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.e("YouTubeAndroidPlayerAPI", String.format("Can't perform resolution for YouTubeInitalizationError", new Object[] { localActivityNotFoundException }));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.e
 * JD-Core Version:    0.6.2
 */