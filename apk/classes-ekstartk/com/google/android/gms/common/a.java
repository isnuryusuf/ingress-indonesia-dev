package com.google.android.gms.common;

import android.app.PendingIntent;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;

public final class a
{
  public static final a a = new a(0, null);
  private final PendingIntent b;
  private final int c;

  public a(int paramInt, PendingIntent paramPendingIntent)
  {
    this.c = paramInt;
    this.b = paramPendingIntent;
  }

  public final boolean a()
  {
    return this.c == 0;
  }

  public final String toString()
  {
    gf localgf = ge.a(this);
    String str;
    switch (this.c)
    {
    default:
      str = "unknown status code " + this.c;
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    }
    while (true)
    {
      return localgf.a("statusCode", str).a("resolution", this.b).toString();
      str = "SUCCESS";
      continue;
      str = "SERVICE_MISSING";
      continue;
      str = "SERVICE_VERSION_UPDATE_REQUIRED";
      continue;
      str = "SERVICE_DISABLED";
      continue;
      str = "SIGN_IN_REQUIRED";
      continue;
      str = "INVALID_ACCOUNT";
      continue;
      str = "RESOLUTION_REQUIRED";
      continue;
      str = "NETWORK_ERROR";
      continue;
      str = "INTERNAL_ERROR";
      continue;
      str = "SERVICE_INVALID";
      continue;
      str = "DEVELOPER_ERROR";
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.a
 * JD-Core Version:    0.6.2
 */