package com.nianticproject.ingress;

import android.content.Context;
import android.database.Cursor;
import android.os.Build.VERSION;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.nianticproject.ingress.common.b;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.ui.elements.bo;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.an;
import com.nianticproject.ingress.content.f;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.ui.CommHandle;
import com.nianticproject.ingress.ui.CommSlidingDrawer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AndroidComm extends CommSlidingDrawer
  implements android.support.v4.app.x<Cursor>, com.nianticproject.ingress.common.a
{
  private static final Pattern d = Pattern.compile("\\s*(@[0-9a-zA-Z]*\\s*)*");
  private LinearLayout A;
  private int B;
  private float C;
  private final HashSet<com.nianticproject.ingress.common.c> e = new HashSet();
  private final aa f = new aa(AndroidComm.class);
  private final android.support.v4.app.w g;
  private final x h;
  private final com.nianticproject.ingress.ui.t i;
  private bo j;
  private CommHandle k;
  private View l;
  private View[] m;
  private ViewPager n;
  private final ak o;
  private View p;
  private int q = 0;
  private boolean r;
  private com.nianticproject.ingress.ui.r s;
  private int t;
  private float u = -1.0F;
  private b v = b.a;
  private boolean w;
  private long x;
  private EditText y;
  private Button z;

  public AndroidComm(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    FragmentActivity localFragmentActivity = (FragmentActivity)getContext();
    this.i = new com.nianticproject.ingress.ui.t();
    this.o = new ak(localFragmentActivity.getSupportFragmentManager(), this.w);
    this.h = new x(new h(this));
    this.g = localFragmentActivity.getSupportLoaderManager();
    aa localaa = this.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.g;
    localaa.a("LoaderManager(%s)", arrayOfObject);
  }

  public AndroidComm(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    FragmentActivity localFragmentActivity = (FragmentActivity)getContext();
    this.i = new com.nianticproject.ingress.ui.t();
    this.o = new ak(localFragmentActivity.getSupportFragmentManager(), this.w);
    this.h = new x(new h(this));
    this.g = localFragmentActivity.getSupportLoaderManager();
    aa localaa = this.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.g;
    localaa.a("LoaderManager(%s)", arrayOfObject);
  }

  private void a(b paramb, String paramString, List<com.nianticproject.ingress.shared.plext.c> paramList, long paramLong, int paramInt)
  {
    NemesisService.a(getContext(), paramb, paramString, paramList, false, paramLong, paramInt, false);
  }

  private void a(Runnable paramRunnable)
  {
    if (an.a())
    {
      paramRunnable.run();
      return;
    }
    this.h.post(paramRunnable);
  }

  private void a(String paramString, long paramLong)
  {
    if (this.j == null)
      return;
    this.j.a(paramString);
    this.t = (1 + this.t);
    this.h.sendMessageDelayed(Message.obtain(this.h, 1, Integer.valueOf(this.t)), paramLong);
  }

  private void d(boolean paramBoolean)
  {
    this.o.b(paramBoolean);
  }

  private void e(boolean paramBoolean)
  {
    boolean bool = com.nianticproject.ingress.common.q.f().a(com.nianticproject.ingress.common.p.a.a());
    if ((paramBoolean) || (this.w != bool))
    {
      this.w = bool;
      this.o.a(this.w);
      int i1 = 0;
      if (i1 < this.m.length)
      {
        if (this.o.c(i1) == -2)
          this.m[i1].setVisibility(8);
        while (true)
        {
          this.m[i1].setOnClickListener(new z(this, i1, (byte)0));
          i1++;
          break;
          this.m[i1].setVisibility(0);
        }
      }
    }
  }

  private void n()
  {
    int i1 = 1;
    label46: Button localButton;
    if ((!TextUtils.isEmpty(this.y.getText())) && (!d.matcher(this.y.getText()).matches()))
    {
      int i3 = i1;
      if (this.q == i1)
        break label72;
      int i5 = i1;
      localButton = this.z;
      if ((i3 == 0) || (i5 == 0))
        break label77;
    }
    while (true)
    {
      localButton.setEnabled(i1);
      return;
      int i4 = 0;
      break;
      label72: int i6 = 0;
      break label46;
      label77: int i2 = 0;
    }
  }

  private void o()
  {
    this.g.b(this);
  }

  public final void A_()
  {
    this.f.a("onLoaderReset");
    this.s.a(null);
  }

  public final android.support.v4.a.d<Cursor> a()
  {
    try
    {
      aj.a("AndroidComm.onCreateLoader");
      int i1 = this.o.b(this.q);
      com.nianticproject.ingress.content.e locale = new com.nianticproject.ingress.content.e(getContext(), this.v, Integer.valueOf(1), i1, "timestamp DESC");
      return locale;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    int i1 = 1;
    if ((this.q == paramInt) && (!this.r))
      return;
    boolean bool = com.nianticproject.ingress.common.q.f().a(com.nianticproject.ingress.common.p.a.a());
    if ((paramInt == i1) && (!bool))
      paramInt = 0;
    this.q = paramInt;
    this.r = false;
    n();
    float f2;
    if (paramInt != i1)
    {
      if (Build.VERSION.SDK_INT < 12)
        break label231;
      if ((i1 == 0) && (this.B <= 0))
      {
        this.B = this.A.getHeight();
        this.C = this.z.getY();
      }
      float f1 = this.C;
      if (i1 == 0)
        break label221;
      f2 = 0.0F;
      label114: float f3 = f2 + f1;
      if ((this.z.getY() != f3) && (this.B > 0))
      {
        this.z.animate().y(f3);
        this.y.animate().y(f3);
      }
    }
    label275: 
    while (true)
    {
      this.s.a(this.o.b(paramInt));
      this.n.a(this.o.c(paramInt), paramBoolean);
      this.i.a(this.m[paramInt]);
      o();
      return;
      i1 = 0;
      break;
      label221: f2 = this.B;
      break label114;
      label231: int i2 = 0;
      if (i1 != 0);
      while (true)
      {
        if (this.z.getVisibility() == i2)
          break label275;
        this.z.setVisibility(i2);
        this.y.setVisibility(i2);
        break;
        i2 = 4;
      }
    }
  }

  public final void a(b paramb)
  {
    ec.a("setChannel");
    e(false);
    if (this.v == paramb)
      return;
    this.v = paramb;
    this.o.a(paramb);
    switch (o.a[paramb.ordinal()])
    {
    default:
      return;
    case 1:
      this.l.setVisibility(0);
      this.y.setEnabled(true);
      this.r = true;
      a(this.q, false);
      return;
    case 2:
    }
    this.l.setVisibility(8);
    this.y.setText(null);
    this.y.setEnabled(false);
    this.k.a(0);
    this.r = true;
    a(0, false);
  }

  public final void a(com.nianticproject.ingress.common.c paramc)
  {
    a(new k(this, paramc));
  }

  public final void a(bo parambo)
  {
    this.j = parambo;
  }

  public final void a(f paramf)
  {
    int i1 = 1;
    int i2;
    if ((paramf == null) || (paramf.getCount() == 0) || (m()) || (l()) || (this.k.a() == 255))
    {
      i2 = i1;
      if (i2 == 0)
      {
        paramf.moveToPosition(paramf.getCount());
        while ((paramf.moveToPrevious()) && (paramf.getLong(3) > this.x))
          if (paramf.getInt(7) != 0)
          {
            this.k.a(255);
            if (getVisibility() != 0)
              break label159;
          }
      }
    }
    while (true)
    {
      if ((i1 != 0) && (!com.nianticproject.ingress.push.d.b(com.nianticproject.ingress.push.d.a())))
        o.a().a(bs.al);
      paramf.moveToLast();
      long l1 = paramf.getLong(3);
      if (this.x < l1)
        this.x = l1;
      return;
      i2 = 0;
      break;
      label159: i1 = 0;
    }
  }

  public final void a(com.nianticproject.ingress.shared.plext.c paramc)
  {
    a(Arrays.asList(new com.nianticproject.ingress.shared.plext.c[] { paramc }));
  }

  public final void a(com.nianticproject.ingress.ui.k paramk)
  {
    this.o.a(paramk);
  }

  public final void a(String paramString)
  {
    a(this.v, paramString, null, System.currentTimeMillis(), 2500);
  }

  public final void a(String paramString, int paramInt)
  {
    if (this.q == 1)
      if (!com.nianticproject.ingress.content.a.a(paramInt, ak.c))
        break label113;
    label113: for (int i1 = 2; ; i1 = 0)
    {
      a(i1, false);
      this.y.setVisibility(4);
      this.y.setVisibility(0);
      if (this.y.getText().toString().contains(paramString))
        break;
      this.y.getEditableText().insert(this.y.getSelectionStart(), paramString + " ");
      o.a().a(bs.aO);
      return;
    }
    o.a().a(bs.aN);
  }

  public final void a(String paramString, long paramLong, int paramInt)
  {
    a(this.v, paramString, null, paramLong, paramInt);
  }

  public final void a(List<com.nianticproject.ingress.shared.plext.c> paramList)
  {
    a(this.v, "", paramList, System.currentTimeMillis(), 2500);
  }

  public final void a(boolean paramBoolean)
  {
    a(new j(this, paramBoolean));
  }

  public final void b(com.nianticproject.ingress.common.c paramc)
  {
    a(new l(this, paramc));
  }

  public final void b(String paramString)
  {
    this.h.post(new v(this, paramString));
  }

  public final void b(boolean paramBoolean)
  {
    if (l())
      return;
    a(new m(this, paramBoolean));
  }

  public final void c()
  {
    ec.a("scrollToBottom");
    this.o.e();
  }

  public final void c(String paramString)
  {
    if (this.j == null)
      return;
    this.h.post(new w(this, paramString));
  }

  public final void c(boolean paramBoolean)
  {
    if (!l())
      return;
    a(new n(this, paramBoolean));
  }

  public final void d()
  {
    if (this.j == null)
      return;
    this.h.post(new i(this));
  }

  public final boolean e()
  {
    return l();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.x = System.currentTimeMillis();
    if (this.v != null)
      this.o.a(this.v);
    this.r = true;
    a(this.q, false);
    o();
  }

  protected void onDetachedFromWindow()
  {
    this.h.removeCallbacksAndMessages(null);
    super.onDetachedFromWindow();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.p = findViewById(2131230728);
    ListView localListView = (ListView)findViewById(2131230730);
    this.l = findViewById(2131230737);
    this.n = ((ViewPager)findViewById(2131230745));
    this.y = ((EditText)findViewById(2131230743));
    this.z = ((Button)findViewById(2131230744));
    this.A = ((LinearLayout)findViewById(2131230742));
    this.k = ((CommHandle)findViewById(2131230729));
    View[] arrayOfView = new View[3];
    arrayOfView[0] = findViewById(2131230739);
    arrayOfView[1] = findViewById(2131230741);
    arrayOfView[2] = findViewById(2131230740);
    this.m = arrayOfView;
    e(true);
    this.s = new com.nianticproject.ingress.ui.r(getContext(), null, true, this.o.b(this.q), true);
    localListView.setAdapter(this.s);
    this.n.b(-1 + this.m.length);
    this.n.a(this.o);
    this.n.a(new p(this));
    this.y.addTextChangedListener(new q(this));
    this.z.setOnClickListener(new r(this));
    this.z.setEnabled(false);
    a(new s(this));
    a(new t(this));
    a(new u(this));
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = super.onTouchEvent(paramMotionEvent);
    if ((bool) && (paramMotionEvent.getAction() == 0))
      d(false);
    return bool;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.AndroidComm
 * JD-Core Version:    0.6.2
 */