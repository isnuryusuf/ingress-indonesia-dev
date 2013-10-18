package com.nianticproject.ingress.multiphotos;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.i.b;
import com.nianticproject.ingress.shared.plext.PlayerMarkupArgSet;
import com.nianticproject.ingress.shared.plext.c;
import com.nianticproject.ingress.shared.plext.d;
import com.nianticproject.ingress.ui.z;

public class ag extends com.nianticproject.ingress.n.p
{
  private static final aa a = new aa(ag.class);
  private ImageView b;
  private View c;
  private View d;
  private TextView e;
  private bj f;
  private String g;
  private bg h;
  private com.nianticproject.ingress.shared.portal.a i;

  public static ag a(String paramString, int paramInt)
  {
    ag localag = new ag();
    Bundle localBundle = new Bundle();
    localBundle.putString("image_guid", paramString);
    localBundle.putInt("attribution_bottom_margin", paramInt);
    localag.e(localBundle);
    return localag;
  }

  private void a(ao paramao)
  {
    this.c.setVisibility(4);
    this.b.setVisibility(4);
    this.d.setVisibility(4);
    switch (am.a[paramao.ordinal()])
    {
    default:
      return;
    case 1:
      this.c.setVisibility(0);
      return;
    case 2:
      this.b.setVisibility(0);
      return;
    case 3:
    }
    this.d.setVisibility(0);
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903053, paramViewGroup, false);
    this.b = ((ImageView)localView.findViewById(2131230748));
    this.c = localView.findViewById(2131230764);
    this.d = localView.findViewById(2131230765);
    this.e = ((TextView)localView.findViewById(2131230750));
    String str1 = h().getString("image_guid");
    com.nianticproject.ingress.shared.portal.a locala;
    int j;
    c localc;
    if (TextUtils.isEmpty(str1))
    {
      locala = null;
      this.i = locala;
      this.e.setMovementMethod(LinkMovementMethod.getInstance());
      this.f = new aj(this);
      this.b.getViewTreeObserver().addOnGlobalLayoutListener(new ak(this));
      j = h().getInt("attribution_bottom_margin");
      this.e.setVisibility(8);
      if (this.i != null)
      {
        localc = this.i.a();
        if (localc != null)
          break label205;
        this.e.setText(null);
      }
    }
    while (true)
    {
      a(ao.a);
      return localView;
      locala = com.nianticproject.ingress.common.g.p.a().z().c(str1);
      break;
      label205: com.nianticproject.ingress.shared.plext.a locala1 = localc.b();
      String str2 = null;
      if (locala1 != null)
        str2 = localc.b().b();
      if (!TextUtils.isEmpty(str2))
      {
        z.a(this.e, str2, new c[] { localc });
        this.e.setVisibility(0);
        if (j != 0)
        {
          RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.e.getLayoutParams();
          localLayoutParams.setMargins(localLayoutParams.leftMargin, localLayoutParams.topMargin, localLayoutParams.rightMargin, j + localLayoutParams.bottomMargin);
        }
        if ((d.c == localc.a()) && (com.nianticproject.ingress.common.playerprofile.ao.l()) && (com.nianticproject.ingress.common.playerprofile.ao.m()) && (((PlayerMarkupArgSet)localc.b()).a() != com.nianticproject.ingress.shared.ai.c))
        {
          this.e.setOnClickListener(new ah(this, str2));
          this.e.setOnLongClickListener(new ai(this, str2));
        }
      }
    }
  }

  public final void a(Activity paramActivity)
  {
    super.a(paramActivity);
    this.h = ((ap)paramActivity).g();
  }

  protected final String b()
  {
    return "PortalImageFragment";
  }

  public final void s()
  {
    this.b.setImageBitmap(null);
    super.s();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.ag
 * JD-Core Version:    0.6.2
 */