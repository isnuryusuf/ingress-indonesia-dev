package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public final class c extends p
  implements TextWatcher, View.OnClickListener, TextView.OnEditorActionListener
{
  private TextView a;
  private EditText b;
  private Button c;
  private View d;
  private TextView e;

  private void F()
  {
    ((InputMethodManager)i().getSystemService("input_method")).hideSoftInputFromWindow(this.b.getWindowToken(), 2);
  }

  public static Fragment a(String paramString)
  {
    c localc = new c();
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString);
    localc.e(localBundle);
    return localc;
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903055, paramViewGroup, false);
    localView.findViewById(2131230772);
    this.a = ((TextView)localView.findViewById(2131230773));
    this.b = ((EditText)localView.findViewById(2131230743));
    this.c = ((Button)localView.findViewById(2131230744));
    this.e = ((TextView)localView.findViewById(2131230777));
    this.b.setOnEditorActionListener(this);
    this.b.addTextChangedListener(this);
    this.c.setEnabled(false);
    this.c.setOnClickListener(this);
    this.d = localView.findViewById(2131230775).findViewById(2131230776);
    this.d.setOnClickListener(this);
    String str = h().getString("message");
    if (!TextUtils.isEmpty(str))
    {
      Log.i("InviteRedemption", "Setting error text: " + str);
      this.e.setText(str);
      this.e.setVisibility(0);
    }
    while (true)
    {
      this.c.setVisibility(0);
      this.a.setVisibility(0);
      this.b.setVisibility(0);
      return localView;
      this.e.setVisibility(8);
    }
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  protected final String b()
  {
    return "InviteRedemptionPromptFragment";
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView == this.c)
    {
      str = this.b.getText().toString();
      F();
      H().c(str);
    }
    while (paramView != this.d)
    {
      String str;
      return;
    }
    F();
    H().i();
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (4 == paramInt)
    {
      onClick(this.c);
      return true;
    }
    return false;
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.b.getText().toString().length() > 0)
    {
      this.c.setEnabled(true);
      this.e.setVisibility(8);
      return;
    }
    this.c.setEnabled(false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.c
 * JD-Core Version:    0.6.2
 */