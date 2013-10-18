package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.nianticproject.ingress.ui.a.c;
import java.util.Arrays;
import java.util.List;

public final class d extends p
  implements View.OnClickListener
{
  private Button a;
  private Button b;
  private c c;

  public static Fragment a(String paramString)
  {
    d locald = new d();
    Bundle localBundle = new Bundle();
    localBundle.putString("codename", paramString);
    locald.e(localBundle);
    return locald;
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903076, paramViewGroup, false);
    TextView localTextView1 = (TextView)localView.findViewById(2131230840);
    TextView localTextView2 = (TextView)localView.findViewById(2131230841);
    this.a = ((Button)localView.findViewById(2131230819));
    this.b = ((Button)localView.findViewById(2131230820));
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
    String str = h().getString("codename");
    i();
    this.c = new c();
    c localc = this.c;
    List localList = Arrays.asList(new TextView[] { localTextView1, localTextView2 });
    CharSequence[] arrayOfCharSequence = new CharSequence[2];
    arrayOfCharSequence[0] = localTextView1.getText();
    arrayOfCharSequence[1] = str;
    localc.a(localList, Arrays.asList(arrayOfCharSequence));
    localView.setOnClickListener(new e(this));
    localTextView1.setText(null);
    localTextView2.setText(null);
    return localView;
  }

  protected final String b()
  {
    return "NicknameConfirmFragment";
  }

  public final void onClick(View paramView)
  {
    if (this.a == paramView)
      H().a();
    while (this.b != paramView)
      return;
    H().b();
  }

  public final void q()
  {
    super.q();
    this.c.a(null);
  }

  public final void r()
  {
    this.c.b();
    super.r();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.d
 * JD-Core Version:    0.6.2
 */