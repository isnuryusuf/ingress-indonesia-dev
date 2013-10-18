package com.nianticproject.ingress.multiphotos;

import android.graphics.Bitmap;
import android.support.v4.c.c;
import android.text.TextUtils;
import com.google.a.a.an;

public final class d
  implements f
{
  private final c<String, Bitmap> a;

  public d(long paramLong)
  {
    if (paramLong >= 1024L);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "maxSizeButes should be at least 1024 bytes");
      this.a = new e(this, (int)(paramLong / 1024L));
      return;
    }
  }

  public final Bitmap a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Key must never be empty or null!");
      return (Bitmap)this.a.a(paramString);
    }
  }

  public final void a()
  {
    this.a.a();
  }

  public final void a(String paramString, Bitmap paramBitmap)
  {
    boolean bool;
    if (!TextUtils.isEmpty(paramString))
      bool = true;
    while (true)
    {
      an.a(bool, "Key must never be empty or null!");
      an.a(paramBitmap, "Bitmap must never be null!");
      synchronized (this.a)
      {
        if (a(paramString) == null)
          this.a.a(paramString, paramBitmap);
        return;
        bool = false;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.d
 * JD-Core Version:    0.6.2
 */