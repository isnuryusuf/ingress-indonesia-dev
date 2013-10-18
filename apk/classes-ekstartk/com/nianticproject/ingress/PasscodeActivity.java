package com.nianticproject.ingress;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.google.a.a.ab;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.a.c;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.h;
import com.nianticproject.ingress.shared.promotioncodes.Reward;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.ui.aj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

public class PasscodeActivity extends Activity
{
  private static final ConcurrentLinkedQueue<RpcResult<Reward, com.nianticproject.ingress.shared.aa>> a = new ConcurrentLinkedQueue();
  private final com.nianticproject.ingress.common.w.aa b = new com.nianticproject.ingress.common.w.aa(PasscodeActivity.class);
  private dc c = dc.a;
  private ah d;
  private TextView e;
  private TextView f;
  private View g;
  private Button h;
  private Button i;
  private EditText j;
  private Button k;

  private static int a(boolean paramBoolean)
  {
    if (paramBoolean)
      return 0;
    return 8;
  }

  public static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, PasscodeActivity.class);
    localIntent.putExtra("started_by_game", true);
    return localIntent;
  }

  public static Reward a(h paramh, com.nianticproject.ingress.common.a parama)
  {
    Reward localReward;
    for (Object localObject = null; ; localObject = localReward)
    {
      RpcResult localRpcResult = (RpcResult)a.poll();
      if (localRpcResult == null)
        break;
      if (localRpcResult.d() != null)
        paramh.a(localRpcResult.d());
      localReward = (Reward)localRpcResult.a();
      parama.a(a(localReward, new StringBuilder("Gained:")));
    }
    return localObject;
  }

  private static String a(Reward paramReward, StringBuilder paramStringBuilder)
  {
    ArrayList localArrayList = eq.a();
    if (paramReward.b() > 0L)
      localArrayList.add(new StringBuilder().append(paramReward.b()).append(" XM"));
    if (paramReward.c() != null)
    {
      Iterator localIterator = q.a(paramReward.c()).iterator();
      while (localIterator.hasNext())
        localArrayList.add(((q)localIterator.next()).j());
    }
    return ab.a("\n").a(localArrayList);
  }

  private void a(dc paramdc, String paramString1, String paramString2)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    label66: boolean bool4;
    label96: boolean bool5;
    if (this.c != paramdc)
    {
      this.c = paramdc;
      View localView = this.g;
      if (this.c != dc.b)
        break label213;
      bool2 = bool1;
      localView.setVisibility(a(bool2));
      Button localButton1 = this.h;
      if (this.c != dc.c)
        break label219;
      bool3 = bool1;
      localButton1.setVisibility(a(bool3));
      Button localButton2 = this.i;
      if (this.c != dc.d)
        break label225;
      bool4 = bool1;
      localButton2.setVisibility(a(bool4));
      EditText localEditText = this.j;
      if (this.c == dc.b)
        break label231;
      bool5 = bool1;
      label126: localEditText.setEnabled(bool5);
      Button localButton3 = this.k;
      if (this.c == dc.b)
        break label237;
      label149: localButton3.setEnabled(bool1);
      switch (db.a[this.c.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      this.e.setText(paramString1);
      this.f.setText(paramString2);
      return;
      label213: bool2 = false;
      break;
      label219: bool3 = false;
      break label66;
      label225: bool4 = false;
      break label96;
      label231: bool5 = false;
      break label126;
      label237: bool1 = false;
      break label149;
      this.j.requestFocus();
      ((InputMethodManager)getSystemService("input_method")).showSoftInput(this.j, 0);
      continue;
      this.e.setTextColor(getResources().getColor(2131165222));
      continue;
      b();
      this.e.setTextColor(getResources().getColor(2131165222));
      continue;
      b();
      this.e.setTextColor(getResources().getColor(2131165223));
    }
  }

  private void b()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.j.getWindowToken(), 0);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt2)
    {
    default:
    case -1:
    case 0:
    }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      Account localAccount = com.nianticproject.ingress.o.a.a(paramIntent);
      if (localAccount != null)
      {
        com.nianticproject.ingress.o.a.a(localAccount);
        continue;
        finish();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent().getBooleanExtra("started_by_game", false))
      setVolumeControlStream(3);
    setContentView(2130903059);
    aj.a(this, findViewById(16908290), "coda.ttf");
    NemesisApplication.a();
    this.d = new ah(NemesisApplication.f(), ec.a());
    this.d.a(new cv(this));
    this.e = ((TextView)findViewById(2131230801));
    this.f = ((TextView)findViewById(2131230802));
    this.g = findViewById(16908301);
    this.h = ((Button)findViewById(2131230803));
    this.i = ((Button)findViewById(2131230804));
    this.j = ((EditText)findViewById(2131230805));
    this.k = ((Button)findViewById(2131230806));
    this.k.setEnabled(false);
    this.k.setOnClickListener(new cw(this));
    this.j.addTextChangedListener(new cx(this));
    this.h.setOnClickListener(new cy(this));
    this.i.setOnClickListener(new cz(this));
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }

  protected void onPause()
  {
    super.onPause();
    c.c();
  }

  protected void onResume()
  {
    super.onResume();
    if (!com.nianticproject.ingress.o.a.e(this))
      startActivityForResult(new Intent(this, AccountsActivity.class), 0);
    Intent localIntent;
    do
    {
      return;
      localIntent = getIntent();
    }
    while (!"android.intent.action.VIEW".equals(localIntent.getAction()));
    Uri localUri = localIntent.getData();
    String str = localUri.getQueryParameter("code");
    if (TextUtils.isEmpty(str))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localUri.toString();
      Toast.makeText(this, getString(2131296353, arrayOfObject), 1).show();
      finish();
      return;
    }
    this.j.setText(str);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.PasscodeActivity
 * JD-Core Version:    0.6.2
 */