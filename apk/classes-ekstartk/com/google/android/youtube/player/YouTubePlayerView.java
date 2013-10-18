package com.google.android.youtube.player;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import com.google.android.youtube.player.internal.am;
import com.google.android.youtube.player.internal.aw;
import com.google.android.youtube.player.internal.b;
import com.google.android.youtube.player.internal.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public final class YouTubePlayerView extends ViewGroup
  implements j
{
  private final n a;
  private final Set<View> b;
  private final o c;
  private e d;
  private aw e;
  private View f;
  private am g;
  private j h;
  private Bundle i;
  private h j;
  private boolean k;

  public YouTubePlayerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public YouTubePlayerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, ((YouTubeBaseActivity)paramContext).a());
  }

  YouTubePlayerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, o paramo)
  {
    super((Context)com.google.android.youtube.player.internal.c.a(paramContext, "context cannot be null"), paramAttributeSet, paramInt);
    this.c = ((o)com.google.android.youtube.player.internal.c.a(paramo, "listener cannot be null"));
    if (getBackground() == null)
      setBackgroundColor(-16777216);
    setClipToPadding(false);
    this.g = new am(paramContext);
    requestTransparentRegion(this.g);
    addView(this.g);
    this.b = new HashSet();
    this.a = new n(this, (byte)0);
  }

  private void a(View paramView)
  {
    if ((paramView == this.g) || ((this.e != null) && (paramView == this.f)));
    for (int m = 1; m == 0; m = 0)
      throw new UnsupportedOperationException("No views can be added on top of the player");
  }

  private void a(c paramc)
  {
    this.e = null;
    this.g.c();
    if (this.j != null)
    {
      h localh = this.j;
      localh.a(paramc);
      this.j = null;
    }
  }

  final void a()
  {
    if (this.e != null)
      this.e.b();
  }

  final void a(Activity paramActivity, j paramj, String paramString, h paramh, Bundle paramBundle)
  {
    if ((this.e != null) || (this.j != null))
      return;
    com.google.android.youtube.player.internal.c.a(paramActivity, "activity cannot be null");
    this.h = ((j)com.google.android.youtube.player.internal.c.a(paramj, "provider cannot be null"));
    this.j = ((h)com.google.android.youtube.player.internal.c.a(paramh, "listener cannot be null"));
    this.i = paramBundle;
    this.g.b();
    this.d = b.a().a(getContext(), paramString, new l(this, paramActivity), new m(this));
    this.d.e();
  }

  final void a(boolean paramBoolean)
  {
    if (this.e != null)
    {
      this.e.b(paramBoolean);
      b(paramBoolean);
    }
  }

  public final void addFocusables(ArrayList<View> paramArrayList, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    super.addFocusables(localArrayList, paramInt);
    paramArrayList.addAll(localArrayList);
    this.b.clear();
    this.b.addAll(localArrayList);
  }

  public final void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    super.addFocusables(localArrayList, paramInt1, paramInt2);
    paramArrayList.addAll(localArrayList);
    this.b.clear();
    this.b.addAll(localArrayList);
  }

  public final void addView(View paramView)
  {
    a(paramView);
    super.addView(paramView);
  }

  public final void addView(View paramView, int paramInt)
  {
    a(paramView);
    super.addView(paramView, paramInt);
  }

  public final void addView(View paramView, int paramInt1, int paramInt2)
  {
    a(paramView);
    super.addView(paramView, paramInt1, paramInt2);
  }

  public final void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public final void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
    super.addView(paramView, paramLayoutParams);
  }

  final void b()
  {
    if (this.e != null)
      this.e.c();
  }

  final void b(boolean paramBoolean)
  {
    this.k = true;
    if (this.e != null)
      this.e.a(paramBoolean);
  }

  final void c()
  {
    if (this.e != null)
      this.e.d();
  }

  public final void clearChildFocus(View paramView)
  {
    if (hasFocusable())
    {
      requestFocus();
      return;
    }
    super.clearChildFocus(paramView);
  }

  final void d()
  {
    if (this.e != null)
      this.e.e();
  }

  public final boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (this.e != null)
    {
      boolean bool2;
      if (paramKeyEvent.getAction() == 0)
        if (!this.e.a(paramKeyEvent.getKeyCode(), paramKeyEvent))
        {
          boolean bool3 = super.dispatchKeyEvent(paramKeyEvent);
          bool2 = false;
          if (!bool3);
        }
        else
        {
          bool2 = true;
        }
      boolean bool1;
      do
      {
        return bool2;
        if (paramKeyEvent.getAction() != 1)
          break label84;
        if (this.e.b(paramKeyEvent.getKeyCode(), paramKeyEvent))
          break;
        bool1 = super.dispatchKeyEvent(paramKeyEvent);
        bool2 = false;
      }
      while (!bool1);
      return true;
    }
    label84: return super.dispatchKeyEvent(paramKeyEvent);
  }

  final Bundle e()
  {
    if (this.e == null)
      return this.i;
    return this.e.h();
  }

  public final void focusableViewAvailable(View paramView)
  {
    super.focusableViewAvailable(paramView);
    this.b.add(paramView);
  }

  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getViewTreeObserver().addOnGlobalFocusChangeListener(this.a);
  }

  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.e != null)
      this.e.a(paramConfiguration);
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getViewTreeObserver().removeOnGlobalFocusChangeListener(this.a);
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() > 0)
      getChildAt(0).layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      localView.measure(paramInt1, paramInt2);
      setMeasuredDimension(localView.getMeasuredWidth(), localView.getMeasuredHeight());
      return;
    }
    setMeasuredDimension(0, 0);
  }

  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }

  public final void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    this.b.add(paramView2);
  }

  public final void setClipToPadding(boolean paramBoolean)
  {
  }

  public final void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayerView
 * JD-Core Version:    0.6.2
 */