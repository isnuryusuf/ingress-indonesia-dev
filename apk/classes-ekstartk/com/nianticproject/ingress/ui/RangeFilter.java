package com.nianticproject.ingress.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.service.CommService;

public class RangeFilter extends TouchCollapsibleLayout
  implements View.OnClickListener, SeekBar.OnSeekBarChangeListener
{
  private View a;
  private TextView b;
  private SeekBar c;
  private TextView d;
  private TextView e;
  private TextView f;
  private boolean g;
  private final Paint h;
  private final Paint i;
  private final Paint j;

  public RangeFilter(Context paramContext)
  {
    super(paramContext);
    a();
    b();
    this.g = false;
    this.h = new Paint();
    this.h.setColor(getResources().getColor(2131165195));
    this.h.setStyle(Paint.Style.FILL_AND_STROKE);
    this.i = new Paint();
    this.i.setColor(-16428976);
    this.j = new Paint();
    this.j.setColor(-16672615);
    setWillNotDraw(false);
  }

  public RangeFilter(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
    b();
    this.g = false;
    this.h = new Paint();
    this.h.setColor(getResources().getColor(2131165195));
    this.h.setStyle(Paint.Style.FILL_AND_STROKE);
    this.i = new Paint();
    this.i.setColor(-16428976);
    this.j = new Paint();
    this.j.setColor(-16672615);
    setWillNotDraw(false);
  }

  public RangeFilter(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
    b();
    this.g = false;
    this.h = new Paint();
    this.h.setColor(getResources().getColor(2131165195));
    this.h.setStyle(Paint.Style.FILL_AND_STROKE);
    this.i = new Paint();
    this.i.setColor(-16428976);
    this.j = new Paint();
    this.j.setColor(-16672615);
    setWillNotDraw(false);
  }

  private void a(View paramView, int[] paramArrayOfInt)
  {
    paramView.getLocationOnScreen(paramArrayOfInt);
    int k = paramArrayOfInt[0];
    int m = paramArrayOfInt[1];
    getLocationOnScreen(paramArrayOfInt);
    paramArrayOfInt[0] = (k - paramArrayOfInt[0]);
    paramArrayOfInt[1] = (m - paramArrayOfInt[1]);
  }

  protected final void d()
  {
    super.d();
    this.a.setBackgroundResource(2130837624);
  }

  protected final void e()
  {
    super.e();
    View localView = this.a;
    if (Build.VERSION.SDK_INT >= 16)
    {
      localView.setBackground(null);
      return;
    }
    localView.setBackgroundDrawable(null);
  }

  public void onClick(View paramView)
  {
    if (paramView == this.d)
      this.c.setProgress(ag.b(ag.a));
    do
    {
      return;
      if (paramView == this.e)
      {
        this.c.setProgress(ag.b(ag.b));
        return;
      }
    }
    while (paramView != this.f);
    this.c.setProgress(ag.b(ag.c));
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (g())
    {
      int[] arrayOfInt2 = new int[2];
      a(this.a, arrayOfInt2);
      int i16 = arrayOfInt2[0] + this.a.getWidth() / 2;
      int i17 = -4 + arrayOfInt2[1];
      a(this.c, arrayOfInt2);
      int i18 = this.c.getWidth() - (this.c.getPaddingLeft() + this.c.getPaddingRight());
      int i19 = -4 + (arrayOfInt2[0] + this.c.getPaddingLeft()) + (int)(this.c.getProgress() / this.c.getMax() * i18);
      paramCanvas.drawLine(i16, i17, i19, i17, this.h);
      paramCanvas.drawLine(i19, i17, i19 + 8, i17 + 8, this.h);
    }
    int[] arrayOfInt1 = new int[2];
    a(this.c, arrayOfInt1);
    int k = arrayOfInt1[0];
    int m = arrayOfInt1[1] + this.c.getHeight() / 2;
    int n = k + this.c.getPaddingLeft();
    int i1 = k + this.c.getWidth() - this.c.getPaddingRight() - n;
    int i2 = m - 16;
    int i3 = m + 16;
    ag[] arrayOfag1 = ag.values();
    int i4 = arrayOfag1.length;
    for (int i5 = 0; i5 < i4; i5++)
    {
      int i15 = n + (int)(ag.b(arrayOfag1[i5]) / this.c.getMax() * i1);
      paramCanvas.drawRect(i15 - 2, i2, i15 + 2, i3, this.h);
    }
    int i6 = m - 8;
    int i7 = m + 8;
    for (ag localag : ag.values())
      if (ag.b(localag) != 0)
      {
        int i10 = n + (int)(ag.b(localag) / this.c.getMax() * i1);
        int i11 = 0;
        int i12 = 6;
        int i14;
        for (int i13 = 6; i11 < 6; i13 = i14)
        {
          paramCanvas.drawRect(-1 + (i10 - i13), i6, 1 + (i10 - i13), i7, this.h);
          i14 = i13 + i12;
          i11++;
          i12 = i13;
        }
      }
    paramCanvas.drawLine(0.0F, getHeight(), getWidth(), getHeight(), this.i);
    paramCanvas.drawLine(0.0F, -1 + getHeight(), getWidth(), -1 + getHeight(), this.j);
  }

  protected void onFinishInflate()
  {
    this.a = findViewById(2131230822);
    this.b = ((TextView)findViewById(2131230823));
    this.c = ((SeekBar)findViewById(2131230824));
    this.d = ((TextView)findViewById(2131230825));
    this.e = ((TextView)findViewById(2131230826));
    this.f = ((TextView)findViewById(2131230827));
    ag localag = ag.b(c.e(ag.a(ag.b)));
    int k = -2147483648;
    ag[] arrayOfag = ag.values();
    int m = arrayOfag.length;
    for (int n = 0; n < m; n++)
      k = Math.max(k, ag.b(arrayOfag[n]));
    this.c.setOnSeekBarChangeListener(this);
    this.c.setMax(k);
    this.c.setProgress(ag.b(localag));
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.f.setOnClickListener(this);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.g)
      return;
    int[] arrayOfInt = new int[2];
    a(this.c, arrayOfInt);
    a((arrayOfInt[1] + this.c.getHeight() / 2) / getHeight());
    a(false, false);
    this.g = true;
  }

  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    ag localag = ag.a(paramInt);
    Resources localResources = getContext().getResources();
    this.d.setTextColor(localResources.getColor(2131165195));
    this.e.setTextColor(localResources.getColor(2131165195));
    this.f.setTextColor(localResources.getColor(2131165195));
    this.b.setText(localag.a(getContext()));
    switch (af.a[localag.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      CommService.a(getContext(), ag.a(localag));
      return;
      this.d.setTextColor(localResources.getColor(2131165217));
      continue;
      this.e.setTextColor(localResources.getColor(2131165217));
      continue;
      this.f.setTextColor(localResources.getColor(2131165217));
    }
  }

  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    paramSeekBar.setProgress(ag.b(ag.a(paramSeekBar.getProgress())));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.RangeFilter
 * JD-Core Version:    0.6.2
 */