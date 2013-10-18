package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
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
import com.nianticproject.ingress.ui.a.b;
import com.nianticproject.ingress.ui.a.c;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class h extends p
  implements TextWatcher, View.OnClickListener, TextView.OnEditorActionListener, b
{
  private static final Pattern a = Pattern.compile("^[a-zA-Z0-9]*$");
  private TextView b;
  private EditText c;
  private Button d;
  private TextView e;
  private c f;

  private void F()
  {
    this.c.requestFocus();
    ((InputMethodManager)i().getSystemService("input_method")).showSoftInput(this.c, 0);
  }

  public static Fragment a(String paramString, boolean paramBoolean)
  {
    h localh = new h();
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString);
    localBundle.putBoolean("skip_type_writing", paramBoolean);
    localh.e(localBundle);
    return localh;
  }

  public final void G()
  {
    this.d.setVisibility(0);
    this.b.setVisibility(0);
    this.c.setVisibility(0);
    this.e.setVisibility(0);
    F();
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903078, paramViewGroup, false);
    TextView localTextView = (TextView)localView.findViewById(2131230772);
    this.b = ((TextView)localView.findViewById(2131230773));
    this.c = ((EditText)localView.findViewById(2131230743));
    this.d = ((Button)localView.findViewById(2131230744));
    this.e = ((TextView)localView.findViewById(2131230777));
    String str = h().getString("message");
    this.b.setText(str);
    this.c.setOnEditorActionListener(this);
    this.c.addTextChangedListener(this);
    this.d.setEnabled(false);
    this.d.setOnClickListener(this);
    if (!h().getBoolean("skip_type_writing", false))
    {
      i();
      this.f = new c();
      c localc = this.f;
      List localList = Arrays.asList(new TextView[] { localTextView });
      CharSequence[] arrayOfCharSequence = new CharSequence[1];
      arrayOfCharSequence[0] = localTextView.getText();
      localc.a(localList, Arrays.asList(arrayOfCharSequence));
      localTextView.setText(null);
      this.d.setVisibility(4);
      this.b.setVisibility(4);
      this.c.setVisibility(4);
      this.e.setVisibility(4);
    }
    while (true)
    {
      localView.setOnClickListener(new i(this));
      return localView;
      this.f = null;
    }
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  protected final String b()
  {
    return "NicknamePromptFragment";
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onClick(View paramView)
  {
    int i = this.c.getText().length();
    if ((i < 3) || (i > 15))
      return;
    String str = this.c.getText().toString();
    ((InputMethodManager)i().getSystemService("input_method")).hideSoftInputFromWindow(this.c.getWindowToken(), 2);
    H().b_(str);
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (4 == paramInt)
    {
      onClick(this.d);
      return true;
    }
    return false;
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    String str = this.c.getText().toString();
    if (!a.matcher(str).matches())
    {
      this.d.setEnabled(false);
      this.e.setVisibility(0);
      this.e.setText(2131296302);
    }
    int i;
    do
    {
      return;
      this.d.setEnabled(true);
      this.e.setVisibility(4);
      i = str.length();
      if ((i >= 3) && (i <= 15))
      {
        this.d.setEnabled(true);
        this.e.setVisibility(4);
        return;
      }
      this.d.setEnabled(false);
      this.e.setVisibility(0);
      if (i < 3)
      {
        this.e.setText(2131296300);
        return;
      }
    }
    while (i <= 15);
    this.e.setText(2131296301);
  }

  public final void q()
  {
    super.q();
    if (this.f != null)
    {
      this.f.a(this);
      return;
    }
    F();
  }

  public final void r()
  {
    if (this.f != null)
      this.f.b();
    super.r();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.h
 * JD-Core Version:    0.6.2
 */