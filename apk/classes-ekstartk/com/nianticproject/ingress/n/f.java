package com.nianticproject.ingress.n;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.nianticproject.ingress.ui.a.b;
import com.nianticproject.ingress.ui.a.c;
import java.util.Arrays;
import java.util.List;

public final class f extends p
  implements b
{
  private c a;

  public static Fragment a(String paramString)
  {
    f localf = new f();
    Bundle localBundle = new Bundle();
    localBundle.putString("codename", paramString);
    localf.e(localBundle);
    return localf;
  }

  public final void G()
  {
    H().h();
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    FragmentActivity localFragmentActivity = i();
    View localView = paramLayoutInflater.inflate(2130903077, paramViewGroup, false);
    TextView localTextView1 = (TextView)localView.findViewById(2131230772);
    TextView localTextView2 = (TextView)localView.findViewById(2131230842);
    TextView localTextView3 = (TextView)localView.findViewById(2131230840);
    localTextView2.setText(Html.fromHtml(localFragmentActivity.getString(2131296342, new Object[] { h().getString("codename") })));
    this.a = new c();
    c localc = this.a;
    List localList = Arrays.asList(new TextView[] { localTextView1, localTextView2, localTextView3 });
    CharSequence[] arrayOfCharSequence = new CharSequence[3];
    arrayOfCharSequence[0] = localTextView1.getText();
    arrayOfCharSequence[1] = localTextView2.getText();
    arrayOfCharSequence[2] = localTextView3.getText();
    localc.a(localList, Arrays.asList(arrayOfCharSequence));
    localView.setOnClickListener(new g(this));
    localTextView1.setText(null);
    localTextView2.setText(null);
    localTextView3.setText(null);
    return localView;
  }

  protected final String b()
  {
    return "NicknamePersistedFragment";
  }

  public final void q()
  {
    super.q();
    this.a.a(this);
  }

  public final void r()
  {
    this.a.b();
    super.r();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.f
 * JD-Core Version:    0.6.2
 */