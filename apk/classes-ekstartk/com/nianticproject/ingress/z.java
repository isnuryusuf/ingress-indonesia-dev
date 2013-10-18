package com.nianticproject.ingress;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.nianticproject.ingress.common.a.a;

final class z
  implements View.OnClickListener
{
  private final int b;

  private z(AndroidComm paramAndroidComm, int paramInt)
  {
    this.b = paramInt;
  }

  public final void onClick(View paramView)
  {
    a.a("Comm", ((Button)paramView).getText() + "Tab");
    this.a.a(this.b, true);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.z
 * JD-Core Version:    0.6.2
 */