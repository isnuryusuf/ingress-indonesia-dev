package com.nianticproject.ingress.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.nianticproject.ingress.dr;

public class CommSlidingDrawer extends ViewGroup
{
  private boolean A;
  private boolean B;
  private final int C;
  private final int D;
  private final int E;
  private final int F;
  private final int G;
  private final int H;
  private final int a;
  private final int b;
  private View c;
  private View d;
  private final Rect e = new Rect();
  private final Rect f = new Rect();
  private boolean g;
  private boolean h;
  private VelocityTracker i;
  private boolean j;
  private boolean k;
  private int l;
  private int m;
  private int n;
  private int o;
  private o p;
  private n q;
  private p r;
  private final Handler s = new q(this, (byte)0);
  private float t;
  private float u;
  private float v;
  private long w;
  private long x;
  private int y;
  private boolean z;

  public CommSlidingDrawer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public CommSlidingDrawer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, dr.a, paramInt, 0);
    if (localTypedArray.getInt(2, 1) == 1);
    int i1;
    for (boolean bool = true; ; bool = false)
    {
      this.j = bool;
      this.l = ((int)localTypedArray.getDimension(3, 0.0F));
      this.m = ((int)localTypedArray.getDimension(4, 0.0F));
      this.A = localTypedArray.getBoolean(5, true);
      this.B = localTypedArray.getBoolean(6, true);
      i1 = localTypedArray.getResourceId(0, 0);
      if (i1 != 0)
        break;
      throw new IllegalArgumentException("The handle attribute is required and must refer to a valid child.");
    }
    int i2 = localTypedArray.getResourceId(1, 0);
    if (i2 == 0)
      throw new IllegalArgumentException("The content attribute is required and must refer to a valid child.");
    if (i1 == i2)
      throw new IllegalArgumentException("The content and handle attributes must refer to different children.");
    this.a = i1;
    this.b = i2;
    float f1 = getResources().getDisplayMetrics().density;
    this.C = ((int)(0.5F + 6.0F * f1));
    this.D = ((int)(0.5F + 100.0F * f1));
    this.E = ((int)(0.5F + 150.0F * f1));
    this.F = ((int)(0.5F + 200.0F * f1));
    this.G = ((int)(0.5F + 2000.0F * f1));
    this.H = ((int)(0.5F + f1 * 1000.0F));
    localTypedArray.recycle();
    setAlwaysDrawnWithCacheEnabled(false);
  }

  private void a()
  {
    if (this.z)
      return;
    View localView = this.d;
    if (localView.isLayoutRequested())
    {
      if (!this.j)
        break label139;
      int i2 = this.n;
      int i3 = getBottom() - getTop() - i2 - this.m;
      localView.measure(View.MeasureSpec.makeMeasureSpec(getRight() - getLeft(), 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
      localView.layout(0, i2 + this.m, localView.getMeasuredWidth(), i2 + this.m + localView.getMeasuredHeight());
    }
    while (true)
    {
      localView.getViewTreeObserver().dispatchOnPreDraw();
      if ((Build.VERSION.SDK_INT < 11) || (!localView.isHardwareAccelerated()))
        localView.buildDrawingCache();
      localView.setVisibility(8);
      return;
      label139: int i1 = this.c.getWidth();
      localView.measure(View.MeasureSpec.makeMeasureSpec(getRight() - getLeft() - i1 - this.m, 1073741824), View.MeasureSpec.makeMeasureSpec(getBottom() - getTop(), 1073741824));
      localView.layout(i1 + this.m, 0, i1 + this.m + localView.getMeasuredWidth(), localView.getMeasuredHeight());
    }
  }

  private void a(int paramInt)
  {
    c(paramInt);
    a(paramInt, this.G, true);
  }

  private void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    this.v = paramInt;
    this.u = paramFloat;
    int i3;
    if (this.k)
      if ((!paramBoolean) && (paramFloat <= this.F))
      {
        int i2 = this.m;
        if (this.j)
        {
          i3 = this.n;
          if ((paramInt <= i3 + i2) || (paramFloat <= -this.F))
            break label207;
        }
      }
      else
      {
        this.t = this.G;
        if (paramFloat < 0.0F)
          this.u = 0.0F;
      }
    while (true)
    {
      long l1 = SystemClock.uptimeMillis();
      this.w = l1;
      this.x = (l1 + 16L);
      this.z = true;
      this.s.removeMessages(1000);
      this.s.sendMessageAtTime(this.s.obtainMessage(1000), this.x);
      this.c.setPressed(false);
      this.g = false;
      if (this.r != null)
        this.r.b();
      if (this.i != null)
      {
        this.i.recycle();
        this.i = null;
      }
      return;
      i3 = this.o;
      break;
      label207: this.t = (-this.G);
      if (paramFloat > 0.0F)
      {
        this.u = 0.0F;
        continue;
        if (!paramBoolean)
        {
          if (paramFloat <= this.F)
            if (!this.j)
              break label300;
          label300: for (int i1 = getHeight(); ; i1 = getWidth())
          {
            if ((paramInt <= i1 / 2) || (paramFloat <= -this.F))
              break label309;
            this.t = this.G;
            if (paramFloat >= 0.0F)
              break;
            this.u = 0.0F;
            break;
          }
        }
        label309: this.t = (-this.G);
        if (paramFloat > 0.0F)
          this.u = 0.0F;
      }
    }
  }

  private void b()
  {
    d(-10002);
    this.d.setVisibility(8);
    this.d.destroyDrawingCache();
    if (!this.k);
    do
    {
      return;
      this.k = false;
    }
    while (this.q == null);
    this.q.a();
  }

  private void b(int paramInt)
  {
    c(paramInt);
    a(paramInt, -this.G, true);
  }

  private void c()
  {
    d(-10001);
    this.d.setVisibility(0);
    if (this.k);
    do
    {
      return;
      this.k = true;
    }
    while (this.p == null);
    this.p.a();
  }

  private void c(int paramInt)
  {
    this.g = true;
    this.i = VelocityTracker.obtain();
    int i1;
    int i2;
    if (!this.k)
    {
      i1 = 1;
      if (i1 == 0)
        break label145;
      this.t = this.G;
      this.u = this.F;
      i2 = this.l;
      if (!this.j)
        break label131;
    }
    label131: for (int i3 = getHeight() - this.n; ; i3 = getWidth() - this.o)
    {
      this.v = (i3 + i2);
      d((int)this.v);
      this.z = true;
      this.s.removeMessages(1000);
      long l1 = SystemClock.uptimeMillis();
      this.w = l1;
      this.x = (l1 + 16L);
      this.z = true;
      return;
      i1 = 0;
      break;
    }
    label145: if (this.z)
    {
      this.z = false;
      this.s.removeMessages(1000);
    }
    d(paramInt);
  }

  private void d(int paramInt)
  {
    View localView = this.c;
    if (this.j)
    {
      if (paramInt == -10001)
      {
        localView.offsetTopAndBottom(this.m - localView.getTop());
        invalidate();
        return;
      }
      if (paramInt == -10002)
      {
        localView.offsetTopAndBottom(this.l + getBottom() - getTop() - this.n - localView.getTop());
        invalidate();
        return;
      }
      int i3 = localView.getTop();
      int i4 = paramInt - i3;
      if (paramInt < this.m)
        i4 = this.m - i3;
      while (true)
      {
        localView.offsetTopAndBottom(i4);
        Rect localRect3 = this.e;
        Rect localRect4 = this.f;
        localView.getHitRect(localRect3);
        localRect4.set(localRect3);
        localRect4.union(localRect3.left, localRect3.top - i4, localRect3.right, localRect3.bottom - i4);
        localRect4.union(0, localRect3.bottom - i4, getWidth(), localRect3.bottom - i4 + this.d.getHeight());
        invalidate(localRect4);
        return;
        if (i4 > this.l + getBottom() - getTop() - this.n - i3)
          i4 = this.l + getBottom() - getTop() - this.n - i3;
      }
    }
    if (paramInt == -10001)
    {
      localView.offsetLeftAndRight(this.m - localView.getLeft());
      invalidate();
      return;
    }
    if (paramInt == -10002)
    {
      localView.offsetLeftAndRight(this.l + getRight() - getLeft() - this.o - localView.getLeft());
      invalidate();
      return;
    }
    int i1 = localView.getLeft();
    int i2 = paramInt - i1;
    if (paramInt < this.m)
      i2 = this.m - i1;
    while (true)
    {
      localView.offsetLeftAndRight(i2);
      Rect localRect1 = this.e;
      Rect localRect2 = this.f;
      localView.getHitRect(localRect1);
      localRect2.set(localRect1);
      localRect2.union(localRect1.left - i2, localRect1.top, localRect1.right - i2, localRect1.bottom);
      localRect2.union(localRect1.right - i2, 0, localRect1.right - i2 + this.d.getWidth(), getHeight());
      invalidate(localRect2);
      return;
      if (i2 > this.l + getRight() - getLeft() - this.o - i1)
        i2 = this.l + getRight() - getLeft() - this.o - i1;
    }
  }

  public final void a(n paramn)
  {
    this.q = paramn;
  }

  public final void a(o paramo)
  {
    this.p = paramo;
  }

  public final void a(p paramp)
  {
    this.r = paramp;
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    long l1 = getDrawingTime();
    View localView = this.c;
    boolean bool = this.j;
    drawChild(paramCanvas, localView, l1);
    if ((this.g) || (this.z))
    {
      localBitmap = this.d.getDrawingCache();
      if (localBitmap != null)
        if (bool)
          paramCanvas.drawBitmap(localBitmap, 0.0F, localView.getBottom(), null);
    }
    while (!this.k)
    {
      Bitmap localBitmap;
      return;
      paramCanvas.drawBitmap(localBitmap, localView.getRight(), 0.0F, null);
      return;
      paramCanvas.save();
      if (bool);
      for (float f1 = 0.0F; ; f1 = localView.getLeft() - this.m)
      {
        float f2 = 0.0F;
        if (bool)
          f2 = localView.getTop() - this.m;
        paramCanvas.translate(f1, f2);
        drawChild(paramCanvas, this.d, l1);
        paramCanvas.restore();
        return;
      }
    }
    drawChild(paramCanvas, this.d, l1);
  }

  public final void f()
  {
    if (!this.k)
      c();
    while (true)
    {
      invalidate();
      requestLayout();
      return;
      b();
    }
  }

  public final void g()
  {
    if (!this.k)
    {
      k();
      return;
    }
    j();
  }

  public final void h()
  {
    c();
    invalidate();
    requestLayout();
    sendAccessibilityEvent(32);
  }

  public final void i()
  {
    b();
    invalidate();
    requestLayout();
  }

  public final void j()
  {
    a();
    p localp = this.r;
    if (localp != null)
      localp.a();
    if (this.j);
    for (int i1 = this.c.getTop(); ; i1 = this.c.getLeft())
    {
      a(i1);
      if (localp != null)
        localp.b();
      return;
    }
  }

  public final void k()
  {
    a();
    p localp = this.r;
    if (localp != null)
      localp.a();
    if (this.j);
    for (int i1 = this.c.getTop(); ; i1 = this.c.getLeft())
    {
      b(i1);
      sendAccessibilityEvent(32);
      if (localp != null)
        localp.b();
      return;
    }
  }

  public final boolean l()
  {
    return this.k;
  }

  public final boolean m()
  {
    return (this.g) || (this.z);
  }

  protected void onFinishInflate()
  {
    this.c = findViewById(this.a);
    if (this.c == null)
      throw new IllegalArgumentException("The handle attribute is must refer to an existing child.");
    this.c.setOnClickListener(new m(this, (byte)0));
    this.d = findViewById(this.b);
    if (this.d == null)
      throw new IllegalArgumentException("The content attribute is must refer to an existing child.");
    this.d.setVisibility(8);
  }

  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(CommSlidingDrawer.class.getName());
    }
  }

  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(CommSlidingDrawer.class.getName());
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.h);
    int i1;
    float f1;
    float f2;
    Rect localRect;
    View localView;
    do
    {
      return false;
      i1 = paramMotionEvent.getAction();
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      localRect = this.e;
      localView = this.c;
      localView.getHitRect(localRect);
    }
    while ((!this.g) && (!localRect.contains((int)f1, (int)f2)));
    if (i1 == 0)
    {
      this.g = true;
      localView.setPressed(true);
      a();
      if (this.r != null)
        this.r.a();
      if (!this.j)
        break label141;
      int i3 = this.c.getTop();
      this.y = ((int)f2 - i3);
      c(i3);
    }
    while (true)
    {
      this.i.addMovement(paramMotionEvent);
      return true;
      label141: int i2 = this.c.getLeft();
      this.y = ((int)f1 - i2);
      c(i2);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.g)
      return;
    int i1 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    View localView1 = this.c;
    int i3 = localView1.getMeasuredWidth();
    int i4 = localView1.getMeasuredHeight();
    View localView2 = this.d;
    int i7;
    int i8;
    if (this.j)
    {
      i7 = (i1 - i3) / 2;
      if (this.k);
      for (i8 = this.m; ; i8 = i2 - i4 + this.l)
      {
        localView2.layout(0, i4 + this.m, localView2.getMeasuredWidth(), i4 + this.m + localView2.getMeasuredHeight());
        localView1.layout(i7, i8, i7 + i3, i8 + i4);
        this.n = localView1.getHeight();
        this.o = localView1.getWidth();
        return;
      }
    }
    if (this.k);
    for (int i5 = this.m; ; i5 = i1 - i3 + this.l)
    {
      int i6 = (i2 - i4) / 2;
      localView2.layout(i3 + this.m, 0, i3 + this.m + localView2.getMeasuredWidth(), localView2.getMeasuredHeight());
      i7 = i5;
      i8 = i6;
      break;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getSize(paramInt1);
    int i3 = View.MeasureSpec.getMode(paramInt2);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    if ((i1 == 0) || (i3 == 0))
      throw new RuntimeException("SlidingDrawer cannot have UNSPECIFIED dimensions");
    View localView = this.c;
    measureChild(localView, paramInt1, paramInt2);
    if (this.j)
    {
      int i6 = i4 - localView.getMeasuredHeight() - this.m;
      this.d.measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
    }
    while (true)
    {
      setMeasuredDimension(i2, i4);
      return;
      int i5 = i2 - localView.getMeasuredWidth() - this.m;
      this.d.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.h)
      return true;
    if (this.g)
      this.i.addMovement(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    int i1;
    label161: float f3;
    float f4;
    int i3;
    switch (paramMotionEvent.getAction())
    {
    default:
      if ((this.g) || (this.z) || (super.onTouchEvent(paramMotionEvent)))
        return true;
      break;
    case 2:
      if (this.j);
      for (float f9 = paramMotionEvent.getY(); ; f9 = paramMotionEvent.getX())
      {
        d((int)f9 - this.y);
        break;
      }
    case 1:
    case 3:
      VelocityTracker localVelocityTracker = this.i;
      localVelocityTracker.computeCurrentVelocity(this.H);
      f1 = localVelocityTracker.getYVelocity();
      f2 = localVelocityTracker.getXVelocity();
      bool = this.j;
      if (bool)
        if (f1 < 0.0F)
        {
          i1 = 1;
          if (f2 < 0.0F)
            f2 = -f2;
          if (f2 <= this.E)
            break label592;
          float f8 = this.E;
          int i8 = i1;
          f3 = f1;
          f4 = f8;
          i3 = i8;
        }
      break;
    }
    while (true)
    {
      float f5 = (float)Math.hypot(f4, f3);
      if (i3 != 0);
      for (float f6 = -f5; ; f6 = f5)
      {
        int i4 = this.c.getTop();
        int i5 = this.c.getLeft();
        if (Math.abs(f6) < this.D)
        {
          if (bool)
            if (((!this.k) || (i4 >= this.C + this.m)) && ((this.k) || (i4 <= this.l + getBottom() - getTop() - this.n - this.C)))
              break label483;
          int i6;
          while (true)
            if (this.A)
            {
              playSoundEffect(0);
              if (this.k)
                if (bool)
                {
                  i6 = i4;
                  label350: a(i6);
                  break;
                  i1 = 0;
                  break label161;
                  if (f2 < 0.0F);
                  for (i1 = 1; ; i1 = 0)
                  {
                    if (f1 < 0.0F)
                      f1 = -f1;
                    if (f1 <= this.E)
                      break label592;
                    float f7 = this.E;
                    int i7 = i1;
                    f3 = f7;
                    f4 = f2;
                    i3 = i7;
                    break;
                  }
                  if (((this.k) && (i5 < this.C + this.m)) || ((!this.k) && (i5 > this.l + getRight() - getLeft() - this.o - this.C)))
                    continue;
                  label483: if (!bool)
                    break label552;
                }
            }
          while (true)
          {
            a(i4, f6, false);
            break;
            i6 = i5;
            break label350;
            if (bool);
            while (true)
            {
              b(i4);
              break;
              i4 = i5;
            }
            if (bool);
            while (true)
            {
              a(i4, f6, false);
              break;
              i4 = i5;
            }
            label552: i4 = i5;
          }
        }
        if (bool);
        while (true)
        {
          a(i4, f6, false);
          break;
          i4 = i5;
        }
        return false;
      }
      label592: int i2 = i1;
      f3 = f1;
      f4 = f2;
      i3 = i2;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.CommSlidingDrawer
 * JD-Core Version:    0.6.2
 */