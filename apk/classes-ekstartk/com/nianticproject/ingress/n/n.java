package com.nianticproject.ingress.n;

import android.accounts.Account;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.nianticproject.ingress.o.a;

public final class n extends p
{
  public static Fragment F()
  {
    return new n();
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903080, paramViewGroup, false);
    Account localAccount = a.c();
    ((TextView)localView.findViewById(2131230843)).setText(localAccount.name);
    localView.findViewById(2131230844).setOnClickListener(new o(this));
    return localView;
  }

  protected final String b()
  {
    return "RequestActivationCodeConfirmedFragment";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.n
 * JD-Core Version:    0.6.2
 */