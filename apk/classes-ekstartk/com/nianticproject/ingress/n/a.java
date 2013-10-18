package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.ui.a.c;
import com.nianticproject.ingress.ui.aj;
import java.util.Arrays;
import java.util.List;

public final class a extends p
  implements com.nianticproject.ingress.ui.a.b
{
  private c a;
  private TextView b;

  public static Fragment F()
  {
    return new a();
  }

  protected final boolean E()
  {
    return false;
  }

  public final void G()
  {
    H().h();
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903074, paramViewGroup, false);
    this.b = ((TextView)localView.findViewById(16908308));
    aj.a(i(), this.b, "coda.ttf");
    FragmentActivity localFragmentActivity = i();
    Object[] arrayOfObject = new Object[1];
    if (ec.e());
    for (String str1 = ec.b(i()); ; str1 = ec.c(i()) + "\n" + ec.a())
    {
      arrayOfObject[0] = str1;
      String str2 = localFragmentActivity.getString(2131296338, arrayOfObject);
      TextView localTextView = (TextView)localView.findViewById(16908309);
      i();
      this.a = new c();
      c localc = this.a;
      TextView[] arrayOfTextView = new TextView[2];
      arrayOfTextView[0] = this.b;
      arrayOfTextView[1] = localTextView;
      List localList = Arrays.asList(arrayOfTextView);
      CharSequence[] arrayOfCharSequence = new CharSequence[2];
      arrayOfCharSequence[0] = str2;
      arrayOfCharSequence[1] = localTextView.getText();
      localc.a(localList, Arrays.asList(arrayOfCharSequence));
      this.b.setText(null);
      localTextView.setText(null);
      localView.setOnClickListener(new b(this));
      return localView;
    }
  }

  protected final String b()
  {
    return "BootFragment";
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
 * Qualified Name:     com.nianticproject.ingress.n.a
 * JD-Core Version:    0.6.2
 */