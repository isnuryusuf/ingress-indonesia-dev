package com.nianticproject.ingress.multiphotos;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

final class bh extends BitmapDrawable
{
  private final WeakReference<bi> a;

  public bh(Resources paramResources, Bitmap paramBitmap, bi parambi)
  {
    super(paramResources, paramBitmap);
    this.a = new WeakReference(parambi);
  }

  public final bi a()
  {
    return (bi)this.a.get();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.bh
 * JD-Core Version:    0.6.2
 */