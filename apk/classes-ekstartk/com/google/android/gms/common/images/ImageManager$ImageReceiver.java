package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.util.Log;
import com.google.android.gms.internal.e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;

public final class ImageManager$ImageReceiver extends ResultReceiver
{
  private final Uri b;
  private final ArrayList<ImageManager.ListenerHolder> c;

  public final void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    ParcelFileDescriptor localParcelFileDescriptor = (ParcelFileDescriptor)paramBundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
    Bitmap localBitmap;
    if (localParcelFileDescriptor != null)
      localBitmap = BitmapFactory.decodeFileDescriptor(localParcelFileDescriptor.getFileDescriptor());
    try
    {
      localParcelFileDescriptor.close();
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(ImageManager.a(this.a).getResources(), localBitmap);
      ImageManager.b(this.a).a(this.b, new WeakReference(localBitmapDrawable.getConstantState()));
      ImageManager.c(this.a).remove(this.b);
      int i = 0;
      int j = this.c.size();
      while (i < j)
      {
        this.c.get(i);
        i++;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
        Log.e("ImageManager", "closed failed", localIOException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.ImageReceiver
 * JD-Core Version:    0.6.2
 */