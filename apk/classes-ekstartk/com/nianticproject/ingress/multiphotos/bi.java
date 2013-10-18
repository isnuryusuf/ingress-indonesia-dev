package com.nianticproject.ingress.multiphotos;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.i.a;
import java.lang.ref.WeakReference;

final class bi extends AsyncTask<String, Void, Bitmap>
{
  private static final aa a = new aa("BitmapWorkerTask");
  private final f b;
  private final WeakReference<ImageView> c;
  private final Bitmap d;
  private String e = null;
  private final WeakReference<bj> f;

  public bi(f paramf, ImageView paramImageView, Bitmap paramBitmap, bj parambj)
  {
    this.b = paramf;
    this.d = paramBitmap;
    this.c = new WeakReference(paramImageView);
    if (parambj != null)
    {
      this.f = new WeakReference(parambj);
      return;
    }
    this.f = null;
  }

  private Bitmap a(String[] paramArrayOfString)
  {
    this.e = paramArrayOfString[0];
    Object localObject;
    if (this.b != null)
    {
      localObject = this.b.a(this.e);
      if (localObject == null)
        break label36;
    }
    while (true)
    {
      return localObject;
      localObject = null;
      label36: if (a.a(this.e))
      {
        ImageView localImageView = (ImageView)this.c.get();
        if (localImageView == null)
          return null;
        localObject = BitmapFactory.decodeResource(localImageView.getResources(), 2130837599);
      }
      while ((this.b != null) && (localObject != null))
      {
        this.b.a(this.e, (Bitmap)localObject);
        return localObject;
        try
        {
          Bitmap localBitmap = bg.a(this.e);
          localObject = localBitmap;
        }
        catch (Exception localException)
        {
          a.a(localException, "Exception while downloading photo: " + this.e);
        }
      }
    }
  }

  protected final void onPreExecute()
  {
    ImageView localImageView = (ImageView)this.c.get();
    if (localImageView != null)
      localImageView.setTag(2131230727, null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.bi
 * JD-Core Version:    0.6.2
 */