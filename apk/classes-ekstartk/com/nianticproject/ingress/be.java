package com.nianticproject.ingress;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class be
  implements TextWatcher
{
  be(InviteActivity paramInviteActivity)
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
    InviteActivity.k(this.a).setEnabled(InviteActivity.d().matcher(InviteActivity.j(this.a).getText().toString().toLowerCase(Locale.US)).matches());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.be
 * JD-Core Version:    0.6.2
 */