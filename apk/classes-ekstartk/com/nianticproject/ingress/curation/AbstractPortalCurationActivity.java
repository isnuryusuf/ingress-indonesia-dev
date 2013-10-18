package com.nianticproject.ingress.curation;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.a.d.u;
import com.nianticproject.ingress.NemesisBaseActivity;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.o.h;
import com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle;
import com.nianticproject.ingress.ui.d;

public abstract class AbstractPortalCurationActivity extends NemesisBaseActivity
  implements d
{
  protected String c;

  protected static Intent a(Context paramContext, Class<? extends AbstractPortalCurationActivity> paramClass, String paramString)
  {
    Intent localIntent = new Intent(paramContext, paramClass);
    localIntent.putExtra("portal_guid", paramString);
    return localIntent;
  }

  public final void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1001:
      finish();
      return;
    case 1000:
      startActivity(b.a());
      return;
    case 1002:
    }
    finish();
  }

  public void a(int paramInt1, int paramInt2, String paramString)
  {
  }

  protected final void a(c paramc)
  {
    if (paramc != null)
    {
      switch (a.b[paramc.ordinal()])
      {
      default:
        return;
      case 1:
        com.nianticproject.ingress.ui.a.a(1000, getString(2131296396), getString(2131296397), getString(2131296399), getString(2131296400)).a(getSupportFragmentManager(), "dialog_tag_turn_on_sync");
        return;
      case 2:
        String str = c();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = d();
        com.nianticproject.ingress.ui.a.a(1001, str, getString(2131296401, arrayOfObject), getString(2131296389), null).a(getSupportFragmentManager(), "dialog_tag_confirm");
        return;
      case 3:
      }
      finish();
      return;
    }
    this.a.b("Edit feature was off!");
  }

  protected final void a(h paramh)
  {
    switch (a.a[paramh.ordinal()])
    {
    default:
      return;
    case 1:
    }
    int i = q.c().f() / 1048576;
    String str = c();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    com.nianticproject.ingress.ui.a.a(1002, str, getString(2131296402, arrayOfObject), getString(2131296389), null).a(getSupportFragmentManager(), "dialog_fail_too_big");
  }

  protected final void a(String paramString1, String paramString2, u paramu, Uri paramUri)
  {
    c localc = b.a(this, paramString1, paramString2, paramu, paramUri, this.b);
    com.nianticproject.ingress.common.a.a.a("PortalAdd", "submit");
    if (!TextUtils.isEmpty(paramString2))
      com.nianticproject.ingress.common.a.a.a("PortalAdd", "hasDescription");
    a(localc);
  }

  public final void b(int paramInt)
  {
  }

  protected final void b(String paramString1, String paramString2, u paramu, Uri paramUri)
  {
    c localc = b.a(this, this.c, paramString1, paramString2, paramu, paramUri, this.b);
    com.nianticproject.ingress.common.a.a.a("PortalEdit", "submit");
    Object[] arrayOfObject = new Object[4];
    String str1;
    String str2;
    label54: String str3;
    if (paramString1 != null)
    {
      str1 = "title";
      arrayOfObject[0] = str1;
      if (paramString2 == null)
        break label115;
      str2 = "desc";
      arrayOfObject[1] = str2;
      if (paramu == null)
        break label122;
      str3 = "latlng";
      label68: arrayOfObject[2] = str3;
      if (paramUri == null)
        break label129;
    }
    label129: for (String str4 = "photo"; ; str4 = "")
    {
      arrayOfObject[3] = str4;
      com.nianticproject.ingress.common.a.a.a("PortalEdit", String.format("%s-%s-%s-%s", arrayOfObject));
      a(localc);
      return;
      str1 = "";
      break;
      label115: str2 = "";
      break label54;
      label122: str3 = "";
      break label68;
    }
  }

  protected String c()
  {
    return getString(2131296421);
  }

  public final void c(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1001:
    }
    finish();
  }

  protected String d()
  {
    return getString(2131296416);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = getIntent().getStringExtra("portal_guid");
    if (paramBundle != null)
      this.c = paramBundle.getString("portal_guid");
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("portal_guid", this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.curation.AbstractPortalCurationActivity
 * JD-Core Version:    0.6.2
 */