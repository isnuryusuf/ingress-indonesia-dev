package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class af
{
  Context a;
  CharSequence b;
  CharSequence c;
  PendingIntent d;
  PendingIntent e;
  RemoteViews f;
  Bitmap g;
  CharSequence h;
  int i;
  int j;
  boolean k;
  am l;
  CharSequence m;
  int n;
  int o;
  boolean p;
  ArrayList<ac> q = new ArrayList();
  Notification r = new Notification();

  public af(Context paramContext)
  {
    this.a = paramContext;
    this.r.when = System.currentTimeMillis();
    this.r.audioStreamType = -1;
    this.j = 0;
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Notification localNotification2 = this.r;
      localNotification2.flags = (paramInt | localNotification2.flags);
      return;
    }
    Notification localNotification1 = this.r;
    localNotification1.flags &= (paramInt ^ 0xFFFFFFFF);
  }

  public final af a()
  {
    a(16, true);
    return this;
  }

  public final af a(int paramInt)
  {
    this.r.icon = paramInt;
    return this;
  }

  public final af a(long paramLong)
  {
    this.r.when = paramLong;
    return this;
  }

  public final af a(PendingIntent paramPendingIntent)
  {
    this.d = paramPendingIntent;
    return this;
  }

  public final af a(Bitmap paramBitmap)
  {
    this.g = paramBitmap;
    return this;
  }

  public final af a(Uri paramUri)
  {
    this.r.sound = paramUri;
    this.r.audioStreamType = -1;
    return this;
  }

  public final af a(am paramam)
  {
    if (this.l != paramam)
    {
      this.l = paramam;
      if (this.l != null)
      {
        am localam = this.l;
        if (localam.b != this)
        {
          localam.b = this;
          if (localam.b != null)
            localam.b.a(localam);
        }
      }
    }
    return this;
  }

  public final af a(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    return this;
  }

  public final af a(boolean paramBoolean)
  {
    a(8, paramBoolean);
    return this;
  }

  public final af b()
  {
    this.j = 1;
    return this;
  }

  public final af b(int paramInt)
  {
    this.r.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = this.r;
      localNotification.flags = (0x1 | localNotification.flags);
    }
    return this;
  }

  public final af b(PendingIntent paramPendingIntent)
  {
    this.r.deleteIntent = paramPendingIntent;
    return this;
  }

  public final af b(CharSequence paramCharSequence)
  {
    this.c = paramCharSequence;
    return this;
  }

  public final Notification c()
  {
    return ab.a().a(this);
  }

  public final af c(CharSequence paramCharSequence)
  {
    this.h = paramCharSequence;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.af
 * JD-Core Version:    0.6.2
 */