package com.nianticproject.ingress.o;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.a.c.eq;
import com.nianticproject.ingress.AccountsActivity;
import com.nianticproject.ingress.NemesisActivity;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.Result;
import java.util.ArrayList;

public class a
{
  private static final aa a = new aa(a.class);

  public static Account a(Intent paramIntent)
  {
    return new Account(paramIntent.getStringExtra("authAccount"), paramIntent.getStringExtra("accountType"));
  }

  public static Intent a(Intent paramIntent, Account paramAccount)
  {
    paramIntent.putExtra("authAccount", paramAccount.name);
    paramIntent.putExtra("accountType", paramAccount.type);
    return paramIntent;
  }

  public static ArrayList<Account> a(Context paramContext)
  {
    return eq.a(AccountManager.get(paramContext).getAccountsByType("com.google"));
  }

  public static void a()
  {
    NemesisApplication.a();
    NemesisApplication.f().d();
    c.b();
    com.google.android.gcm.a.b(NemesisApplication.a());
    a.b("Cleared account data.");
  }

  public static void a(Account paramAccount)
  {
    c.a(paramAccount.name);
    c.g(b.b.name());
    ContentResolver.requestSync(paramAccount, "com.nianticproject.ingress.content.NemesisProvider", Bundle.EMPTY);
  }

  private static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramString, null, paramContext.getApplicationContext(), NemesisActivity.class);
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public static void a(b paramb)
  {
    c.g(paramb.name());
  }

  public static void b(Context paramContext)
  {
    a();
    a(paramContext, "com.nianticproject.ingress.ACTION_QUIT");
  }

  public static boolean b()
  {
    return !TextUtils.isEmpty(c.b(null));
  }

  public static Account c()
  {
    if (!b())
      return null;
    return new Account(c.b(null), "com.google");
  }

  public static void c(Context paramContext)
  {
    a(paramContext, "com.nianticproject.ingress.ACTION_QUIT");
  }

  public static b d()
  {
    String str = c.h(b.a.name());
    try
    {
      b localb = b.valueOf(str);
      return localb;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      a.b("unrecognized AccountStatus value=%s", new Object[] { str });
      return b.a;
    }
    catch (NullPointerException localNullPointerException)
    {
      a.b("AccountStatus was null");
    }
    return b.a;
  }

  public static void d(Context paramContext)
  {
    a(paramContext, "com.nianticproject.ingress.ACTION_HARD_RESTART");
  }

  public static boolean e(Context paramContext)
  {
    Account localAccount = c();
    if (localAccount == null)
      return false;
    return a(paramContext).contains(localAccount);
  }

  public static Result<Account, Intent> f(Context paramContext)
  {
    Account localAccount = c();
    if (localAccount != null)
      return Result.a(localAccount);
    return Result.b(new Intent(paramContext, AccountsActivity.class));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.a
 * JD-Core Version:    0.6.2
 */