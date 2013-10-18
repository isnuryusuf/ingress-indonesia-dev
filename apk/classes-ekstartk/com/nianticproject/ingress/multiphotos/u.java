package com.nianticproject.ingress.multiphotos;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Html.ImageGetter;
import android.widget.TextView;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

final class u
  implements Html.ImageGetter
{
  u(t paramt)
  {
  }

  public final Drawable getDrawable(String paramString)
  {
    try
    {
      f localf = this.a.c.g().a();
      if (localf != null)
      {
        Bitmap localBitmap1 = localf.a(paramString);
        if (localBitmap1 != null)
        {
          BitmapDrawable localBitmapDrawable1 = new BitmapDrawable(this.a.b.getResources(), localBitmap1);
          localBitmapDrawable1.setBounds(0, 0, localBitmapDrawable1.getIntrinsicWidth(), localBitmapDrawable1.getIntrinsicHeight());
          return localBitmapDrawable1;
        }
      }
      Bitmap localBitmap2 = BitmapFactory.decodeStream(new URL(paramString).openConnection().getInputStream());
      if (localBitmap2 != null)
      {
        if (localf != null)
          localf.a(paramString, localBitmap2);
        BitmapDrawable localBitmapDrawable2 = new BitmapDrawable(this.a.b.getResources(), localBitmap2);
        localBitmapDrawable2.setBounds(0, 0, localBitmapDrawable2.getIntrinsicWidth(), localBitmapDrawable2.getIntrinsicHeight());
        return localBitmapDrawable2;
      }
    }
    catch (IOException localIOException)
    {
      return null;
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.u
 * JD-Core Version:    0.6.2
 */