package com.nianticproject.ingress;

import android.accounts.Account;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import com.nianticproject.ingress.common.a.c;
import com.nianticproject.ingress.ui.aj;
import java.util.ArrayList;

public class AccountsActivity extends ListActivity
{
  private ArrayAdapter<Account> a;

  private void a(Account paramAccount)
  {
    setResult(-1, com.nianticproject.ingress.o.a.a(new Intent(), paramAccount));
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.nianticproject.ingress.o.a.a();
    ArrayList localArrayList = com.nianticproject.ingress.o.a.a(this);
    if (localArrayList.size() == 1)
    {
      a((Account)localArrayList.get(0));
      return;
    }
    setContentView(2130903041);
    ((Button)findViewById(16908313)).setOnClickListener(new a(this));
    setVolumeControlStream(3);
    aj.a(this, findViewById(16908290), "coda.ttf");
  }

  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    a((Account)this.a.getItem(paramInt));
  }

  protected void onPause()
  {
    super.onPause();
    c.c();
  }

  protected void onResume()
  {
    super.onResume();
    com.nianticproject.ingress.common.a.a.a("AccountsActivity");
    setResult(0);
    this.a = new b(this, this, com.nianticproject.ingress.o.a.a(this));
    setListAdapter(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.AccountsActivity
 * JD-Core Version:    0.6.2
 */