package com.nianticproject.ingress;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.nianticproject.ingress.ui.aj;
import java.util.List;

final class b extends ArrayAdapter<Account>
{
  b(AccountsActivity paramAccountsActivity, Context paramContext, List paramList)
  {
    super(paramContext, 2130903040, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TextView localTextView = (TextView)super.getView(paramInt, paramView, paramViewGroup);
    aj.a(getContext(), localTextView, "coda.ttf");
    localTextView.setText(((Account)getItem(paramInt)).name);
    return localTextView;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.b
 * JD-Core Version:    0.6.2
 */