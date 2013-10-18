package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;

public final class af extends p
{
  private boolean a = true;

  public static Fragment F()
  {
    return new af();
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903081, paramViewGroup, false);
    TextView localTextView = (TextView)localView1.findViewById(2131230845);
    localTextView.setText(Html.fromHtml(localTextView.getText().toString()));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    Button localButton = (Button)localView1.findViewById(2131230819);
    View localView2 = localView1.findViewById(2131230846);
    CheckBox localCheckBox1 = (CheckBox)localView1.findViewById(2131230847);
    CheckBox localCheckBox2 = (CheckBox)localView1.findViewById(2131230848);
    this.a = true;
    if (paramBundle != null)
      this.a = paramBundle.getBoolean("wants_promos", true);
    localCheckBox2.setChecked(this.a);
    localButton.setOnClickListener(new ag(this, localCheckBox1));
    localCheckBox1.setOnCheckedChangeListener(new ah(this, localButton, localView2));
    localCheckBox2.setOnCheckedChangeListener(new ai(this));
    return localView1;
  }

  protected final String b()
  {
    return "TosPromptFragment";
  }

  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    paramBundle.putBoolean("wants_promos", this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.af
 * JD-Core Version:    0.6.2
 */