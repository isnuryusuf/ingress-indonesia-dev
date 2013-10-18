package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.a;
import com.google.android.gms.plus.b;

final class eh extends dv
{
  private final b b;

  public eh(eg parameg, b paramb)
  {
    this.b = paramb;
  }

  public final void a(int paramInt, Bundle paramBundle, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    PendingIntent localPendingIntent = null;
    if (paramBundle != null)
      localPendingIntent = (PendingIntent)paramBundle.getParcelable("pendingIntent");
    a locala = new a(paramInt, localPendingIntent);
    this.a.a(new ei(this.a, this.b, locala, paramParcelFileDescriptor));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eh
 * JD-Core Version:    0.6.2
 */