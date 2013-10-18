package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.d.e;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager extends ViewGroup
{
  private static final int[] a = { 16842931 };
  private static final Comparator<aw> b = new at();
  private static final Interpolator c = new au();
  private boolean A;
  private int B;
  private int C;
  private int D;
  private float E;
  private float F;
  private float G;
  private int H = -1;
  private VelocityTracker I;
  private int J;
  private int K;
  private int L;
  private int M;
  private boolean N;
  private e O;
  private e P;
  private boolean Q = true;
  private boolean R = false;
  private boolean S;
  private int T;
  private az U;
  private az V;
  private ay W;
  private int Z = 0;
  private final ArrayList<aw> d = new ArrayList();
  private final aw e = new aw();
  private final Rect f = new Rect();
  private v g;
  private int h;
  private int i = -1;
  private Parcelable j = null;
  private ClassLoader k = null;
  private Scroller l;
  private ba m;
  private int n;
  private Drawable o;
  private int p;
  private int q;
  private float r = -3.402824E+38F;
  private float s = 3.4028235E+38F;
  private int t;
  private int u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y = 1;
  private boolean z;

  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.l = new Scroller(localContext, c);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    this.D = ap.a(localViewConfiguration);
    this.J = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.K = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.O = new e(localContext);
    this.P = new e(localContext);
    float f1 = localContext.getResources().getDisplayMetrics().density;
    this.L = ((int)(25.0F * f1));
    this.M = ((int)(2.0F * f1));
    this.B = ((int)(f1 * 16.0F));
    ai.a(this, new ax(this));
    if (ai.c(this) == 0)
      ai.d(this);
  }

  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null);
    for (Rect localRect = new Rect(); ; localRect = paramRect)
    {
      if (paramView == null)
      {
        localRect.set(0, 0, 0, 0);
        return localRect;
      }
      localRect.left = paramView.getLeft();
      localRect.right = paramView.getRight();
      localRect.top = paramView.getTop();
      localRect.bottom = paramView.getBottom();
      ViewGroup localViewGroup;
      for (ViewParent localViewParent = paramView.getParent(); ((localViewParent instanceof ViewGroup)) && (localViewParent != this); localViewParent = localViewGroup.getParent())
      {
        localViewGroup = (ViewGroup)localViewParent;
        localRect.left += localViewGroup.getLeft();
        localRect.right += localViewGroup.getRight();
        localRect.top += localViewGroup.getTop();
        localRect.bottom += localViewGroup.getBottom();
      }
      return localRect;
    }
  }

  private aw a(int paramInt1, int paramInt2)
  {
    aw localaw = new aw();
    localaw.b = paramInt1;
    localaw.a = this.g.a(this, paramInt1);
    localaw.d = 1.0F;
    if ((paramInt2 < 0) || (paramInt2 >= this.d.size()))
    {
      this.d.add(localaw);
      return localaw;
    }
    this.d.add(paramInt2, localaw);
    return localaw;
  }

  private aw a(View paramView)
  {
    for (int i1 = 0; i1 < this.d.size(); i1++)
    {
      aw localaw = (aw)this.d.get(i1);
      if (this.g.a(paramView, localaw.a))
        return localaw;
    }
    return null;
  }

  private void a(int paramInt, float paramFloat)
  {
    int i2;
    int i3;
    int i4;
    int i6;
    View localView;
    int i11;
    int i8;
    int i9;
    if (this.T > 0)
    {
      int i1 = getScrollX();
      i2 = getPaddingLeft();
      i3 = getPaddingRight();
      i4 = getWidth();
      int i5 = getChildCount();
      i6 = 0;
      if (i6 < i5)
      {
        localView = getChildAt(i6);
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView.getLayoutParams();
        if (!localLayoutParams.a)
          break label311;
        switch (0x7 & localLayoutParams.b)
        {
        case 2:
        case 4:
        default:
          i11 = i2;
          int i17 = i3;
          i8 = i2;
          i9 = i17;
          label132: int i13 = i11 + i1 - localView.getLeft();
          if (i13 != 0)
            localView.offsetLeftAndRight(i13);
          break;
        case 3:
        case 1:
        case 5:
        }
      }
    }
    while (true)
    {
      i6++;
      int i10 = i9;
      i2 = i8;
      i3 = i10;
      break;
      int i15 = i2 + localView.getWidth();
      int i16 = i2;
      i9 = i3;
      i8 = i15;
      i11 = i16;
      break label132;
      i11 = Math.max((i4 - localView.getMeasuredWidth()) / 2, i2);
      int i14 = i3;
      i8 = i2;
      i9 = i14;
      break label132;
      i11 = i4 - i3 - localView.getMeasuredWidth();
      int i12 = i3 + localView.getMeasuredWidth();
      i8 = i2;
      i9 = i12;
      break label132;
      if (this.U != null)
        this.U.a(paramInt, paramFloat);
      if (this.V != null)
        this.V.a(paramInt, paramFloat);
      this.S = true;
      return;
      label311: int i7 = i3;
      i8 = i2;
      i9 = i7;
    }
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  private void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.g == null) || (this.g.c() <= 0))
    {
      a(false);
      return;
    }
    if ((!paramBoolean2) && (this.h == paramInt1) && (this.d.size() != 0))
    {
      a(false);
      return;
    }
    if (paramInt1 < 0)
      paramInt1 = 0;
    while (true)
    {
      int i1 = this.y;
      if ((paramInt1 <= i1 + this.h) && (paramInt1 >= this.h - i1))
        break;
      for (int i2 = 0; i2 < this.d.size(); i2++)
        ((aw)this.d.get(i2)).c = true;
      if (paramInt1 >= this.g.c())
        paramInt1 = -1 + this.g.c();
    }
    int i3;
    label157: int i4;
    if (this.h != paramInt1)
    {
      i3 = 1;
      d(paramInt1);
      aw localaw = e(paramInt1);
      i4 = 0;
      if (localaw != null)
        i4 = (int)(getWidth() * Math.max(this.r, Math.min(localaw.e, this.s)));
      if (!paramBoolean1)
        break label504;
      if (getChildCount() != 0)
        break label272;
      a(false);
    }
    label272: int i5;
    int i6;
    int i7;
    int i8;
    while (true)
    {
      if ((i3 != 0) && (this.U != null))
        this.U.a(paramInt1);
      if ((i3 == 0) || (this.V == null))
        break;
      this.V.a(paramInt1);
      return;
      i3 = 0;
      break label157;
      i5 = getScrollX();
      i6 = getScrollY();
      i7 = i4 - i5;
      i8 = 0 - i6;
      if ((i7 != 0) || (i8 != 0))
        break label323;
      f();
      e();
      c(0);
    }
    label323: a(true);
    c(2);
    int i9 = getWidth();
    int i10 = i9 / 2;
    float f1 = Math.min(1.0F, 1.0F * Math.abs(i7) / i9);
    float f2 = i10 + i10 * (float)Math.sin((float)(0.47123891676382D * (f1 - 0.5F)));
    int i11 = Math.abs(paramInt2);
    if (i11 > 0);
    float f4;
    for (int i12 = 4 * Math.round(1000.0F * Math.abs(f2 / i11)); ; i12 = (int)(100.0F * (1.0F + Math.abs(i7) / (f4 + this.n))))
    {
      int i13 = Math.min(i12, 600);
      this.l.startScroll(i5, i6, i7, i8, i13);
      ai.b(this);
      break;
      float f3 = i9;
      f4 = f3 * 1.0F;
    }
    label504: if ((i3 != 0) && (this.U != null))
      this.U.a(paramInt1);
    if ((i3 != 0) && (this.V != null))
      this.V.a(paramInt1);
    f();
    scrollTo(i4, 0);
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = r.a(paramMotionEvent);
    if (r.b(paramMotionEvent, i1) == this.H)
      if (i1 != 0)
        break label56;
    label56: for (int i2 = 1; ; i2 = 0)
    {
      this.F = r.c(paramMotionEvent, i2);
      this.H = r.b(paramMotionEvent, i2);
      if (this.I != null)
        this.I.clear();
      return;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.w != paramBoolean)
      this.w = paramBoolean;
  }

  private boolean a(float paramFloat)
  {
    int i1 = 1;
    float f1 = this.F - paramFloat;
    this.F = paramFloat;
    float f2 = f1 + getScrollX();
    int i2 = getWidth();
    float f3 = i2 * this.r;
    float f4 = i2 * this.s;
    aw localaw1 = (aw)this.d.get(0);
    aw localaw2 = (aw)this.d.get(-1 + this.d.size());
    if (localaw1.b != 0)
      f3 = localaw1.e * i2;
    for (int i3 = 0; ; i3 = i1)
    {
      float f5;
      if (localaw2.b != -1 + this.g.c())
      {
        f5 = localaw2.e * i2;
        i1 = 0;
      }
      while (true)
      {
        boolean bool;
        if (f2 < f3)
        {
          bool = false;
          if (i3 != 0)
          {
            float f6 = f3 - f2;
            bool = this.O.a(Math.abs(f6) / i2);
          }
        }
        while (true)
        {
          this.F += f3 - (int)f3;
          scrollTo((int)f3, getScrollY());
          f((int)f3);
          return bool;
          if (f2 > f5)
          {
            bool = false;
            if (i1 != 0)
            {
              float f7 = f2 - f5;
              bool = this.P.a(Math.abs(f7) / i2);
            }
            f3 = f5;
          }
          else
          {
            f3 = f2;
            bool = false;
          }
        }
        f5 = f4;
      }
    }
  }

  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i3;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i1 = paramView.getScrollX();
      int i2 = paramView.getScrollY();
      i3 = -1 + localViewGroup.getChildCount();
      if (i3 >= 0)
      {
        localView = localViewGroup.getChildAt(i3);
        if ((paramInt2 + i1 < localView.getLeft()) || (paramInt2 + i1 >= localView.getRight()) || (paramInt3 + i2 < localView.getTop()) || (paramInt3 + i2 >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i1 - localView.getLeft(), paramInt3 + i2 - localView.getTop())));
      }
    }
    while ((paramBoolean) && (ai.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i3--;
      break;
    }
    return false;
  }

  private void c(int paramInt)
  {
    if (this.Z == paramInt);
    do
    {
      return;
      this.Z = paramInt;
    }
    while (this.U == null);
    this.U.b(paramInt);
  }

  private void d(int paramInt)
  {
    aw localaw16;
    if (this.h != paramInt)
    {
      localaw16 = e(this.h);
      this.h = paramInt;
    }
    for (aw localaw1 = localaw16; ; localaw1 = null)
    {
      if (this.g == null)
        label33: return;
      int i2;
      int i3;
      int i4;
      int i5;
      aw localaw2;
      if ((!this.x) && (getWindowToken() != null))
      {
        int i1 = this.y;
        i2 = Math.max(0, this.h - i1);
        i3 = this.g.c();
        i4 = Math.min(i3 - 1, i1 + this.h);
        i5 = 0;
        if (i5 >= this.d.size())
          break label1815;
        localaw2 = (aw)this.d.get(i5);
        if (localaw2.b >= this.h)
          if (localaw2.b != this.h)
            break label1815;
      }
      while (true)
      {
        if ((localaw2 == null) && (i3 > 0));
        for (aw localaw3 = a(this.h, i5); ; localaw3 = localaw2)
        {
          label202: int i12;
          label234: Object localObject2;
          label344: label350: label501: float f11;
          label455: int i31;
          int i32;
          label521: aw localaw15;
          label615: Object localObject3;
          float f13;
          if (localaw3 != null)
          {
            int i9 = i5 - 1;
            aw localaw7;
            float f2;
            int i11;
            int i13;
            if (i9 >= 0)
            {
              localaw7 = (aw)this.d.get(i9);
              float f1 = 2.0F - localaw3.d;
              int i10 = -1 + this.h;
              f2 = 0.0F;
              i11 = i10;
              i12 = i5;
              i13 = i9;
              if (i11 < 0)
                break label455;
              if ((f2 < f1) || (i11 >= i2))
                break label350;
              if (localaw7 == null)
                break label455;
              if ((i11 == localaw7.b) && (!localaw7.c))
              {
                this.d.remove(i13);
                this.g.a(i11, localaw7.a);
                i13--;
                i12--;
                if (i13 < 0)
                  break label344;
                localaw7 = (aw)this.d.get(i13);
              }
            }
            while (true)
            {
              i11--;
              break label234;
              i5++;
              break;
              localaw7 = null;
              break label202;
              localaw7 = null;
              continue;
              if ((localaw7 != null) && (i11 == localaw7.b))
              {
                f2 += localaw7.d;
                i13--;
                if (i13 >= 0)
                  localaw7 = (aw)this.d.get(i13);
                else
                  localaw7 = null;
              }
              else
              {
                f2 += a(i11, i13 + 1).d;
                i12++;
                if (i13 >= 0)
                  localaw7 = (aw)this.d.get(i13);
                else
                  localaw7 = null;
              }
            }
            float f3 = localaw3.d;
            int i14 = i12 + 1;
            if (f3 < 2.0F)
              if (i14 < this.d.size())
              {
                localObject2 = (aw)this.d.get(i14);
                int i30 = 1 + this.h;
                f11 = f3;
                i31 = i14;
                i32 = i30;
                if (i32 >= i3)
                  break label794;
                if ((f11 < 2.0F) || (i32 <= i4))
                  break label657;
                if (localObject2 == null)
                  break label794;
                if ((i32 != ((aw)localObject2).b) || (((aw)localObject2).c))
                  break label1793;
                this.d.remove(i31);
                this.g.a(i32, ((aw)localObject2).a);
                if (i31 >= this.d.size())
                  break label651;
                localaw15 = (aw)this.d.get(i31);
                float f17 = f11;
                localObject3 = localaw15;
                f13 = f17;
              }
          }
          while (true)
          {
            i32++;
            float f14 = f13;
            localObject2 = localObject3;
            f11 = f14;
            break label521;
            localObject2 = null;
            break label501;
            label651: localaw15 = null;
            break label615;
            label657: if ((localObject2 != null) && (i32 == ((aw)localObject2).b))
            {
              float f15 = f11 + ((aw)localObject2).d;
              i31++;
              if (i31 < this.d.size());
              for (aw localaw14 = (aw)this.d.get(i31); ; localaw14 = null)
              {
                localObject3 = localaw14;
                f13 = f15;
                break;
              }
            }
            aw localaw12 = a(i32, i31);
            i31++;
            float f12 = f11 + localaw12.d;
            if (i31 < this.d.size());
            for (aw localaw13 = (aw)this.d.get(i31); ; localaw13 = null)
            {
              localObject3 = localaw13;
              f13 = f12;
              break;
            }
            label794: int i15 = this.g.c();
            int i16 = getWidth();
            float f4;
            int i24;
            float f10;
            int i28;
            int i29;
            if (i16 > 0)
            {
              f4 = this.n / i16;
              if (localaw1 == null)
                break label1167;
              i24 = localaw1.b;
              if (i24 < localaw3.b)
              {
                f10 = f4 + (localaw1.e + localaw1.d);
                i28 = i24 + 1;
                i29 = 0;
              }
            }
            else
            {
              while (true)
              {
                if ((i28 > localaw3.b) || (i29 >= this.d.size()))
                  break label1167;
                aw localaw11 = (aw)this.d.get(i29);
                while (true)
                  if ((i28 > localaw11.b) && (i29 < -1 + this.d.size()))
                  {
                    i29++;
                    localaw11 = (aw)this.d.get(i29);
                    continue;
                    f4 = 0.0F;
                    break;
                  }
                while (i28 < localaw11.b)
                {
                  f10 += 1.0F + f4;
                  i28++;
                }
                localaw11.e = f10;
                f10 += f4 + localaw11.d;
                i28++;
              }
            }
            if (i24 > localaw3.b)
            {
              int i25 = -1 + this.d.size();
              float f9 = localaw1.e;
              int i26 = i24 - 1;
              int i27 = i25;
              while ((i26 >= localaw3.b) && (i27 >= 0))
              {
                for (aw localaw10 = (aw)this.d.get(i27); (i26 < localaw10.b) && (i27 > 0); localaw10 = (aw)this.d.get(i27))
                  i27--;
                while (i26 > localaw10.b)
                {
                  f9 -= 1.0F + f4;
                  i26--;
                }
                f9 -= f4 + localaw10.d;
                localaw10.e = f9;
                i26--;
              }
            }
            label1167: int i17 = this.d.size();
            float f5 = localaw3.e;
            int i18 = -1 + localaw3.b;
            float f6;
            float f7;
            if (localaw3.b == 0)
            {
              f6 = localaw3.e;
              this.r = f6;
              if (localaw3.b != i15 - 1)
                break label1308;
              f7 = localaw3.e + localaw3.d - 1.0F;
              label1240: this.s = f7;
            }
            label1308: int i23;
            for (int i19 = i12 - 1; ; i19 = i23)
            {
              if (i19 < 0)
                break label1365;
              aw localaw9 = (aw)this.d.get(i19);
              while (true)
                if (i18 > localaw9.b)
                {
                  i18--;
                  f5 -= 1.0F + f4;
                  continue;
                  f6 = -3.402824E+38F;
                  break;
                  f7 = 3.4028235E+38F;
                  break label1240;
                }
              f5 -= f4 + localaw9.d;
              localaw9.e = f5;
              if (localaw9.b == 0)
                this.r = f5;
              i23 = i19 - 1;
              i18--;
            }
            label1365: float f8 = f4 + (localaw3.e + localaw3.d);
            int i20 = 1 + localaw3.b;
            int i22;
            for (int i21 = i12 + 1; i21 < i17; i21 = i22)
            {
              aw localaw8 = (aw)this.d.get(i21);
              while (i20 < localaw8.b)
              {
                i20++;
                f8 += 1.0F + f4;
              }
              if (localaw8.b == i15 - 1)
                this.s = (f8 + localaw8.d - 1.0F);
              localaw8.e = f8;
              f8 += f4 + localaw8.d;
              i22 = i21 + 1;
              i20++;
            }
            this.R = false;
            v localv = this.g;
            if (localaw3 != null);
            for (Object localObject1 = localaw3.a; ; localObject1 = null)
            {
              localv.a(localObject1);
              this.g.a();
              int i6 = getChildCount();
              for (int i7 = 0; i7 < i6; i7++)
              {
                View localView4 = getChildAt(i7);
                ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)localView4.getLayoutParams();
                if ((!localLayoutParams.a) && (localLayoutParams.c == 0.0F))
                {
                  aw localaw6 = a(localView4);
                  if (localaw6 != null)
                    localLayoutParams.c = localaw6.d;
                }
              }
            }
            if (!hasFocus())
              break;
            View localView1 = findFocus();
            View localView3;
            label1660: ViewParent localViewParent;
            aw localaw4;
            if (localView1 != null)
            {
              localView3 = localView1;
              localViewParent = localView3.getParent();
              if (localViewParent != this)
                if ((localViewParent == null) || (!(localViewParent instanceof View)))
                  localaw4 = null;
            }
            while (true)
            {
              if ((localaw4 != null) && (localaw4.b == this.h))
                break label1791;
              for (int i8 = 0; ; i8++)
              {
                if (i8 >= getChildCount())
                  break label1764;
                View localView2 = getChildAt(i8);
                aw localaw5 = a(localView2);
                if ((localaw5 != null) && (localaw5.b == this.h) && (localView2.requestFocus(2)))
                  break;
              }
              label1764: break label33;
              localView3 = (View)localViewParent;
              break label1660;
              localaw4 = a(localView3);
              continue;
              localaw4 = null;
            }
            label1791: break label33;
            break label33;
            label1793: float f16 = f11;
            localObject3 = localObject2;
            f13 = f16;
          }
        }
        label1815: localaw2 = null;
      }
    }
  }

  private aw e(int paramInt)
  {
    for (int i1 = 0; i1 < this.d.size(); i1++)
    {
      aw localaw = (aw)this.d.get(i1);
      if (localaw.b == paramInt)
        return localaw;
    }
    return null;
  }

  private void e()
  {
    d(this.h);
  }

  private void f()
  {
    if (this.Z == 2);
    int i3;
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
      {
        a(false);
        this.l.abortAnimation();
        int i4 = getScrollX();
        int i5 = getScrollY();
        int i6 = this.l.getCurrX();
        int i7 = this.l.getCurrY();
        if ((i4 != i6) || (i5 != i7))
          scrollTo(i6, i7);
        c(0);
      }
      this.x = false;
      int i2 = 0;
      i3 = i1;
      while (i2 < this.d.size())
      {
        aw localaw = (aw)this.d.get(i2);
        if (localaw.c)
        {
          localaw.c = false;
          i3 = 1;
        }
        i2++;
      }
    }
    if (i3 != 0)
      e();
  }

  private boolean f(int paramInt)
  {
    boolean bool1;
    if (this.d.size() == 0)
    {
      this.S = false;
      a(0, 0.0F);
      boolean bool2 = this.S;
      bool1 = false;
      if (!bool2)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    else
    {
      aw localaw = g();
      int i1 = getWidth();
      float f1 = this.n / i1;
      int i2 = localaw.b;
      float f2 = (paramInt / i1 - localaw.e) / (f1 + localaw.d);
      this.S = false;
      a(i2, f2);
      if (!this.S)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      bool1 = true;
    }
    return bool1;
  }

  private aw g()
  {
    int i1 = getWidth();
    float f1;
    float f2;
    label31: float f3;
    float f4;
    int i2;
    int i3;
    int i4;
    Object localObject;
    label49: aw localaw1;
    aw localaw3;
    int i5;
    if (i1 > 0)
    {
      f1 = getScrollX() / i1;
      if (i1 <= 0)
        break label210;
      f2 = this.n / i1;
      f3 = 0.0F;
      f4 = 0.0F;
      i2 = -1;
      i3 = 0;
      i4 = 1;
      localObject = null;
      if (i3 < this.d.size())
      {
        localaw1 = (aw)this.d.get(i3);
        if ((i4 != 0) || (localaw1.b == i2 + 1))
          break label261;
        localaw3 = this.e;
        localaw3.e = (f2 + (f3 + f4));
        localaw3.b = (i2 + 1);
        localaw3.d = 1.0F;
        i5 = i3 - 1;
      }
    }
    for (aw localaw2 = localaw3; ; localaw2 = localaw1)
    {
      float f5 = localaw2.e;
      float f6 = f2 + (f5 + localaw2.d);
      if ((i4 != 0) || (f1 >= f5))
      {
        if ((f1 < f6) || (i5 == -1 + this.d.size()))
          localObject = localaw2;
      }
      else
      {
        return localObject;
        f1 = 0.0F;
        break;
        label210: f2 = 0.0F;
        break label31;
      }
      int i6 = localaw2.b;
      float f7 = localaw2.d;
      int i7 = i5 + 1;
      f4 = f5;
      i2 = i6;
      f3 = f7;
      localObject = localaw2;
      i3 = i7;
      i4 = 0;
      break label49;
      label261: i5 = i3;
    }
  }

  private boolean g(int paramInt)
  {
    View localView1 = findFocus();
    if (localView1 == this)
      localView1 = null;
    View localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    boolean bool1;
    if ((localView2 != null) && (localView2 != localView1))
      if (paramInt == 17)
      {
        int i3 = a(this.f, localView2).left;
        int i4 = a(this.f, localView1).left;
        if ((localView1 != null) && (i3 >= i4))
          bool1 = i();
      }
    while (true)
    {
      boolean bool2 = bool1;
      do
      {
        do
        {
          if (bool2)
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
          return bool2;
          bool1 = localView2.requestFocus();
          break;
          bool2 = false;
        }
        while (paramInt != 66);
        int i1 = a(this.f, localView2).left;
        int i2 = a(this.f, localView1).left;
        if ((localView1 != null) && (i1 <= i2))
          break label202;
        bool1 = localView2.requestFocus();
        break;
        if ((paramInt == 17) || (paramInt == 1))
        {
          bool1 = i();
          break;
        }
        if (paramInt == 66)
          break label202;
        bool2 = false;
      }
      while (paramInt != 2);
      label202: if ((this.g != null) && (this.h < -1 + this.g.c()))
      {
        a(1 + this.h, true);
        bool1 = true;
      }
      else
      {
        bool1 = false;
      }
    }
  }

  private void h()
  {
    this.z = false;
    this.A = false;
    if (this.I != null)
    {
      this.I.recycle();
      this.I = null;
    }
  }

  private boolean i()
  {
    if (this.h > 0)
    {
      a(-1 + this.h, true);
      return true;
    }
    return false;
  }

  public final v a()
  {
    return this.g;
  }

  public final void a(int paramInt)
  {
    this.x = false;
    if (!this.Q);
    for (boolean bool = true; ; bool = false)
    {
      a(paramInt, bool, false);
      return;
    }
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    this.x = false;
    a(paramInt, paramBoolean, false);
  }

  final void a(ay paramay)
  {
    this.W = paramay;
  }

  public final void a(az paramaz)
  {
    this.U = paramaz;
  }

  public final void a(v paramv)
  {
    if (this.g != null)
    {
      this.g.b(this.m);
      for (int i1 = 0; i1 < this.d.size(); i1++)
      {
        aw localaw = (aw)this.d.get(i1);
        this.g.a(localaw.b, localaw.a);
      }
      this.g.a();
      this.d.clear();
      for (int i2 = 0; i2 < getChildCount(); i2++)
        if (!((ViewPager.LayoutParams)getChildAt(i2).getLayoutParams()).a)
        {
          removeViewAt(i2);
          i2--;
        }
      this.h = 0;
      scrollTo(0, 0);
    }
    v localv = this.g;
    this.g = paramv;
    if (this.g != null)
    {
      if (this.m == null)
        this.m = new ba(this, (byte)0);
      this.g.a(this.m);
      this.x = false;
      this.Q = true;
      if (this.i < 0)
        break label274;
      this.g.a(this.j, this.k);
      a(this.i, false, true);
      this.i = -1;
      this.j = null;
      this.k = null;
    }
    while (true)
    {
      if ((this.W != null) && (localv != paramv))
        this.W.a(localv, paramv);
      return;
      label274: e();
    }
  }

  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayList.size();
    int i2 = getDescendantFocusability();
    if (i2 != 393216)
      for (int i3 = 0; i3 < getChildCount(); i3++)
      {
        View localView = getChildAt(i3);
        if (localView.getVisibility() == 0)
        {
          aw localaw = a(localView);
          if ((localaw != null) && (localaw.b == this.h))
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
      }
    if (((i2 == 262144) && (i1 != paramArrayList.size())) || (!isFocusable()));
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null))
      return;
    paramArrayList.add(this);
  }

  public void addTouchables(ArrayList<View> paramArrayList)
  {
    for (int i1 = 0; i1 < getChildCount(); i1++)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        aw localaw = a(localView);
        if ((localaw != null) && (localaw.b == this.h))
          localView.addTouchables(paramArrayList);
      }
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams));
    for (ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(paramLayoutParams); ; localLayoutParams = paramLayoutParams)
    {
      ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localLayoutParams;
      localLayoutParams1.a |= paramView instanceof av;
      if (this.v)
      {
        if ((localLayoutParams1 != null) && (localLayoutParams1.a))
          throw new IllegalStateException("Cannot add pager decor view during layout");
        localLayoutParams1.d = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, localLayoutParams);
      return;
    }
  }

  public final int b()
  {
    return this.h;
  }

  final az b(az paramaz)
  {
    az localaz = this.V;
    this.V = paramaz;
    return localaz;
  }

  public final void b(int paramInt)
  {
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      paramInt = 1;
    }
    if (paramInt != this.y)
    {
      this.y = paramInt;
      e();
    }
  }

  final void c()
  {
    if ((this.d.size() < 1 + 2 * this.y) && (this.d.size() < this.g.c()));
    int i2;
    for (int i1 = 1; ; i1 = 0)
    {
      i2 = this.h;
      aw localaw;
      for (int i3 = 0; i3 < this.d.size(); i3++)
        localaw = (aw)this.d.get(i3);
    }
    Collections.sort(this.d, b);
    if (i1 != 0)
    {
      int i4 = getChildCount();
      for (int i5 = 0; i5 < i4; i5++)
      {
        ViewPager.LayoutParams localLayoutParams = (ViewPager.LayoutParams)getChildAt(i5).getLayoutParams();
        if (!localLayoutParams.a)
          localLayoutParams.c = 0.0F;
      }
      a(i2, false, true);
      requestLayout();
    }
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ViewPager.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public void computeScroll()
  {
    if ((!this.l.isFinished()) && (this.l.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.l.getCurrX();
      int i4 = this.l.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!f(i3))
        {
          this.l.abortAnimation();
          scrollTo(0, i4);
        }
      }
      ai.b(this);
      return;
    }
    f();
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool2;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0);
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        bool2 = false;
      case 21:
      case 22:
      case 61:
      }
    }
    while (true)
    {
      boolean bool1 = false;
      if (bool2)
        bool1 = true;
      return bool1;
      bool2 = g(17);
      continue;
      bool2 = g(66);
      continue;
      if (Build.VERSION.SDK_INT < 11)
        break;
      if (n.b(paramKeyEvent))
      {
        bool2 = g(2);
      }
      else
      {
        if (!n.a(paramKeyEvent))
          break;
        bool2 = g(1);
      }
    }
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    int i1 = getChildCount();
    for (int i2 = 0; ; i2++)
    {
      boolean bool = false;
      if (i2 < i1)
      {
        View localView = getChildAt(i2);
        if (localView.getVisibility() == 0)
        {
          aw localaw = a(localView);
          if ((localaw != null) && (localaw.b == this.h) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent)))
            bool = true;
        }
      }
      else
      {
        return bool;
      }
    }
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i1 = ai.a(this);
    boolean bool2;
    if ((i1 == 0) || ((i1 == 1) && (this.g != null) && (this.g.c() > 1)))
    {
      boolean bool1 = this.O.a();
      bool2 = false;
      if (!bool1)
      {
        int i5 = paramCanvas.save();
        int i6 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i7 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i6 + getPaddingTop(), this.r * i7);
        this.O.a(i6, i7);
        bool2 = false | this.O.a(paramCanvas);
        paramCanvas.restoreToCount(i5);
      }
      if (!this.P.a())
      {
        int i2 = paramCanvas.save();
        int i3 = getWidth();
        int i4 = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.s) * i3);
        this.P.a(i4, i3);
        bool2 |= this.P.a(paramCanvas);
        paramCanvas.restoreToCount(i2);
      }
    }
    while (true)
    {
      if (bool2)
        ai.b(this);
      return;
      this.O.b();
      this.P.b();
      bool2 = false;
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.o;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.LayoutParams();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.Q = true;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.n > 0) && (this.o != null) && (this.d.size() > 0) && (this.g != null))
    {
      int i1 = getScrollX();
      int i2 = getWidth();
      float f1 = this.n / i2;
      aw localaw = (aw)this.d.get(0);
      float f2 = localaw.e;
      int i3 = this.d.size();
      int i4 = localaw.b;
      int i5 = ((aw)this.d.get(i3 - 1)).b;
      int i6 = 0;
      int i7 = i4;
      if (i7 < i5)
      {
        while ((i7 > localaw.b) && (i6 < i3))
        {
          ArrayList localArrayList = this.d;
          i6++;
          localaw = (aw)localArrayList.get(i6);
        }
        float f3;
        if (i7 == localaw.b)
          f3 = (localaw.e + localaw.d) * i2;
        for (f2 = f1 + (localaw.e + localaw.d); ; f2 += 1.0F + f1)
        {
          if (f3 + this.n > i1)
          {
            this.o.setBounds((int)f3, this.p, (int)(0.5F + (f3 + this.n)), this.q);
            this.o.draw(paramCanvas);
          }
          if (f3 > i1 + i2)
            return;
          i7++;
          break;
          f3 = (1.0F + f2) * i2;
        }
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0xFF & paramMotionEvent.getAction();
    if ((i1 == 3) || (i1 == 1))
    {
      this.z = false;
      this.A = false;
      this.H = -1;
      if (this.I != null)
      {
        this.I.recycle();
        this.I = null;
      }
    }
    do
    {
      return false;
      if (i1 == 0)
        break;
      if (this.z)
        return true;
    }
    while (this.A);
    switch (i1)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      if (this.I == null)
        this.I = VelocityTracker.obtain();
      this.I.addMovement(paramMotionEvent);
      return this.z;
      int i2 = this.H;
      if (i2 != -1)
      {
        int i3 = r.a(paramMotionEvent, i2);
        float f2 = r.c(paramMotionEvent, i3);
        float f3 = f2 - this.F;
        float f4 = Math.abs(f3);
        float f5 = r.d(paramMotionEvent, i3);
        float f6 = Math.abs(f5 - this.G);
        if (f3 != 0.0F)
        {
          float f8 = this.F;
          if (((f8 < this.C) && (f3 > 0.0F)) || ((f8 > getWidth() - this.C) && (f3 < 0.0F)));
          for (int i4 = 1; (i4 == 0) && (a(this, false, (int)f3, (int)f2, (int)f5)); i4 = 0)
          {
            this.F = f2;
            this.E = f2;
            this.G = f5;
            this.A = true;
            return false;
          }
        }
        float f7;
        if ((f4 > this.D) && (f4 > f6))
        {
          this.z = true;
          c(1);
          if (f3 > 0.0F)
          {
            f7 = this.E + this.D;
            label362: this.F = f7;
            a(true);
          }
        }
        while ((this.z) && (a(f2)))
        {
          ai.b(this);
          break;
          f7 = this.E - this.D;
          break label362;
          if (f6 > this.D)
            this.A = true;
        }
        float f1 = paramMotionEvent.getX();
        this.E = f1;
        this.F = f1;
        this.G = paramMotionEvent.getY();
        this.H = r.b(paramMotionEvent, 0);
        this.A = false;
        this.l.computeScrollOffset();
        if ((this.Z == 2) && (Math.abs(this.l.getFinalX() - this.l.getCurrX()) > this.M))
        {
          this.l.abortAnimation();
          this.x = false;
          e();
          this.z = true;
          c(1);
        }
        else
        {
          f();
          this.z = false;
          continue;
          a(paramMotionEvent);
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.v = true;
    e();
    this.v = false;
    int i1 = getChildCount();
    int i2 = paramInt3 - paramInt1;
    int i3 = paramInt4 - paramInt2;
    int i4 = getPaddingLeft();
    int i5 = getPaddingTop();
    int i6 = getPaddingRight();
    int i7 = getPaddingBottom();
    int i8 = getScrollX();
    int i9 = 0;
    int i10 = 0;
    View localView2;
    int i20;
    label172: int i21;
    int i23;
    int i24;
    label224: int i13;
    int i14;
    int i15;
    if (i10 < i1)
    {
      localView2 = getChildAt(i10);
      if (localView2.getVisibility() == 8)
        break label653;
      ViewPager.LayoutParams localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
      if (!localLayoutParams2.a)
        break label653;
      int i17 = 0x7 & localLayoutParams2.b;
      int i18 = 0x70 & localLayoutParams2.b;
      switch (i17)
      {
      case 2:
      case 4:
      default:
        i20 = i4;
        switch (i18)
        {
        default:
          i21 = i5;
          int i29 = i7;
          i23 = i5;
          i24 = i29;
          int i25 = i20 + i8;
          localView2.layout(i25, i21, i25 + localView2.getMeasuredWidth(), i21 + localView2.getMeasuredHeight());
          i13 = i9 + 1;
          i14 = i23;
          i7 = i24;
          i15 = i6;
        case 48:
        case 16:
        case 80:
        }
        break;
      case 3:
      case 1:
      case 5:
      }
    }
    for (int i16 = i4; ; i16 = i4)
    {
      i10++;
      i4 = i16;
      i6 = i15;
      i5 = i14;
      i9 = i13;
      break;
      int i30 = i4 + localView2.getMeasuredWidth();
      i20 = i4;
      i4 = i30;
      break label172;
      i20 = Math.max((i2 - localView2.getMeasuredWidth()) / 2, i4);
      break label172;
      int i19 = i2 - i6 - localView2.getMeasuredWidth();
      i6 += localView2.getMeasuredWidth();
      i20 = i19;
      break label172;
      int i27 = i5 + localView2.getMeasuredHeight();
      int i28 = i5;
      i24 = i7;
      i23 = i27;
      i21 = i28;
      break label224;
      i21 = Math.max((i3 - localView2.getMeasuredHeight()) / 2, i5);
      int i26 = i7;
      i23 = i5;
      i24 = i26;
      break label224;
      i21 = i3 - i7 - localView2.getMeasuredHeight();
      int i22 = i7 + localView2.getMeasuredHeight();
      i23 = i5;
      i24 = i22;
      break label224;
      for (int i11 = 0; i11 < i1; i11++)
      {
        View localView1 = getChildAt(i11);
        if (localView1.getVisibility() != 8)
        {
          ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
          if (!localLayoutParams1.a)
          {
            aw localaw = a(localView1);
            if (localaw != null)
            {
              int i12 = i4 + (int)(i2 * localaw.e);
              if (localLayoutParams1.d)
              {
                localLayoutParams1.d = false;
                localView1.measure(View.MeasureSpec.makeMeasureSpec((int)((i2 - i4 - i6) * localLayoutParams1.c), 1073741824), View.MeasureSpec.makeMeasureSpec(i3 - i5 - i7, 1073741824));
              }
              localView1.layout(i12, i5, i12 + localView1.getMeasuredWidth(), i5 + localView1.getMeasuredHeight());
            }
          }
        }
      }
      this.p = i5;
      this.q = (i3 - i7);
      this.T = i9;
      this.Q = false;
      return;
      label653: i13 = i9;
      i14 = i5;
      i15 = i6;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i1 = getMeasuredWidth();
    this.C = Math.min(i1 / 10, this.B);
    int i2 = i1 - getPaddingLeft() - getPaddingRight();
    int i3 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i4 = getChildCount();
    int i5 = 0;
    View localView2;
    ViewPager.LayoutParams localLayoutParams2;
    int i10;
    int i11;
    int i12;
    label167: int i13;
    label182: label192: int i14;
    int i15;
    if (i5 < i4)
    {
      localView2 = getChildAt(i5);
      if (localView2.getVisibility() != 8)
      {
        localLayoutParams2 = (ViewPager.LayoutParams)localView2.getLayoutParams();
        if ((localLayoutParams2 != null) && (localLayoutParams2.a))
        {
          int i8 = 0x7 & localLayoutParams2.b;
          int i9 = 0x70 & localLayoutParams2.b;
          i10 = -2147483648;
          i11 = -2147483648;
          if ((i9 != 48) && (i9 != 80))
            break label294;
          i12 = 1;
          if ((i8 != 3) && (i8 != 5))
            break label300;
          i13 = 1;
          if (i12 == 0)
            break label306;
          i10 = 1073741824;
          if (localLayoutParams2.width == -2)
            break label478;
          i14 = 1073741824;
          if (localLayoutParams2.width == -1)
            break label471;
          i15 = localLayoutParams2.width;
        }
      }
    }
    while (true)
    {
      if (localLayoutParams2.height != -2)
      {
        i11 = 1073741824;
        if (localLayoutParams2.height == -1);
      }
      for (int i16 = localLayoutParams2.height; ; i16 = i3)
      {
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i15, i14), View.MeasureSpec.makeMeasureSpec(i16, i11));
        if (i12 != 0)
          i3 -= localView2.getMeasuredHeight();
        while (true)
        {
          i5++;
          break;
          label294: i12 = 0;
          break label167;
          label300: i13 = 0;
          break label182;
          label306: if (i13 == 0)
            break label192;
          i11 = 1073741824;
          break label192;
          if (i13 != 0)
            i2 -= localView2.getMeasuredWidth();
        }
        this.t = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        this.u = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        this.v = true;
        e();
        this.v = false;
        int i6 = getChildCount();
        for (int i7 = 0; i7 < i6; i7++)
        {
          View localView1 = getChildAt(i7);
          if (localView1.getVisibility() != 8)
          {
            ViewPager.LayoutParams localLayoutParams1 = (ViewPager.LayoutParams)localView1.getLayoutParams();
            if ((localLayoutParams1 == null) || (!localLayoutParams1.a))
              localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(i2 * localLayoutParams1.c), 1073741824), this.u);
          }
        }
        return;
      }
      label471: i15 = i2;
      continue;
      label478: i14 = i10;
      i15 = i2;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1 = -1;
    int i2 = getChildCount();
    int i3;
    if ((paramInt & 0x2) != 0)
    {
      i1 = 1;
      i3 = 0;
    }
    while (i3 != i2)
    {
      View localView = getChildAt(i3);
      if (localView.getVisibility() == 0)
      {
        aw localaw = a(localView);
        if ((localaw != null) && (localaw.b == this.h) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i3 = i2 - 1;
          i2 = i1;
        }
      }
      else
      {
        i3 += i1;
      }
    }
    return false;
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    ViewPager.SavedState localSavedState = (ViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.g != null)
    {
      this.g.a(localSavedState.b, localSavedState.c);
      a(localSavedState.a, false, true);
      return;
    }
    this.i = localSavedState.a;
    this.j = localSavedState.b;
    this.k = localSavedState.c;
  }

  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.h;
    if (this.g != null)
      localSavedState.b = this.g.b();
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
    {
      int i1 = this.n;
      int i2 = this.n;
      if ((paramInt3 <= 0) || (this.d.isEmpty()))
        break label138;
      int i4 = i1 + paramInt1;
      int i5 = i2 + paramInt3;
      int i6 = (int)(getScrollX() / i5 * i4);
      scrollTo(i6, getScrollY());
      if (!this.l.isFinished())
      {
        int i7 = this.l.getDuration() - this.l.timePassed();
        aw localaw2 = e(this.h);
        this.l.startScroll(i6, 0, (int)(localaw2.e * paramInt1), 0, i7);
      }
    }
    return;
    label138: aw localaw1 = e(this.h);
    if (localaw1 != null);
    for (float f1 = Math.min(localaw1.e, this.s); ; f1 = 0.0F)
    {
      int i3 = (int)(f1 * paramInt1);
      if (i3 == getScrollX())
        break;
      f();
      scrollTo(i3, getScrollY());
      return;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.N)
      return true;
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      return false;
    if ((this.g == null) || (this.g.c() == 0))
      return false;
    if (this.I == null)
      this.I = VelocityTracker.obtain();
    this.I.addMovement(paramMotionEvent);
    int i1 = 0xFF & paramMotionEvent.getAction();
    boolean bool1 = false;
    switch (i1)
    {
    case 4:
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      if (bool1)
        ai.b(this);
      return true;
      this.l.abortAnimation();
      this.x = false;
      e();
      this.z = true;
      c(1);
      float f6 = paramMotionEvent.getX();
      this.E = f6;
      this.F = f6;
      this.H = r.b(paramMotionEvent, 0);
      bool1 = false;
      continue;
      if (!this.z)
      {
        int i8 = r.a(paramMotionEvent, this.H);
        float f2 = r.c(paramMotionEvent, i8);
        float f3 = Math.abs(f2 - this.F);
        float f4 = Math.abs(r.d(paramMotionEvent, i8) - this.G);
        if ((f3 > this.D) && (f3 > f4))
        {
          this.z = true;
          if (f2 - this.E <= 0.0F)
            break label340;
        }
      }
      label340: for (float f5 = this.E + this.D; ; f5 = this.E - this.D)
      {
        this.F = f5;
        c(1);
        a(true);
        boolean bool4 = this.z;
        bool1 = false;
        if (!bool4)
          break;
        bool1 = false | a(r.c(paramMotionEvent, r.a(paramMotionEvent, this.H)));
        break;
      }
      boolean bool3 = this.z;
      bool1 = false;
      if (bool3)
      {
        VelocityTracker localVelocityTracker = this.I;
        localVelocityTracker.computeCurrentVelocity(1000, this.K);
        int i3 = (int)ae.a(localVelocityTracker, this.H);
        this.x = true;
        int i4 = getWidth();
        int i5 = getScrollX();
        aw localaw1 = g();
        int i6 = localaw1.b;
        float f1 = (i5 / i4 - localaw1.e) / localaw1.d;
        if ((Math.abs((int)(r.c(paramMotionEvent, r.a(paramMotionEvent, this.H)) - this.E)) > this.L) && (Math.abs(i3) > this.J))
          if (i3 <= 0);
        label495: for (int i7 = i6; ; i7 = (int)(0.5F + (f1 + i6)))
        {
          if (this.d.size() > 0)
          {
            aw localaw2 = (aw)this.d.get(0);
            aw localaw3 = (aw)this.d.get(-1 + this.d.size());
            i7 = Math.max(localaw2.b, Math.min(i7, localaw3.b));
          }
          a(i7, true, true, i3);
          this.H = -1;
          h();
          bool1 = this.O.c() | this.P.c();
          break;
          i6++;
          break label495;
        }
        boolean bool2 = this.z;
        bool1 = false;
        if (bool2)
        {
          a(this.h, true, true);
          this.H = -1;
          h();
          bool1 = this.O.c() | this.P.c();
          continue;
          int i2 = r.a(paramMotionEvent);
          this.F = r.c(paramMotionEvent, i2);
          this.H = r.b(paramMotionEvent, i2);
          bool1 = false;
          continue;
          a(paramMotionEvent);
          this.F = r.c(paramMotionEvent, r.a(paramMotionEvent, this.H));
          bool1 = false;
        }
      }
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.o);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.6.2
 */