package com.nianticproject.ingress;

import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.nianticproject.ingress.ui.aj;

final class ah
{
  private final TextView a;

  public ah(View paramView)
  {
    aj.a(paramView.getContext(), paramView, "coda.ttf");
    this.a = ((TextView)paramView.findViewById(16908308));
    this.a.setMovementMethod(LinkMovementMethod.getInstance());
  }

  public final void a(String paramString)
  {
    this.a.setText(Html.fromHtml(paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ah
 * JD-Core Version:    0.6.2
 */