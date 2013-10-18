package com.nianticproject.ingress;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

final class cx
  implements TextWatcher
{
  cx(PasscodeActivity paramPasscodeActivity)
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
    Button localButton = PasscodeActivity.b(this.a);
    if (!TextUtils.isEmpty(PasscodeActivity.a(this.a).getText()));
    for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cx
 * JD-Core Version:    0.6.2
 */