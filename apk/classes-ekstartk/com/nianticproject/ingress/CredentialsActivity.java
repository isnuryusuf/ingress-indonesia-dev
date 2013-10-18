package com.nianticproject.ingress;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import com.nianticproject.ingress.common.w.aa;

public class CredentialsActivity extends Activity
{
  private static final aa a = new aa(CredentialsActivity.class);
  private View b;

  private static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, CredentialsActivity.class);
    localIntent.addFlags(268435456);
    return localIntent;
  }

  public static void a()
  {
    NemesisApplication localNemesisApplication = NemesisApplication.a();
    localNemesisApplication.startActivity(a(localNemesisApplication));
  }

  public static void a(Intent paramIntent)
  {
    NemesisApplication localNemesisApplication = NemesisApplication.a();
    Intent localIntent = a(localNemesisApplication);
    localIntent.putExtra("android.intent.extra.INTENT", paramIntent);
    localNemesisApplication.startActivity(localIntent);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = paramIntent;
    switch (paramInt1)
    {
    default:
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    case 0:
    }
    if (paramInt2 == -1)
      c.a().e();
    while (true)
    {
      finish();
      return;
      c.a();
      c.f();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903051);
    this.b = findViewById(16908290);
    ((Button)findViewById(2131230761)).setOnClickListener(new at(this));
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }

  protected void onResume()
  {
    super.onResume();
    Intent localIntent = (Intent)getIntent().getParcelableExtra("android.intent.extra.INTENT");
    if (localIntent != null)
    {
      this.b.setVisibility(4);
      localIntent.setFlags(0);
      startActivityForResult(localIntent, 0);
      return;
    }
    this.b.setVisibility(0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.CredentialsActivity
 * JD-Core Version:    0.6.2
 */