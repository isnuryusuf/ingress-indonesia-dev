package com.google.android.youtube.player;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import com.google.android.youtube.player.internal.al;
import com.google.android.youtube.player.internal.bi;

public enum c
{
  static
  {
    c[] arrayOfc = new c[12];
    arrayOfc[0] = a;
    arrayOfc[1] = b;
    arrayOfc[2] = c;
    arrayOfc[3] = d;
    arrayOfc[4] = e;
    arrayOfc[5] = f;
    arrayOfc[6] = g;
    arrayOfc[7] = h;
    arrayOfc[8] = i;
    arrayOfc[9] = j;
    arrayOfc[10] = k;
    arrayOfc[11] = l;
  }

  public final Dialog a(Activity paramActivity, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    if (paramOnCancelListener != null)
      localBuilder.setOnCancelListener(paramOnCancelListener);
    Intent localIntent;
    switch (d.a[ordinal()])
    {
    default:
      localIntent = null;
    case 1:
    case 3:
    case 2:
    }
    e locale;
    al localal;
    while (true)
    {
      locale = new e(paramActivity, localIntent);
      localal = new al(paramActivity);
      switch (d.a[ordinal()])
      {
      default:
        throw new IllegalArgumentException("Unexpected errorReason: " + name());
        localIntent = bi.b(bi.a(paramActivity));
        continue;
        localIntent = bi.a(bi.a(paramActivity));
      case 1:
      case 2:
      case 3:
      }
    }
    return localBuilder.setTitle(localal.b).setMessage(localal.c).setPositiveButton(localal.d, locale).create();
    return localBuilder.setTitle(localal.e).setMessage(localal.f).setPositiveButton(localal.g, locale).create();
    return localBuilder.setTitle(localal.h).setMessage(localal.i).setPositiveButton(localal.j, locale).create();
  }

  public final boolean a()
  {
    switch (d.a[ordinal()])
    {
    default:
      return false;
    case 1:
    case 2:
    case 3:
    }
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.c
 * JD-Core Version:    0.6.2
 */