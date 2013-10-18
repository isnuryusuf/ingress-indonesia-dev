package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.d.u;
import com.nianticproject.ingress.ConfirmSubmitPhotoActivity;
import com.nianticproject.ingress.EnterCorrectTextActivity;
import com.nianticproject.ingress.ReportInvalidPortalActivity;
import com.nianticproject.ingress.bb;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.curation.AbstractPortalCurationActivity;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.portal.PhotoStreamInfo;
import com.nianticproject.ingress.gameentity.components.portal.SimplePhotoStreamInfo;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.i.b;
import com.nianticproject.ingress.i.c;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.share.LocationPickerActivity;
import com.nianticproject.ingress.shared.m;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import com.nianticproject.ingress.shared.portal.PortalImage;
import java.io.File;
import java.text.NumberFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class MoreInfoActivity extends AbstractPortalCurationActivity
  implements c, ap, az
{
  private TextView d;
  private ImageButton e;
  private ViewPager f;
  private TextView g;
  private ImageButton h;
  private View i;
  private View j;
  private View k;
  private ImageButton l;
  private TextView m;
  private TextView n;
  private View o;
  private final boolean p = com.nianticproject.ingress.common.q.f().e();
  private av q;
  private q r;
  private int s;
  private bg t = null;
  private PortalImage u = null;
  private Uri v = null;
  private u w = null;
  private String x;

  public static Intent a(Context paramContext, String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return AbstractPortalCurationActivity.a(paramContext, MoreInfoActivity.class, paramString);
    }
  }

  private void d(String paramString)
  {
    startActivity(EnterCorrectTextActivity.a(this, this.c, paramString, bb.b, this.x));
  }

  private void i()
  {
    int i1;
    int i2;
    boolean bool3;
    if (this.r.c() > 1)
    {
      i1 = 1;
      if (i1 != 0)
        break label87;
      this.e.setVisibility(4);
      this.h.setVisibility(4);
      i2 = this.r.c();
      if (i2 > 0)
        break label257;
      bool3 = true;
    }
    while (true)
    {
      if (!bool3)
        break label290;
      this.j.setVisibility(8);
      this.f.setVisibility(8);
      this.k.setVisibility(0);
      return;
      i1 = 0;
      break;
      label87: ba localba = this.q.f();
      label132: boolean bool1;
      label147: ImageButton localImageButton2;
      switch (x.a[localba.ordinal()])
      {
      default:
        ImageButton localImageButton1 = this.e;
        if (this.s > 0)
        {
          bool1 = true;
          localImageButton1.setEnabled(bool1);
          localImageButton2 = this.h;
          if (this.s >= -1 + this.r.c())
            break label251;
        }
        break;
      case 1:
      case 2:
      case 3:
      case 4:
      }
      label251: for (boolean bool2 = true; ; bool2 = false)
      {
        localImageButton2.setEnabled(bool2);
        break;
        this.e.setVisibility(4);
        this.h.setVisibility(4);
        break label132;
        this.e.setVisibility(0);
        this.h.setVisibility(0);
        break label132;
        this.e.setVisibility(0);
        this.h.setVisibility(4);
        break label132;
        bool1 = false;
        break label147;
      }
      label257: if (i2 == 1)
        bool3 = com.nianticproject.ingress.i.a.a(this.r.b(0).b());
      else
        bool3 = false;
    }
    label290: this.k.setVisibility(8);
    this.f.setVisibility(0);
    int i3 = this.f.b();
    com.nianticproject.ingress.shared.portal.a locala = this.r.b(i3);
    this.l.setEnabled(locala.d());
    this.l.setSelected(this.r.c(i3));
    int i4 = this.r.d(i3);
    this.m.setText(NumberFormat.getNumberInstance(Locale.getDefault()).format(i4));
    View localView1 = this.j;
    int i5;
    View localView2;
    int i6;
    if (this.r.e(i3))
    {
      i5 = 0;
      localView1.setVisibility(i5);
      localView2 = this.o;
      if (!this.p)
        break label461;
      int i7 = this.r.c();
      i6 = 0;
      if (i7 <= 1)
        break label461;
    }
    while (true)
    {
      localView2.setVisibility(i6);
      return;
      i5 = 8;
      break;
      label461: i6 = 8;
    }
  }

  private String j()
  {
    if (this.u != null)
      return this.u.b();
    return null;
  }

  protected final String a()
  {
    return "MoreInfoActivity";
  }

  public final void a(int paramInt1, int paramInt2, String paramString)
  {
    switch (paramInt1)
    {
    default:
      return;
    case 0:
      switch (paramInt2)
      {
      default:
        return;
      case 0:
        NemesisService.b(this);
        return;
      case 1:
      }
      startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1);
      return;
    case 1:
    }
    com.nianticproject.ingress.ui.ae localae = com.nianticproject.ingress.ui.ae.values()[paramInt2];
    String str = j();
    switch (x.b[localae.ordinal()])
    {
    default:
      this.a.c("Unknown problem type: " + localae);
      return;
    case 1:
      startActivity(EnterCorrectTextActivity.a(this, this.c, str, bb.a, this.d.getText().toString()));
      return;
    case 2:
      d(str);
      return;
    case 3:
      startActivityForResult(LocationPickerActivity.a(this, this.w, false), 2);
      return;
    case 4:
    }
    startActivity(ReportInvalidPortalActivity.a(this, this.c));
  }

  public final void a(b paramb)
  {
    com.nianticproject.ingress.i.a locala = paramb.a(this.c);
    if (locala == null)
      return;
    a(b.a(locala), locala.d());
  }

  public final void a(ba paramba)
  {
    this.i.setVisibility(8);
    this.g.setVisibility(8);
    switch (x.a[paramba.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      i();
      return;
      this.g.setVisibility(0);
    }
  }

  public final void a(File paramFile)
  {
    this.v = Uri.fromFile(paramFile);
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", this.v);
    startActivityForResult(localIntent, 0);
  }

  public final void a(Collection<PlayerPortalImage> paramCollection, Map<String, ak<Boolean, Integer>> paramMap)
  {
    this.r.a(paramCollection, paramMap);
    i();
  }

  protected final boolean b()
  {
    return false;
  }

  protected final String c()
  {
    return getString(2131296425);
  }

  protected final String d()
  {
    return getString(2131296420);
  }

  public final bg g()
  {
    if (this.t != null)
      return this.t;
    this.t = new bg(g.a(getSupportFragmentManager(), new w(this)).b());
    return this.t;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    case 3:
    case 0:
    case 1:
    case 2:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
              return;
            while (paramInt2 != -1);
            int i1 = LightboxActivity.a(paramIntent);
            if (i1 != -1)
              this.f.a(i1);
          }
          while ((paramIntent == null) || (TextUtils.isEmpty(paramIntent.getStringExtra("android.intent.extra.TEXT"))));
          setResult(-1, paramIntent);
          finish();
          return;
        }
        while (paramInt2 != -1);
        startActivity(ConfirmSubmitPhotoActivity.a(this, this.c, this.v));
        return;
      }
      while ((paramInt2 != -1) || (paramIntent == null));
      Uri localUri = paramIntent.getData();
      startActivity(ConfirmSubmitPhotoActivity.a(this, this.c, localUri));
      return;
    }
    while (paramInt2 != -1);
    b(null, null, LocationPickerActivity.a(paramIntent), null);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e locale = p.a().d();
    if (locale != null);
    for (Portal localPortal = av.a(locale, this.c); localPortal == null; localPortal = null)
    {
      this.a.c("Portal not found in cache, finishing...");
      finish();
      return;
    }
    f localf = localPortal.getEntity();
    if (localf != null)
    {
      LocationE6 localLocationE6 = (LocationE6)localf.getComponent(LocationE6.class);
      if (localLocationE6 != null)
        this.w = localLocationE6.getLatLng();
    }
    setContentView(2130903058);
    this.q = new av(this, this.c, this);
    this.d = ((TextView)findViewById(2131230747));
    View localView1 = findViewById(2131230800);
    View localView2 = findViewById(2131230796);
    this.e = ((ImageButton)findViewById(2131230790));
    this.f = ((ViewPager)findViewById(2131230778));
    View localView3 = findViewById(2131230791);
    this.g = ((TextView)findViewById(2131230779));
    this.h = ((ImageButton)findViewById(2131230793));
    this.i = findViewById(2131230794);
    this.k = findViewById(2131230792);
    this.j = findViewById(2131230795);
    this.l = ((ImageButton)findViewById(2131230784));
    this.m = ((TextView)findViewById(2131230785));
    this.n = ((TextView)findViewById(2131230797));
    View localView4 = findViewById(2131230798);
    this.o = findViewById(2131230781);
    View localView5 = findViewById(2131230799);
    this.d.setText(localPortal.getDescriptiveText(m.a));
    localView1.setOnClickListener(new r(this));
    y localy = new y(this);
    localView2.setOnClickListener(localy);
    this.k.setOnClickListener(localy);
    this.k.setVisibility(8);
    this.e.setOnClickListener(new z(this));
    this.h.setOnClickListener(new aa(this));
    this.r = new q(getSupportFragmentManager());
    this.f.a(this.r);
    if (this.p)
      localView3.setOnClickListener(new ab(this));
    this.g.setPaintFlags(0x8 | this.g.getPaintFlags());
    this.g.setOnClickListener(new ac(this));
    if (paramBundle != null)
      this.s = paramBundle.getInt("position", 0);
    if (localf != null);
    for (Object localObject = (PhotoStreamInfo)localf.getComponent(PhotoStreamInfo.class); ; localObject = null)
    {
      if (localObject == null)
      {
        com.nianticproject.ingress.common.w.aa localaa = this.a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localf.getGuid();
        localaa.c("GameEntity %s is missing PhotoStreamInfo.", arrayOfObject);
        localObject = new SimplePhotoStreamInfo(null, 0);
      }
      this.q.e().a(this.c, (PhotoStreamInfo)localObject);
      this.u = ((PhotoStreamInfo)localObject).getCoverPhoto();
      if (this.u != null)
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put(this.u.c(), new ak(Boolean.FALSE, Integer.valueOf(0)));
        this.r.a(dc.a(new PlayerPortalImage(this.u.c(), this.u.b(), this.u.a(), this.u.e())), localHashMap);
      }
      this.l.setOnClickListener(new ad(this));
      this.x = localPortal.getDescriptiveText(m.c);
      TextView localTextView = this.n;
      String str = this.x;
      int i1;
      if (TextUtils.isEmpty(str))
      {
        localTextView.setText(2131296295);
        localTextView.setGravity(1);
        localView4.setVisibility(0);
        int i2 = (int)TypedValue.applyDimension(1, 16.0F, getResources().getDisplayMetrics());
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localTextView.getLayoutParams();
        localLayoutParams.topMargin = i2;
        localTextView.setLayoutParams(localLayoutParams);
        localView4.setOnClickListener(new ae(this));
        if (!this.p)
          break label909;
        this.o.setOnClickListener(new af(this));
        View localView6 = this.o;
        if (this.r.c() <= 1)
          break label902;
        i1 = 0;
        label858: localView6.setVisibility(i1);
      }
      while (true)
      {
        localView5.setOnClickListener(new s(this));
        return;
        new t(this, str, localTextView).execute(new Void[0]);
        break;
        label902: i1 = 8;
        break label858;
        label909: this.o.setVisibility(8);
      }
    }
  }

  protected void onPause()
  {
    this.q.c();
    p.a().z().b(this);
    super.onPause();
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    this.q.a();
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    this.v = ((Uri)paramBundle.getParcelable("new_photo_uri"));
    super.onRestoreInstanceState(paramBundle);
  }

  protected void onResume()
  {
    super.onResume();
    this.q.b();
    p.a().z().a(this);
    com.nianticproject.ingress.i.a locala = this.q.e().a(this.c);
    if (locala == null)
    {
      this.a.c("Image stream is null! Finishing activity...");
      finish();
      return;
    }
    this.r.a(b.a(locala), locala.d());
    this.f.a(this.s);
    this.f.a(new v(this));
    i();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("new_photo_uri", this.v);
    paramBundle.putInt("position", this.f.b());
  }

  public final void x_()
  {
    Toast.makeText(this, 2131296428, 0).show();
    finish();
  }

  public final boolean y_()
  {
    return this.s == -1 + this.r.c();
  }

  public final boolean z_()
  {
    return this.r.c() == 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.MoreInfoActivity
 * JD-Core Version:    0.6.2
 */