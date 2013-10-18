package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Paint;
import android.net.Uri;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;

public final class ep extends FrameLayout
{
  private String[] a = null;
  private final ImageView b;
  private final TextView c;

  public ep(Context paramContext)
  {
    super(paramContext);
    this.b = new ImageView(paramContext);
    addView(this.b, new FrameLayout.LayoutParams(-2, -2, 17));
    this.c = new TextView(paramContext);
    addView(this.c, new FrameLayout.LayoutParams(-2, -2, 17));
    bringChildToFront(this.c);
  }

  public final void a()
  {
    this.c.setSingleLine();
  }

  public final void a(float paramFloat)
  {
    this.c.setTextSize(0, paramFloat);
  }

  public final void a(int paramInt)
  {
    this.c.setTextColor(paramInt);
  }

  public final void a(Uri paramUri)
  {
    this.b.setImageURI(paramUri);
  }

  public final void a(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString;
  }

  public final void b()
  {
    this.c.setGravity(17);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    Paint localPaint = new Paint();
    localPaint.setTextSize(this.c.getTextSize());
    localPaint.setTypeface(this.c.getTypeface());
    int j;
    int k;
    int m;
    String str;
    label62: int n;
    if (this.a != null)
    {
      j = this.a.length;
      k = 0;
      m = 0;
      str = null;
      if (k >= j)
        break label132;
      if (this.a[k] == null)
        break label168;
      n = (int)localPaint.measureText(this.a[k]);
      if ((n > i) || (n < m))
        break label168;
      str = this.a[k];
    }
    while (true)
    {
      k++;
      m = n;
      break label62;
      j = 0;
      break;
      label132: if ((str == null) || (!str.equals(this.c.getText())))
        this.c.setText(str);
      super.onMeasure(paramInt1, paramInt2);
      return;
      label168: n = m;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ep
 * JD-Core Version:    0.6.2
 */