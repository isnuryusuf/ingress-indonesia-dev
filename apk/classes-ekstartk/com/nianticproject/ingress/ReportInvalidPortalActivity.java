package com.nianticproject.ingress;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.nianticproject.ingress.curation.AbstractPortalCurationActivity;

public class ReportInvalidPortalActivity extends AbstractPortalCurationActivity
  implements TextWatcher
{
  private EditText d;
  private Button e;
  private RadioGroup f;
  private RadioButton g;

  public static Intent a(Context paramContext, String paramString)
  {
    return AbstractPortalCurationActivity.a(paramContext, ReportInvalidPortalActivity.class, paramString);
  }

  private void g()
  {
    boolean bool1 = true;
    boolean bool2 = this.g.isChecked();
    this.d.setEnabled(bool2);
    if (bool2)
    {
      String str = this.d.getText().toString().trim();
      Button localButton = this.e;
      if (!TextUtils.isEmpty(str));
      while (true)
      {
        localButton.setEnabled(bool1);
        return;
        bool1 = false;
      }
    }
    this.e.setEnabled(bool1);
  }

  protected final String a()
  {
    return "ReportInvalidPortalActivity";
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903070);
    this.d = ((EditText)findViewById(2131230763));
    this.e = ((Button)findViewById(2131230752));
    Button localButton = (Button)findViewById(2131230753);
    this.f = ((RadioGroup)findViewById(2131230828));
    this.g = ((RadioButton)findViewById(2131230834));
    this.g.setOnCheckedChangeListener(new ds(this));
    this.d.addTextChangedListener(this);
    this.e.setOnClickListener(new dt(this));
    localButton.setOnClickListener(new du(this));
  }

  protected void onResume()
  {
    super.onResume();
    g();
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ReportInvalidPortalActivity
 * JD-Core Version:    0.6.2
 */