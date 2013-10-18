package com.nianticproject.ingress;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class cw
  implements View.OnClickListener
{
  cw(PasscodeActivity paramPasscodeActivity)
  {
  }

  public final void onClick(View paramView)
  {
    PasscodeActivity.a(this.a, PasscodeActivity.a(this.a).getText().toString());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cw
 * JD-Core Version:    0.6.2
 */