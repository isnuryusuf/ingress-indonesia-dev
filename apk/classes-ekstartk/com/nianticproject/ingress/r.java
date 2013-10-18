package com.nianticproject.ingress;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.service.CommService;

final class r
  implements View.OnClickListener
{
  r(AndroidComm paramAndroidComm)
  {
  }

  public final void onClick(View paramView)
  {
    String str = AndroidComm.g(this.a).getText().toString();
    if ("".equals(str))
      return;
    if (AndroidComm.h(this.a) == 2);
    for (boolean bool = true; ; bool = false)
    {
      CommService.a(this.a.getContext(), str, bool);
      this.a.c();
      AndroidComm.g(this.a).setText(null);
      ((InputMethodManager)this.a.getContext().getSystemService("input_method")).hideSoftInputFromWindow(AndroidComm.g(this.a).getWindowToken(), 0);
      a.a("Comm", "send");
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.r
 * JD-Core Version:    0.6.2
 */