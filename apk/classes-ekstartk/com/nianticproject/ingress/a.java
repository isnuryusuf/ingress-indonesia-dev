package com.nianticproject.ingress;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class a
  implements View.OnClickListener
{
  a(AccountsActivity paramAccountsActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(new Intent("android.settings.ADD_ACCOUNT_SETTINGS"));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.a
 * JD-Core Version:    0.6.2
 */