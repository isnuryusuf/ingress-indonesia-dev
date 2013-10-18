package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;

final class dt extends AsyncTask<ParcelFileDescriptor, Void, Bitmap>
{
  private final int b;

  dt(ds paramds, int paramInt)
  {
    this.b = paramInt;
  }

  private Bitmap a(ParcelFileDescriptor[] paramArrayOfParcelFileDescriptor)
  {
    ParcelFileDescriptor localParcelFileDescriptor = paramArrayOfParcelFileDescriptor[0];
    try
    {
      Bitmap localBitmap1 = BitmapFactory.decodeFileDescriptor(localParcelFileDescriptor.getFileDescriptor());
      if (this.b > 0)
      {
        Bitmap localBitmap2 = ds.a(localBitmap1, this.b);
        try
        {
          localParcelFileDescriptor.close();
          return localBitmap2;
        }
        catch (IOException localIOException3)
        {
          Log.e("PlusImageView", "closed failed", localIOException3);
          return localBitmap2;
        }
      }
      try
      {
        localParcelFileDescriptor.close();
        return localBitmap1;
      }
      catch (IOException localIOException2)
      {
        Log.e("PlusImageView", "closed failed", localIOException2);
        return localBitmap1;
      }
    }
    finally
    {
    }
    try
    {
      localParcelFileDescriptor.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Log.e("PlusImageView", "closed failed", localIOException1);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dt
 * JD-Core Version:    0.6.2
 */