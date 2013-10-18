package com.nianticproject.ingress.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.widget.TextView;

public class CommHandle extends TextView
{
  private final int a;
  private final int b;
  private final Paint c;
  private final Paint d;
  private final Paint e;
  private final Paint f;
  private Paint g;
  private final Bitmap h;
  private final int i;
  private final int j;
  private int k = 0;
  private int l;
  private int m;
  private Path n;
  private Path o;
  private Path p;

  public CommHandle(Context paramContext)
  {
    super(paramContext);
    Resources localResources = getResources();
    this.a = ((int)localResources.getDimension(2131361793));
    this.b = ((int)localResources.getDimension(2131361794));
    this.i = (2 * this.b);
    this.c = new Paint();
    this.c.setColor(localResources.getColor(2131165210));
    this.c.setStyle(Paint.Style.FILL);
    this.d = new Paint();
    this.d.setStyle(Paint.Style.STROKE);
    this.d.setStrokeWidth(this.b);
    this.d.setColor(localResources.getColor(2131165220));
    this.e = new Paint();
    this.e.setColor(localResources.getColor(2131165212));
    this.e.setStyle(Paint.Style.FILL);
    this.f = new Paint();
    this.f.setStyle(Paint.Style.STROKE);
    this.f.setStrokeWidth(this.b);
    this.f.setColor(localResources.getColor(2131165201));
    this.g = new Paint();
    this.g.setColor(-1);
    this.h = BitmapFactory.decodeResource(localResources, 2130837610);
    this.j = this.h.getWidth();
  }

  public CommHandle(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Resources localResources = getResources();
    this.a = ((int)localResources.getDimension(2131361793));
    this.b = ((int)localResources.getDimension(2131361794));
    this.i = (2 * this.b);
    this.c = new Paint();
    this.c.setColor(localResources.getColor(2131165210));
    this.c.setStyle(Paint.Style.FILL);
    this.d = new Paint();
    this.d.setStyle(Paint.Style.STROKE);
    this.d.setStrokeWidth(this.b);
    this.d.setColor(localResources.getColor(2131165220));
    this.e = new Paint();
    this.e.setColor(localResources.getColor(2131165212));
    this.e.setStyle(Paint.Style.FILL);
    this.f = new Paint();
    this.f.setStyle(Paint.Style.STROKE);
    this.f.setStrokeWidth(this.b);
    this.f.setColor(localResources.getColor(2131165201));
    this.g = new Paint();
    this.g.setColor(-1);
    this.h = BitmapFactory.decodeResource(localResources, 2130837610);
    this.j = this.h.getWidth();
  }

  public CommHandle(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = getResources();
    this.a = ((int)localResources.getDimension(2131361793));
    this.b = ((int)localResources.getDimension(2131361794));
    this.i = (2 * this.b);
    this.c = new Paint();
    this.c.setColor(localResources.getColor(2131165210));
    this.c.setStyle(Paint.Style.FILL);
    this.d = new Paint();
    this.d.setStyle(Paint.Style.STROKE);
    this.d.setStrokeWidth(this.b);
    this.d.setColor(localResources.getColor(2131165220));
    this.e = new Paint();
    this.e.setColor(localResources.getColor(2131165212));
    this.e.setStyle(Paint.Style.FILL);
    this.f = new Paint();
    this.f.setStyle(Paint.Style.STROKE);
    this.f.setStrokeWidth(this.b);
    this.f.setColor(localResources.getColor(2131165201));
    this.g = new Paint();
    this.g.setColor(-1);
    this.h = BitmapFactory.decodeResource(localResources, 2130837610);
    this.j = this.h.getWidth();
  }

  private int b()
  {
    return 2 * this.a + this.i + this.j;
  }

  private void c()
  {
    int i1 = getMeasuredWidth();
    int i2 = getMeasuredHeight();
    int i3 = b();
    int i4 = i3 - this.a;
    int i5 = this.b / 2;
    int i6 = i2 - (this.b - i5);
    this.n = new Path();
    this.n.moveTo(0.0F, i2);
    this.n.lineTo(this.a, i2);
    this.n.lineTo(this.a, 0.0F);
    this.n.close();
    this.o = new Path();
    this.o.moveTo(i1, i2);
    this.o.lineTo(i1, i5);
    this.o.lineTo(i3, i5);
    this.o.lineTo(i4, i6);
    this.o.lineTo(0.0F, i6);
    int i7 = i6 - this.i;
    int i8 = i3 - this.i;
    int i9 = i7 * this.a / i6;
    this.p = new Path();
    this.p.moveTo(i5, i7);
    this.p.lineTo(i9, i5);
    this.p.lineTo(i8, i5);
    this.p.lineTo(i8 - i9, i7);
    this.p.close();
    this.m = ((i3 - (this.i + this.h.getWidth())) / 2);
    this.l = ((i7 - this.h.getHeight()) / 2);
  }

  public final int a()
  {
    return this.k;
  }

  public final void a(int paramInt)
  {
    if (this.k == paramInt)
      return;
    post(new l(this, paramInt));
  }

  protected void onDraw(Canvas paramCanvas)
  {
    int i1 = b();
    paramCanvas.save();
    paramCanvas.translate(i1, 0.0F);
    paramCanvas.drawRect(0.0F, 0.0F, getMeasuredWidth(), getMeasuredHeight(), this.c);
    paramCanvas.translate(-i1, 0.0F);
    int i2 = i1 * 3 / 5;
    paramCanvas.translate(i2, 0.0F);
    super.onDraw(paramCanvas);
    paramCanvas.translate(-i2, 0.0F);
    if (this.n == null)
      c();
    if (this.k > 0)
    {
      paramCanvas.drawPath(this.p, this.e);
      paramCanvas.drawPath(this.p, this.f);
      paramCanvas.drawBitmap(this.h, this.m, this.l, this.g);
    }
    paramCanvas.translate(this.a + this.j + this.i, 0.0F);
    paramCanvas.drawPath(this.n, this.c);
    paramCanvas.translate(-(this.a + this.j + this.i), 0.0F);
    paramCanvas.drawPath(this.o, this.d);
    paramCanvas.restore();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(getMeasuredWidth() + b(), getMeasuredHeight());
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.n == null)
      c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.CommHandle
 * JD-Core Version:    0.6.2
 */