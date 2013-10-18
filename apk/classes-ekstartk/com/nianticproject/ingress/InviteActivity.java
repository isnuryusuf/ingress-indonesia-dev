package com.nianticproject.ingress;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.w;
import android.support.v4.app.x;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.common.w.f;
import com.nianticproject.ingress.f.k;
import com.nianticproject.ingress.shared.invites.InviteInfo;
import com.nianticproject.ingress.shared.rpc.o;
import com.nianticproject.ingress.ui.TitleBar;
import com.nianticproject.ingress.ui.aj;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class InviteActivity extends FragmentActivity
  implements x<ArrayList<com.nianticproject.ingress.f.a>>, com.nianticproject.ingress.common.m.d
{
  private static final Pattern a = Pattern.compile("^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$");
  private final aa b = new aa(InviteActivity.class);
  private final bk c = new bk(this, bl.a);
  private final bk d = new bk(this, bl.b);
  private final bk e = new bk(this, bl.c);
  private final bk f = new bk(this, bl.d);
  private final bk g = new bk(this, bl.e);
  private final f h = new f("CONTACTS_LOADED");
  private final f i = new f("INFO_LOADED");
  private final f j = new f("RETRY");
  private final f k = new f("INFO_ERROR");
  private b l;
  private k m;
  private View n;
  private View o;
  private Button p;
  private Button q;
  private AutoCompleteTextView r;
  private TextView s;
  private com.nianticproject.ingress.common.m.a t;
  private bl u;
  private View v;

  private void a(int paramInt)
  {
    TextView localTextView = this.s;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    localTextView.setText(getString(2131296356, arrayOfObject));
  }

  public final void A_()
  {
    this.m.a(null);
  }

  public final android.support.v4.a.d<ArrayList<com.nianticproject.ingress.f.a>> a()
  {
    return new com.nianticproject.ingress.f.e(this);
  }

  public final void a(int paramInt, String paramString)
  {
    runOnUiThread(new bf(this, paramInt, paramString));
  }

  public final void a(int paramInt, String paramString, o paramo)
  {
    runOnUiThread(new bg(this, paramInt, paramo, paramString));
  }

  public final void a(InviteInfo paramInviteInfo)
  {
    p.a().A().a(paramInviteInfo.a());
    runOnUiThread(new bh(this, paramInviteInfo));
  }

  public final void c()
  {
    runOnUiThread(new bi(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903054);
    aj.a(this, findViewById(16908290), "coda.ttf");
    TitleBar localTitleBar = TitleBar.a(this);
    localTitleBar.a(getString(2131296366));
    localTitleBar.a();
    this.n = findViewById(2131230767);
    this.o = findViewById(16908301);
    this.p = ((Button)findViewById(2131230766));
    this.p.setOnClickListener(new bc(this));
    this.q = ((Button)findViewById(2131230769));
    this.r = ((AutoCompleteTextView)findViewById(2131230768));
    this.s = ((TextView)findViewById(2131230771));
    this.v = findViewById(2131230770);
    this.v.setVisibility(4);
    a(0);
    NemesisApplication.a();
    this.t = new com.nianticproject.ingress.common.m.a(NemesisApplication.f(), ec.a(), this);
    this.q.setOnClickListener(new bd(this));
    this.q.setEnabled(false);
    this.r.addTextChangedListener(new be(this));
    ListView localListView = (ListView)findViewById(16908298);
    this.m = new k(this, this.t, this);
    localListView.setAdapter(this.m);
    localListView.setFastScrollEnabled(true);
    this.l = b.a().a(this.c).a(this.c, this.h, this.d).a(this.c, this.i, this.e).a(this.c, this.k, this.g).a(this.d, this.i, this.f).a(this.d, this.k, this.g).a(this.e, this.h, this.f).a(this.g, this.j, this.c).b();
    this.l.b();
    getSupportLoaderManager().a(this);
  }

  protected void onPause()
  {
    this.m.b();
    super.onPause();
    com.nianticproject.ingress.common.a.c.c();
  }

  protected void onResume()
  {
    super.onResume();
    this.m.a();
    this.t.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.InviteActivity
 * JD-Core Version:    0.6.2
 */