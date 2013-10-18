package com.nianticproject.ingress;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.a.d.u;
import com.nianticproject.ingress.service.NemesisService;
import java.io.File;

public class BlankPassThroughActivity extends NemesisBaseActivity
{
  private aj c;
  private Bundle d;

  public static void a(Context paramContext, u paramu)
  {
    aj localaj = aj.a;
    Intent localIntent = new Intent(paramContext, BlankPassThroughActivity.class);
    localIntent.putExtra("op", localaj);
    localIntent.putExtra("location", paramu);
    paramContext.startActivity(localIntent);
  }

  protected final String a()
  {
    return "BlankPassThroughActivity";
  }

  public final void a(File paramFile)
  {
    if (this.c == aj.a)
    {
      startActivity(PortalAddActivity.a(this, (u)this.d.getSerializable("location"), paramFile));
      finish();
    }
  }

  protected final boolean b()
  {
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      this.c = ((aj)paramBundle.getSerializable("op"));
      this.d = ((Bundle)paramBundle.getParcelable("args"));
      return;
    }
    Intent localIntent = getIntent();
    this.c = ((aj)localIntent.getSerializableExtra("op"));
    this.d = localIntent.getExtras();
  }

  protected void onResume()
  {
    super.onResume();
    switch (ai.a[this.c.ordinal()])
    {
    default:
      return;
    case 1:
    }
    NemesisService.b(this);
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putSerializable("op", this.c);
    paramBundle.putParcelable("args", this.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.BlankPassThroughActivity
 * JD-Core Version:    0.6.2
 */