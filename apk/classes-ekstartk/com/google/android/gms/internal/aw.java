package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public abstract interface aw extends IInterface
{
  public abstract Location a();

  public abstract void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent);

  public abstract void a(PendingIntent paramPendingIntent);

  public abstract void a(PendingIntent paramPendingIntent, as paramas, String paramString);

  public abstract void a(ao paramao);

  public abstract void a(as paramas, String paramString);

  public abstract void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent);

  public abstract void a(LocationRequest paramLocationRequest, ao paramao);

  public abstract void a(List<cf> paramList, PendingIntent paramPendingIntent, as paramas, String paramString);

  public abstract void a(String[] paramArrayOfString, as paramas, String paramString);

  public abstract void b(PendingIntent paramPendingIntent);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aw
 * JD-Core Version:    0.6.2
 */