package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import com.google.android.gms.internal.e;
import java.lang.ref.WeakReference;
import java.util.Map;

public final class ImageManager
{
  private final Context a;
  private final e<Uri, WeakReference<Drawable.ConstantState>> b;
  private final Map<Uri, ImageManager.ImageReceiver> c;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.images.ImageManager
 * JD-Core Version:    0.6.2
 */