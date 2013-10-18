package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.f;

public class dz extends LinearLayout
  implements c, d
{
  private static final int m = Color.parseColor("#666666");
  protected boolean a;
  protected int b = 0;
  protected final LinearLayout c;
  protected final FrameLayout d;
  protected final CompoundButton e;
  protected final ep f;
  protected int g = 1;
  protected String h;
  protected com.google.android.gms.plus.a i;
  protected du j;
  protected final Resources k;
  protected final LayoutInflater l;
  private final ProgressBar n;
  private final ds[] o = new ds[4];
  private int p = 2;
  private int q = 3;
  private Uri[] r;
  private String[] s;
  private String[] t;
  private en u = new en(this);

  public dz(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    gg.a(paramContext, "Context must not be null.");
    String str1;
    int i2;
    label98: String str2;
    int i3;
    if (f.a(paramContext) != 0)
    {
      this.k = null;
      this.l = null;
      str1 = a.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", paramContext, paramAttributeSet, "PlusOneButton");
      if (!"SMALL".equalsIgnoreCase(str1))
        break label263;
      i2 = 0;
      this.q = i2;
      str2 = a.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", paramContext, paramAttributeSet, "PlusOneButton");
      if (!"INLINE".equalsIgnoreCase(str2))
        break label309;
      i3 = 2;
    }
    Point localPoint;
    while (true)
    {
      this.p = i3;
      localPoint = new Point();
      a(localPoint);
      if (!isInEditMode())
        break label339;
      TextView localTextView = new TextView(paramContext);
      localTextView.setGravity(17);
      localTextView.setText("[ +1 ]");
      addView(localTextView, new LinearLayout.LayoutParams(localPoint.x, localPoint.y));
      this.f = null;
      this.n = null;
      this.e = null;
      this.d = null;
      this.c = null;
      return;
      Context localContext = h();
      this.k = localContext.getResources();
      this.l = ((LayoutInflater)localContext.getSystemService("layout_inflater"));
      break;
      label263: if ("MEDIUM".equalsIgnoreCase(str1))
      {
        i2 = 1;
        break label98;
      }
      if ("TALL".equalsIgnoreCase(str1))
      {
        i2 = 2;
        break label98;
      }
      "STANDARD".equalsIgnoreCase(str1);
      i2 = 3;
      break label98;
      label309: if ("NONE".equalsIgnoreCase(str2))
      {
        i3 = 0;
      }
      else
      {
        "BUBBLE".equalsIgnoreCase(str2);
        i3 = 1;
      }
    }
    label339: setFocusable(true);
    this.c = new LinearLayout(paramContext);
    this.c.setGravity(17);
    this.c.setOrientation(0);
    addView(this.c);
    this.e = new eo(this, paramContext);
    this.e.setBackgroundDrawable(null);
    ep localep = new ep(paramContext);
    localep.setFocusable(false);
    localep.b();
    localep.a();
    localep.a(TypedValue.applyDimension(2, a(this.q, this.p), paramContext.getResources().getDisplayMetrics()));
    localep.a(m);
    localep.setVisibility(0);
    this.f = localep;
    FrameLayout localFrameLayout = new FrameLayout(paramContext);
    localFrameLayout.setFocusable(false);
    this.d = localFrameLayout;
    this.d.addView(this.e, new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
    b(localPoint);
    ProgressBar localProgressBar = new ProgressBar(paramContext, null, 16843400);
    localProgressBar.setFocusable(false);
    localProgressBar.setIndeterminate(true);
    this.n = localProgressBar;
    this.n.setVisibility(4);
    this.d.addView(this.n, new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
    int i4 = this.o.length;
    while (i1 < i4)
    {
      ds[] arrayOfds = this.o;
      ds localds = new ds(getContext());
      localds.setVisibility(8);
      arrayOfds[i1] = localds;
      i1++;
    }
    j();
  }

  private static int a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    case 1:
    default:
    case 2:
      do
        return 13;
      while (paramInt2 == 2);
      return 15;
    case 0:
    }
    return 11;
  }

  private void a(int paramInt)
  {
    int i1 = this.q;
    this.g = paramInt;
    this.q = i1;
    d();
  }

  private void a(Point paramPoint)
  {
    int i1 = 24;
    int i2 = 20;
    switch (this.q)
    {
    default:
      int i3 = i1;
      i1 = 38;
      i2 = i3;
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      float f1 = TypedValue.applyDimension(1, i1, localDisplayMetrics);
      float f2 = TypedValue.applyDimension(1, i2, localDisplayMetrics);
      paramPoint.x = ((int)(0.5D + f1));
      paramPoint.y = ((int)(0.5D + f2));
      return;
      i1 = 32;
      continue;
      i2 = 14;
      continue;
      i1 = 50;
    }
  }

  private void b(Point paramPoint)
  {
    paramPoint.y = ((int)(paramPoint.y - TypedValue.applyDimension(1, 6.0F, getResources().getDisplayMetrics())));
    paramPoint.x = paramPoint.y;
  }

  private Context h()
  {
    try
    {
      Context localContext = getContext().createPackageContext("com.google.android.gms", 4);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      if (Log.isLoggable("PlusOneButton", 5))
        Log.w("PlusOneButton", "Google Play services is not installed");
    }
    return null;
  }

  private void i()
  {
    int i1 = 1;
    int i2 = (int)TypedValue.applyDimension(i1, 5.0F, getContext().getResources().getDisplayMetrics());
    int i3 = (int)TypedValue.applyDimension(i1, 1.0F, getContext().getResources().getDisplayMetrics());
    int i4 = this.o.length;
    int i5 = 0;
    if (i5 < i4)
    {
      LinearLayout.LayoutParams localLayoutParams;
      if (this.o[i5].getVisibility() == 0)
      {
        localLayoutParams = new LinearLayout.LayoutParams(this.o[i5].getLayoutParams());
        if (i1 == 0)
          break label120;
        localLayoutParams.setMargins(i2, 0, i3, 0);
        i1 = 0;
      }
      while (true)
      {
        this.o[i5].setLayoutParams(localLayoutParams);
        i5++;
        break;
        label120: localLayoutParams.setMargins(i3, 0, i3, 0);
      }
    }
  }

  private void j()
  {
    a(1);
    this.n.setVisibility(4);
    k();
  }

  private void k()
  {
    CompoundButton localCompoundButton = this.e;
    Drawable localDrawable;
    if (this.k == null)
    {
      localDrawable = null;
      localCompoundButton.setButtonDrawable(localDrawable);
    }
    switch (this.g)
    {
    default:
      this.e.setEnabled(false);
      this.e.setChecked(false);
      return;
      Resources localResources1 = this.k;
      Resources localResources2 = this.k;
      String str;
      switch (this.q)
      {
      default:
        str = "ic_plusone_standard";
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        localDrawable = localResources1.getDrawable(localResources2.getIdentifier(str, "drawable", "com.google.android.gms"));
        break;
        str = "ic_plusone_small";
        continue;
        str = "ic_plusone_medium";
        continue;
        str = "ic_plusone_tall";
      }
    case 0:
      this.e.setEnabled(true);
      this.e.setChecked(true);
      return;
    case 1:
      this.e.setEnabled(true);
      this.e.setChecked(false);
      return;
    case 2:
    }
    this.e.setEnabled(false);
    this.e.setChecked(true);
  }

  private void l()
  {
    switch (this.p)
    {
    default:
      this.f.a(null);
      this.f.setVisibility(8);
      return;
    case 2:
      this.f.a(this.s);
      this.f.setVisibility(0);
      return;
    case 1:
    }
    this.f.a(this.t);
    this.f.setVisibility(0);
  }

  private void m()
  {
    int i1 = 0;
    if ((this.r != null) && (this.p == 2))
    {
      Point localPoint = new Point();
      a(localPoint);
      localPoint.x = localPoint.y;
      int i3 = this.o.length;
      int i4 = this.r.length;
      int i5 = 0;
      if (i5 < i3)
      {
        Uri localUri;
        if (i5 < i4)
        {
          localUri = this.r[i5];
          label78: if (localUri != null)
            break label107;
          this.o[i5].setVisibility(8);
        }
        while (true)
        {
          i5++;
          break;
          localUri = null;
          break label78;
          label107: this.o[i5].setLayoutParams(new LinearLayout.LayoutParams(localPoint.x, localPoint.y));
          this.o[i5].a(localUri, localPoint.y);
          this.o[i5].setVisibility(0);
        }
      }
    }
    else
    {
      int i2 = this.o.length;
      while (i1 < i2)
      {
        this.o[i1].setVisibility(8);
        i1++;
      }
    }
    i();
  }

  public final void a()
  {
    if (this.h != null)
      this.i.a(this.u, this.h);
  }

  public final void a(com.google.android.gms.common.a parama)
  {
    f();
  }

  public final void b()
  {
  }

  public final void c()
  {
    setOnClickListener(new em(this));
  }

  protected final void d()
  {
    int i1 = 0;
    if (isInEditMode())
      return;
    this.c.removeAllViews();
    Point localPoint = new Point();
    a(localPoint);
    this.e.setLayoutParams(new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
    b(localPoint);
    this.n.setLayoutParams(new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
    String str;
    label143: LinearLayout.LayoutParams localLayoutParams;
    label193: int i2;
    label204: int i3;
    label222: int i4;
    int i5;
    if (this.p == 1)
    {
      ep localep3 = this.f;
      switch (this.q)
      {
      default:
        str = "global_count_bubble_standard";
        localep3.a(gh.a(str));
        m();
        ep localep1 = this.f;
        switch (this.p)
        {
        default:
          localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
          if (this.q == 2)
          {
            i2 = 1;
            localLayoutParams.bottomMargin = i2;
            if (this.q != 2)
              break label476;
            i3 = 0;
            localLayoutParams.leftMargin = i3;
            localep1.setLayoutParams(localLayoutParams);
            float f1 = TypedValue.applyDimension(2, a(this.q, this.p), getContext().getResources().getDisplayMetrics());
            this.f.a(f1);
            ep localep2 = this.f;
            i4 = (int)TypedValue.applyDimension(1, 3.0F, getContext().getResources().getDisplayMetrics());
            i5 = (int)TypedValue.applyDimension(1, 5.0F, getContext().getResources().getDisplayMetrics());
            if (this.p != 2)
              break label482;
            label326: if ((this.q != 2) || (this.p != 1))
              break label488;
            label342: localep2.setPadding(i5, 0, 0, i4);
            if ((this.q != 2) || (this.p != 1))
              break label494;
            this.c.setOrientation(1);
            this.c.addView(this.f);
            this.c.addView(this.d);
          }
          break;
        case 2:
        case 1:
        }
        break;
      case 1:
      case 0:
      case 2:
      }
    }
    while (true)
    {
      requestLayout();
      return;
      str = "global_count_bubble_medium";
      break;
      str = "global_count_bubble_small";
      break;
      str = "global_count_bubble_tall";
      break;
      this.f.a(null);
      break label143;
      localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
      break label193;
      localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      break label193;
      i2 = 0;
      break label204;
      label476: i3 = 1;
      break label222;
      label482: i5 = 0;
      break label326;
      label488: i4 = 0;
      break label342;
      label494: this.c.setOrientation(0);
      this.c.addView(this.d);
      int i6 = this.o.length;
      while (i1 < i6)
      {
        this.c.addView(this.o[i1]);
        i1++;
      }
      this.c.addView(this.f);
    }
  }

  public final void e()
  {
    a(2);
    this.n.setVisibility(0);
    k();
  }

  public final void f()
  {
    a(3);
    this.n.setVisibility(4);
    k();
  }

  protected final void g()
  {
    if (this.j == null)
      return;
    this.s = this.j.a.getStringArray("inline_annotations");
    l();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.j.a.getString("bubble_text");
    this.t = arrayOfString;
    l();
    Parcelable[] arrayOfParcelable = this.j.a.getParcelableArray("profile_photo_uris");
    Uri[] arrayOfUri;
    if (arrayOfParcelable == null)
      arrayOfUri = null;
    while (true)
    {
      this.r = arrayOfUri;
      m();
      if (!this.j.a.getBoolean("has_plus_one", false))
        break;
      a(0);
      this.n.setVisibility(4);
      k();
      return;
      arrayOfUri = new Uri[arrayOfParcelable.length];
      System.arraycopy(arrayOfParcelable, 0, arrayOfUri, 0, arrayOfParcelable.length);
    }
    j();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.i != null)
    {
      if (!this.i.b(this))
        this.i.a(this);
      if (!this.i.b(this))
        this.i.a(this);
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.i != null)
    {
      if (this.i.b(this))
        this.i.c(this);
      if (this.i.b(this))
        this.i.c(this);
    }
  }

  public boolean performClick()
  {
    return this.e.performClick();
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.e.setOnClickListener(paramOnClickListener);
    this.f.setOnClickListener(paramOnClickListener);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.dz
 * JD-Core Version:    0.6.2
 */