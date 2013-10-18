package com.nianticproject.ingress.f;

import android.graphics.Bitmap;
import com.nianticproject.ingress.service.j;
import java.lang.ref.WeakReference;
import java.util.HashMap;

final class l extends j
{
  l(k paramk)
  {
  }

  public final void a(long paramLong)
  {
    d locald = (d)k.d(this.a).remove(Long.valueOf(paramLong));
    if (locald != null)
      locald.a(null, false);
  }

  public final void a(long paramLong, Object paramObject)
  {
    Bitmap localBitmap = (Bitmap)paramObject;
    k.c(this.a).put(Long.valueOf(paramLong), new WeakReference(localBitmap));
    d locald = (d)k.d(this.a).remove(Long.valueOf(paramLong));
    if (locald != null)
      locald.a(localBitmap, true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.f.l
 * JD-Core Version:    0.6.2
 */