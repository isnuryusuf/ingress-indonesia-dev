package com.nianticproject.ingress.service;

import android.graphics.Bitmap;
import android.net.Uri;
import com.nianticproject.ingress.o.h;
import com.nianticproject.ingress.shared.q;
import java.io.File;

public abstract interface i
{
  public abstract void a(int paramInt, com.nianticproject.ingress.shared.rpc.u paramu);

  public abstract void a(int paramInt, String paramString);

  public abstract void a(long paramLong);

  public abstract void a(long paramLong, Object paramObject);

  public abstract void a(Uri paramUri);

  public abstract void a(Uri paramUri1, Uri paramUri2, Bitmap paramBitmap);

  public abstract void a(Uri paramUri, com.google.a.d.u paramu);

  public abstract void a(Uri paramUri, h paramh);

  public abstract void a(q paramq);

  public abstract void a(File paramFile);

  public abstract void a(String paramString);

  public abstract void a(String paramString, Bitmap paramBitmap);

  public abstract void e();

  public abstract void f();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.i
 * JD-Core Version:    0.6.2
 */