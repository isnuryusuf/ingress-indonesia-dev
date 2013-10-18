package com.nianticproject.ingress.ui;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils.TruncateAt;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.view.View;
import android.widget.TextView;
import com.nianticproject.ingress.common.playerprofile.ao;

final class s
{
  public final TextView a;
  public final TextView b;

  public s(View paramView, boolean paramBoolean)
  {
    this.a = ((TextView)paramView.findViewById(2131230732));
    this.b = ((TextView)paramView.findViewById(2131230733));
    if (ao.m());
    for (Object localObject = u.a(); ; localObject = LinkMovementMethod.getInstance())
    {
      this.b.setMovementMethod((MovementMethod)localObject);
      if (paramBoolean)
      {
        this.b.setSingleLine(true);
        this.b.setEllipsize(TextUtils.TruncateAt.END);
        this.a.setTextColor(paramView.getContext().getResources().getColor(2131165198));
      }
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.s
 * JD-Core Version:    0.6.2
 */