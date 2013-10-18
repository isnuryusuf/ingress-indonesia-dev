package com.nianticproject.ingress;

import android.text.Editable;
import android.text.TextWatcher;

final class q
  implements TextWatcher
{
  q(AndroidComm paramAndroidComm)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    AndroidComm.f(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.q
 * JD-Core Version:    0.6.2
 */