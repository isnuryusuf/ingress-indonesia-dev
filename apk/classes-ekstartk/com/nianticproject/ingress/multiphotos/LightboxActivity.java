package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.google.a.a.ak;
import com.nianticproject.ingress.NemesisBaseActivity;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.i.b;
import com.nianticproject.ingress.i.c;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import java.text.NumberFormat;
import java.util.Collection;
import java.util.Locale;
import java.util.Map;

public class LightboxActivity extends PortalImagePaginatingActivity
  implements an, ap
{
  private View d;
  private ViewPager e;
  private TextView f;
  private View g;
  private View h;
  private ImageButton i;
  private TextView j;
  private bg k;
  private q l;
  private int m;
  private a n;
  private final c o = new h(this);
  private final Intent p = new Intent();

  public static int a(Intent paramIntent)
  {
    if (paramIntent == null)
      return -1;
    return paramIntent.getIntExtra("LightboxActivity.position", -1);
  }

  public static Intent a(Context paramContext, String paramString, int paramInt)
  {
    Intent localIntent = PortalImagePaginatingActivity.a(paramContext, LightboxActivity.class, paramString);
    localIntent.putExtra("LightboxActivity.position", paramInt);
    localIntent.setFlags(67108864);
    return localIntent;
  }

  private void j()
  {
    View localView = this.d;
    if (this.l.c() > 1);
    for (int i1 = 0; ; i1 = 8)
    {
      localView.setVisibility(i1);
      if (!this.l.e(this.m))
        break;
      this.h.setVisibility(0);
      int i2 = this.l.d(this.m);
      this.j.setText(NumberFormat.getNumberInstance(Locale.getDefault()).format(i2));
      if (!this.l.b(this.m).d())
        break label137;
      this.i.setSelected(this.l.c(this.m));
      this.i.setVisibility(0);
      return;
    }
    this.h.setVisibility(8);
    return;
    label137: this.i.setVisibility(4);
  }

  protected final String a()
  {
    return "LightboxActivity";
  }

  public final void a(ba paramba)
  {
    this.g.setVisibility(4);
    this.f.setVisibility(4);
    switch (p.a[paramba.ordinal()])
    {
    default:
      return;
    case 1:
      this.g.setVisibility(0);
      return;
    case 2:
    case 3:
    }
    this.f.setVisibility(0);
  }

  public final void a(Collection<PlayerPortalImage> paramCollection, Map<String, ak<Boolean, Integer>> paramMap)
  {
    this.l.a(paramCollection, paramMap);
    j();
  }

  public final void b(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.CALL");
    localIntent.putExtra("android.intent.extra.TEXT", paramString);
    setResult(-1, localIntent);
    finish();
  }

  public final void c(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.putExtra("android.intent.extra.TEXT", paramString);
    setResult(-1, localIntent);
    finish();
  }

  public final void d(String paramString)
  {
    com.nianticproject.ingress.common.c.o.a().a(bs.aO);
    com.nianticproject.ingress.j.a.a(getSupportFragmentManager(), paramString);
  }

  public final bg g()
  {
    if (this.k != null)
      return this.k;
    this.k = new bg(g.a(getSupportFragmentManager(), new o(this)).b());
    return this.k;
  }

  public final void h()
  {
    com.nianticproject.ingress.common.c.o.a().a(bs.aO);
    com.nianticproject.ingress.j.a.a(this);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!com.nianticproject.ingress.common.q.f().e())
    {
      finish();
      return;
    }
    setResult(-1, this.p);
    setContentView(2130903056);
    com.nianticproject.ingress.common.g.e locale = p.a().d();
    if (locale != null);
    for (Portal localPortal = av.a(locale, this.c); localPortal == null; localPortal = null)
    {
      this.a.c("Portal not found in cache, finishing...");
      finish();
      return;
    }
    TextView localTextView = (TextView)findViewById(2131230747);
    this.d = findViewById(2131230781);
    this.e = ((ViewPager)findViewById(2131230778));
    this.f = ((TextView)findViewById(2131230779));
    this.g = findViewById(2131230764);
    this.h = findViewById(2131230783);
    this.i = ((ImageButton)findViewById(2131230784));
    this.j = ((TextView)findViewById(2131230785));
    this.n = new a(this, findViewById(2131230780), findViewById(2131230782));
    this.m = getIntent().getIntExtra("LightboxActivity.position", 0);
    if (paramBundle != null)
      this.m = paramBundle.getInt("LightboxActivity.position", 0);
    localTextView.setText(localPortal.getDescriptiveText(com.nianticproject.ingress.shared.m.a));
    this.l = new q(getSupportFragmentManager(), (int)TypedValue.applyDimension(1, 56.0F, getResources().getDisplayMetrics()));
    this.e.a(this.l);
    GestureDetector localGestureDetector = new GestureDetector(this, new i(this));
    this.e.setOnTouchListener(new j(this, localGestureDetector));
    this.d.setOnClickListener(new k(this));
    this.f.setPaintFlags(0x8 | this.f.getPaintFlags());
    this.f.setOnClickListener(new l(this));
    this.i.setOnClickListener(new m(this));
  }

  protected void onPause()
  {
    p.a().z().b(this.o);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    p.a().z().a(this.o);
    com.nianticproject.ingress.i.a locala = i().e().a(this.c);
    if (locala == null)
    {
      this.a.c("Image stream is null! Finishing activity...");
      finish();
      return;
    }
    this.l.a(b.a(locala), locala.d());
    this.e.a(this.m);
    this.e.a(new n(this));
    j();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("LightboxActivity.position", this.m);
  }

  public final boolean y_()
  {
    int i1 = this.e.b();
    return this.l.c() <= i1 + 1;
  }

  public final boolean z_()
  {
    return this.l.c() == 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.LightboxActivity
 * JD-Core Version:    0.6.2
 */