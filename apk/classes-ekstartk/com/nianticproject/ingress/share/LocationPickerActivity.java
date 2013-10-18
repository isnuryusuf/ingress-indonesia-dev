package com.nianticproject.ingress.share;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.j;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.google.a.d.u;
import com.google.android.gms.common.f;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.nianticproject.ingress.ui.aj;

public class LocationPickerActivity extends FragmentActivity
{
  private View a;
  private View b;
  private final c c = new c(this, (byte)0);
  private u d;
  private boolean e;
  private Button f;

  public static Intent a(Context paramContext, u paramu, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, LocationPickerActivity.class);
    localIntent.putExtra("initial_lat_lng", paramu);
    localIntent.putExtra("new_portal", paramBoolean);
    return localIntent;
  }

  public static u a(Intent paramIntent)
  {
    return a(paramIntent, "result_lat_lng");
  }

  private static u a(Intent paramIntent, String paramString)
  {
    return (u)paramIntent.getSerializableExtra(paramString);
  }

  private void a()
  {
    setResult(0);
    finish();
  }

  private void a(boolean paramBoolean)
  {
    if (this.d != null)
    {
      this.f.setEnabled(paramBoolean);
      this.b.setVisibility(4);
      this.a.setVisibility(0);
      return;
    }
    this.f.setEnabled(false);
    this.b.setVisibility(0);
    this.a.setVisibility(4);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903057);
    aj.a(this, findViewById(16908290), "coda.ttf");
    this.a = findViewById(2131230787);
    this.b = findViewById(16908301);
    this.e = getIntent().getBooleanExtra("new_portal", false);
    if (paramBundle != null)
    {
      this.d = ((u)paramBundle.getSerializable("location"));
      this.e = paramBundle.getBoolean("new_portal");
    }
    if (this.e)
    {
      ((TextView)findViewById(2131230747)).setText(2131296392);
      ((TextView)findViewById(2131230786)).setText(2131296393);
    }
    while (true)
    {
      if (this.d == null)
        this.d = a(getIntent(), "initial_lat_lng");
      this.f = ((Button)findViewById(2131230752));
      this.f.setOnClickListener(new a(this));
      ((Button)findViewById(2131230753)).setOnClickListener(new b(this));
      return;
      ((TextView)findViewById(2131230747)).setText(2131296394);
      ((TextView)findViewById(2131230786)).setText(2131296395);
    }
  }

  protected void onResume()
  {
    super.onResume();
    int i = f.a(this);
    switch (i)
    {
    default:
      a();
    case 0:
      c localc;
      int j;
      do
      {
        return;
        localc = this.c;
        if (localc.a != null)
          break label215;
        localc.b.a(true);
        localc.a = ((SupportMapFragment)localc.b.getSupportFragmentManager().a(2131230788)).b();
        if (localc.a != null)
          break;
        j = 0;
      }
      while (j != 0);
      a();
      return;
      if (localc.b.d != null)
      {
        LatLng localLatLng = new LatLng(localc.b.d.c(), localc.b.d.f());
        MarkerOptions localMarkerOptions = new MarkerOptions().c().a(com.google.android.gms.maps.model.b.a()).a(localLatLng).a(localc.b.getString(2131296415));
        localc.a.a(localMarkerOptions);
        localc.a.a(com.google.android.gms.maps.b.a(localLatLng));
      }
      while (true)
      {
        localc.a.c();
        localc.a.d();
        label215: j = 1;
        break;
        LocationManager localLocationManager = (LocationManager)localc.b.getSystemService("location");
        localLocationManager.requestLocationUpdates("passive", 0L, 0.0F, new d(localc, localLocationManager), null);
      }
    case 1:
    case 2:
    case 3:
    }
    a(false);
    f.a(i, this).show();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.d != null);
    for (u localu = this.c.a(); ; localu = null)
    {
      paramBundle.putSerializable("location", localu);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.share.LocationPickerActivity
 * JD-Core Version:    0.6.2
 */