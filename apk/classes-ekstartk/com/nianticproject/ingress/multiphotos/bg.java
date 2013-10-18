package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.a.a.an;
import com.nianticproject.ingress.ec;
import java.net.URL;

public final class bg
{
  private final f a;
  private final Bitmap b;
  private final Bitmap c;

  public bg(f paramf)
  {
    this(paramf, null, null);
  }

  public bg(f paramf, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    this.a = paramf;
    this.b = paramBitmap1;
    this.c = paramBitmap2;
  }

  public static Bitmap a(String paramString)
  {
    return BitmapFactory.decodeStream(new URL(paramString).openStream());
  }

  public static void a(ViewGroup paramViewGroup)
  {
    int i = 0;
    if (i < paramViewGroup.getChildCount())
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ImageView))
      {
        bi localbi = b((ImageView)localView);
        if (localbi != null)
          localbi.cancel(true);
      }
      while (true)
      {
        i++;
        break;
        if ((localView instanceof ViewGroup))
          a((ViewGroup)localView);
      }
    }
  }

  private static bi b(ImageView paramImageView)
  {
    if (paramImageView != null)
    {
      Drawable localDrawable = paramImageView.getDrawable();
      if ((localDrawable instanceof bh))
        return ((bh)localDrawable).a();
    }
    return null;
  }

  private static void b(ImageView paramImageView, Bitmap paramBitmap, String paramString)
  {
    paramImageView.setTag(2131230727, paramString);
    ec.a(paramImageView.getContext(), paramImageView, paramBitmap);
  }

  public final f a()
  {
    return this.a;
  }

  public final void a(String paramString, ImageView paramImageView, bj parambj)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return;
      an.a(paramImageView);
      if (TextUtils.equals(paramString, (String)paramImageView.getTag(2131230727)))
      {
        if (parambj != null)
          parambj.a(paramString);
      }
      else
      {
        if (this.a != null);
        for (Bitmap localBitmap = this.a.a(paramString); ; localBitmap = null)
        {
          if (localBitmap == null)
            break label105;
          paramImageView.setImageBitmap(this.b);
          paramImageView.setTag(2131230727, null);
          b(paramImageView, localBitmap, paramString);
          if (parambj == null)
            break;
          parambj.a(paramString);
          return;
        }
        label105: Resources localResources = paramImageView.getContext().getResources();
        bi localbi1 = b(paramImageView);
        if (localbi1 != null)
        {
          if (TextUtils.equals(bi.a(localbi1), paramString))
            break label205;
          localbi1.cancel(true);
        }
        label205: for (int i = 1; i != 0; i = 0)
        {
          bi localbi2 = new bi(this.a, paramImageView, this.c, parambj);
          paramImageView.setImageDrawable(new bh(localResources, this.b, localbi2));
          localbi2.execute(new String[] { paramString });
          return;
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.bg
 * JD-Core Version:    0.6.2
 */