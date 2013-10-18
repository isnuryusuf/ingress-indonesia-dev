package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import com.google.a.a.ak;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.portal.PhotoStreamInfo;
import com.nianticproject.ingress.i.a;
import com.nianticproject.ingress.i.b;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.m;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import com.nianticproject.ingress.shared.portal.PortalImage;
import java.util.Collection;
import java.util.Map;

public class PortalImageGridActivity extends PortalImagePaginatingActivity
{
  private GridView d;
  private TextView e;
  private View f;
  private bd g;

  public static Intent a(Context paramContext, String paramString)
  {
    Intent localIntent = PortalImagePaginatingActivity.a(paramContext, PortalImageGridActivity.class, paramString);
    localIntent.setFlags(67108864);
    return localIntent;
  }

  protected final String a()
  {
    return "PortalImageGridActivity";
  }

  public final void a(ba paramba)
  {
    this.f.setVisibility(4);
    this.e.setVisibility(4);
    switch (au.a[paramba.ordinal()])
    {
    default:
      return;
    case 1:
      this.f.setVisibility(0);
      return;
    case 2:
    case 3:
    }
    this.e.setVisibility(0);
  }

  public final void a(Collection<PlayerPortalImage> paramCollection, Map<String, ak<Boolean, Integer>> paramMap)
  {
    this.g.a(paramCollection);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!q.f().e())
    {
      finish();
      return;
    }
    setContentView(2130903066);
    e locale = p.a().d();
    if (locale != null);
    for (Portal localPortal = av.a(locale, this.c); localPortal == null; localPortal = null)
    {
      this.a.c("Portal not found in cache, finishing...");
      finish();
      return;
    }
    TextView localTextView = (TextView)findViewById(2131230747);
    this.d = ((GridView)findViewById(2131230816));
    this.e = ((TextView)findViewById(2131230779));
    this.f = findViewById(2131230764);
    localTextView.setText(localPortal.getDescriptiveText(m.a));
    this.e.setPaintFlags(0x8 | this.e.getPaintFlags());
    this.e.setOnClickListener(new aq(this));
    PortalImage localPortalImage = i().e().a(this.c).b().getCoverPhoto();
    this.g = new bd(this, g.a(getSupportFragmentManager(), new ar(this)).b(), localPortalImage);
    this.d.setAdapter(this.g);
    this.d.setOnItemClickListener(new as(this));
    this.d.setOnScrollListener(new at(this));
  }

  protected void onPause()
  {
    bg.a((ViewGroup)findViewById(16908290));
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    a locala = i().e().a(this.c);
    this.g.a(b.a(locala));
  }

  public final boolean y_()
  {
    int i = this.d.getLastVisiblePosition();
    return this.g.a() <= i + 1;
  }

  public final boolean z_()
  {
    return this.g.a() == 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.PortalImageGridActivity
 * JD-Core Version:    0.6.2
 */