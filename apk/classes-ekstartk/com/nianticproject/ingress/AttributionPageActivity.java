package com.nianticproject.ingress;

import android.app.ListActivity;
import android.os.Bundle;
import com.nianticproject.ingress.common.a.c;
import com.nianticproject.ingress.ui.TitleBar;
import com.nianticproject.ingress.ui.aj;

public class AttributionPageActivity extends ListActivity
{
  private ag a;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setVolumeControlStream(3);
    setContentView(2130903044);
    aj.a(this, findViewById(16908290), "coda.ttf");
    TitleBar localTitleBar = TitleBar.a(this);
    localTitleBar.a(getString(2131296333));
    localTitleBar.a();
  }

  protected void onPause()
  {
    super.onPause();
    c.c();
  }

  protected void onResume()
  {
    super.onResume();
    this.a = new ag(this);
    setListAdapter(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.AttributionPageActivity
 * JD-Core Version:    0.6.2
 */