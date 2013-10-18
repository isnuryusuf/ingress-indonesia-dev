package com.nianticproject.ingress.ui;

import android.text.TextPaint;
import android.view.View;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.playerprofile.ao;

final class ad extends w
{
  private final String a;
  private final int b;

  public ad(String paramString, int paramInt)
  {
    this.a = paramString;
    this.b = paramInt;
  }

  public final void a(View paramView)
  {
    if (ao.l())
      ((NemesisActivity)paramView.getContext()).a(this.a);
  }

  public final void onClick(View paramView)
  {
    a locala = p.a().l();
    if (locala != null)
      locala.a(this.a, this.b);
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.ad
 * JD-Core Version:    0.6.2
 */