package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.google.a.a.an;
import com.nianticproject.ingress.NemesisBaseActivity;

public abstract class PortalImagePaginatingActivity extends NemesisBaseActivity
  implements az
{
  protected String c;
  private av d;

  protected static final Intent a(Context paramContext, Class<? extends PortalImagePaginatingActivity> paramClass, String paramString)
  {
    Intent localIntent = new Intent(paramContext, paramClass);
    if (!TextUtils.isEmpty(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Portal GUID is empty!");
      localIntent.putExtra("BasePaginatingActivity.guid", paramString);
      return localIntent;
    }
  }

  protected final av i()
  {
    return this.d;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = getIntent().getStringExtra("BasePaginatingActivity.guid");
    if (paramBundle != null)
      this.c = paramBundle.getString("BasePaginatingActivity.guid");
    this.d = new av(this, this.c, this);
  }

  protected void onPause()
  {
    this.d.c();
    super.onPause();
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    this.d.a();
  }

  protected void onResume()
  {
    super.onResume();
    this.d.b();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    String str = this.c;
    if (!TextUtils.isEmpty(str));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Portal GUID is empty!");
      paramBundle.putString("BasePaginatingActivity.guid", str);
      return;
    }
  }

  public final void x_()
  {
    Toast.makeText(this, 2131296428, 0).show();
    finish();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.PortalImagePaginatingActivity
 * JD-Core Version:    0.6.2
 */