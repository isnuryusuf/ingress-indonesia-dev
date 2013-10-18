package com.nianticproject.ingress;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.a.d.u;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.curation.AbstractPortalCurationActivity;
import com.nianticproject.ingress.o.h;
import com.nianticproject.ingress.service.NemesisService;
import com.nianticproject.ingress.share.LocationPickerActivity;
import com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle;
import com.nianticproject.ingress.ui.SquareRelativeLayout;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class PortalAddActivity extends AbstractPortalCurationActivity
{
  private ImageView d;
  private ImageView e;
  private ImageView f;
  private SquareRelativeLayout g;
  private Bitmap h;
  private Button i;
  private Button j;
  private EditText k;
  private EditText l;
  private TextView m;
  private View n;
  private ImageButton o;
  private Uri p;
  private Uri q;
  private Uri r;
  private File s;
  private u t;
  private String u;
  private String v;
  private int w = 0;
  private boolean x = false;
  private boolean y = false;

  public static Intent a(Context paramContext, u paramu, File paramFile)
  {
    Intent localIntent = AbstractPortalCurationActivity.a(paramContext, PortalAddActivity.class, null);
    localIntent.putExtra("initial_lat_lng", paramu);
    localIntent.putExtra("start_camera_capture", true);
    localIntent.putExtra("file_for_camera", paramFile);
    return localIntent;
  }

  private void a(View paramView)
  {
    this.w = (1 + this.w);
    paramView.getViewTreeObserver().addOnGlobalLayoutListener(new di(this, paramView));
  }

  private void a(u paramu)
  {
    if (paramu == null);
    do
    {
      return;
      this.n.setVisibility(4);
      this.f.setVisibility(0);
      this.t = paramu;
      this.u = ("http://maps.googleapis.com/maps/api/staticmap?center=" + paramu.c() + "," + paramu.f() + "&size=" + this.e.getWidth() + "x" + this.e.getHeight() + "&zoom=17&sensor=true&maptype=satellite");
      this.a.a("Location preview URL: " + this.u);
    }
    while ((this.u.equals(this.v)) && (this.e.getDrawable() != null));
    NemesisService.c(this, this.u);
  }

  private void g()
  {
    if ((this.d.getWidth() <= 0) && (this.e.getWidth() <= 0))
      return;
    if ((this.p != null) && ((!this.p.equals(this.q)) || (this.d.getDrawable() == null)))
      NemesisService.a(this, this.p, this.d.getWidth(), q.c().f());
    if (this.x)
      a(this.t);
    while (true)
    {
      h();
      return;
      if ((this.p != null) && (!this.x))
        NemesisService.b(this, this.p);
    }
  }

  private void h()
  {
    boolean bool1 = true;
    boolean bool2;
    label73: int i1;
    label85: ImageView localImageView;
    int i2;
    if ((!this.y) && (this.p != null) && (this.t != null) && (this.p.equals(this.q)) && (!TextUtils.isEmpty(this.k.getText().toString().trim())))
    {
      bool2 = bool1;
      this.i.setEnabled(bool2);
      if (this.t == null)
        break label117;
      View localView = this.n;
      if (!bool1)
        break label122;
      i1 = 4;
      localView.setVisibility(i1);
      localImageView = this.f;
      i2 = 0;
      if (!bool1)
        break label128;
    }
    while (true)
    {
      localImageView.setVisibility(i2);
      return;
      bool2 = false;
      break;
      label117: bool1 = false;
      break label73;
      label122: i1 = 0;
      break label85;
      label128: i2 = 4;
    }
  }

  protected final String a()
  {
    return "PortalAddActivity";
  }

  public final void a(Uri paramUri)
  {
    if (paramUri.equals(this.p))
      this.o.setEnabled(true);
  }

  public final void a(Uri paramUri1, Uri paramUri2, Bitmap paramBitmap)
  {
    if (paramUri1.equals(this.p))
    {
      this.p = paramUri2;
      this.o.setEnabled(true);
      this.q = this.p;
      if (this.d.getDrawable() != null)
        break label56;
      ec.a(this, this.d, paramBitmap);
    }
    while (true)
    {
      h();
      return;
      label56: this.d.setImageBitmap(paramBitmap);
    }
  }

  public final void a(Uri paramUri, u paramu)
  {
    if ((this.x) || (!paramUri.equals(this.p)))
      return;
    this.x = true;
    if (paramu == null)
    {
      this.n.setVisibility(0);
      this.f.setVisibility(4);
      return;
    }
    a(paramu);
    h();
  }

  public final void a(Uri paramUri, h paramh)
  {
    if (paramUri.equals(this.p))
    {
      this.o.setEnabled(false);
      a(paramh);
    }
  }

  public final void a(String paramString)
  {
  }

  public final void a(String paramString, Bitmap paramBitmap)
  {
    if (paramString.equals(this.u))
    {
      this.v = this.u;
      ec.a(this, this.e, paramBitmap);
      ec.a(this, this.f, this.h);
      h();
    }
  }

  protected final String c()
  {
    return getString(2131296421);
  }

  protected final String d()
  {
    return getString(2131296416);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    case 1:
    case 2:
    }
    do
    {
      do
      {
        return;
        if (paramInt2 == -1)
          break;
        if (this.s != null)
        {
          NemesisService.a(this, Uri.fromFile(this.s));
          this.s = null;
          this.r = null;
        }
      }
      while (this.p != null);
      finish();
      return;
      this.p = this.r;
      Intent localIntent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
      localIntent.setData(this.p);
      sendBroadcast(localIntent);
      return;
    }
    while (paramInt2 != -1);
    this.x = true;
    a(LocationPickerActivity.a(paramIntent));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903060);
    this.d = ((ImageView)findViewById(2131230814));
    this.e = ((ImageView)findViewById(2131230809));
    this.g = ((SquareRelativeLayout)findViewById(2131230808));
    this.f = ((ImageView)findViewById(2131230810));
    this.n = findViewById(2131230811);
    this.i = ((Button)findViewById(2131230752));
    this.j = ((Button)findViewById(2131230753));
    this.k = ((EditText)findViewById(2131230812));
    this.l = ((EditText)findViewById(2131230813));
    this.o = ((ImageButton)findViewById(2131230749));
    this.h = BitmapFactory.decodeResource(getResources(), 2130837555);
    this.m = ((TextView)findViewById(2131230815));
    String str = c.f("");
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM.dd.yyyy HH:mm", Locale.US);
    if (str.isEmpty())
    {
      TextView localTextView2 = this.m;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localSimpleDateFormat.format(new Date());
      localTextView2.setText(getString(2131296387, arrayOfObject2));
    }
    while (true)
    {
      this.p = ((Uri)getIntent().getParcelableExtra("android.intent.extra.STREAM"));
      this.t = ((u)getIntent().getSerializableExtra("initial_lat_lng"));
      if (this.t != null)
        this.x = true;
      Intent localIntent1 = getIntent();
      if ((paramBundle == null) && (localIntent1.getBooleanExtra("start_camera_capture", false)))
      {
        File localFile = (File)localIntent1.getSerializableExtra("file_for_camera");
        if (localFile != null)
        {
          this.s = localFile;
          this.r = Uri.fromFile(this.s);
          Intent localIntent2 = new Intent("android.media.action.IMAGE_CAPTURE");
          localIntent2.putExtra("output", this.r);
          startActivityForResult(localIntent2, 1);
        }
      }
      this.k.addTextChangedListener(new dd(this));
      this.d.setEnabled(false);
      this.g.setOnClickListener(new de(this));
      this.i.setOnClickListener(new df(this));
      this.j.setOnClickListener(new dg(this));
      this.o.setEnabled(false);
      this.o.setOnClickListener(new dh(this));
      h();
      a(this.d);
      a(this.e);
      return;
      TextView localTextView1 = this.m;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = str;
      arrayOfObject1[1] = localSimpleDateFormat.format(new Date());
      localTextView1.setText(getString(2131296386, arrayOfObject1));
    }
  }

  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    this.p = ((Uri)paramBundle.getParcelable("imageUri"));
    this.q = ((Uri)paramBundle.getParcelable("imageUriDisplayed"));
    this.v = paramBundle.getString("locationUrlDisplayed");
    this.r = ((Uri)paramBundle.getParcelable("cameraTransferImageUri"));
    if (this.r != null)
      this.s = new File(this.r.getPath());
    this.t = ((u)paramBundle.getSerializable("location"));
    this.x = paramBundle.getBoolean("locationPickerOverride");
  }

  protected void onResume()
  {
    super.onResume();
    g();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("imageUri", this.p);
    paramBundle.putParcelable("imageUriDisplayed", this.q);
    paramBundle.putString("locationUrlDisplayed", this.v);
    paramBundle.putParcelable("cameraTransferImageUri", this.r);
    paramBundle.putSerializable("location", this.t);
    paramBundle.putBoolean("locationPickerOverride", this.x);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.PortalAddActivity
 * JD-Core Version:    0.6.2
 */