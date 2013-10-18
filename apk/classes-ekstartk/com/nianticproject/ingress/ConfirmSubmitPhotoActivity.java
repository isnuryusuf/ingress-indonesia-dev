package com.nianticproject.ingress;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.curation.AbstractPortalCurationActivity;
import com.nianticproject.ingress.o.h;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class ConfirmSubmitPhotoActivity extends AbstractPortalCurationActivity
{
  private ImageView d;
  private ImageButton e;
  private TextView f;
  private TextView g;
  private Button h;
  private Button i;
  private Uri j;

  public static Intent a(Context paramContext, String paramString, Uri paramUri)
  {
    Intent localIntent = AbstractPortalCurationActivity.a(paramContext, ConfirmSubmitPhotoActivity.class, paramString);
    localIntent.setData(paramUri);
    return localIntent;
  }

  protected final String a()
  {
    return "ConfirmSubmitPhotoActivity";
  }

  public final void a(Uri paramUri)
  {
    if (paramUri.equals(this.j))
      this.e.setEnabled(true);
  }

  public final void a(Uri paramUri1, Uri paramUri2, Bitmap paramBitmap)
  {
    if (paramUri1.equals(this.j))
    {
      this.h.setEnabled(true);
      this.j = paramUri2;
      this.e.setEnabled(true);
      if (this.d.getDrawable() == null)
        ec.a(this, this.d, paramBitmap);
    }
    else
    {
      return;
    }
    this.d.setImageBitmap(paramBitmap);
  }

  public final void a(Uri paramUri, h paramh)
  {
    if (paramUri.equals(this.j))
    {
      this.e.setEnabled(false);
      a(paramh);
    }
  }

  protected final String c()
  {
    return getString(2131296424);
  }

  protected final String d()
  {
    return getString(2131296419);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903049);
    this.d = ((ImageView)findViewById(2131230748));
    this.e = ((ImageButton)findViewById(2131230749));
    this.f = ((TextView)findViewById(2131230750));
    this.g = ((TextView)findViewById(2131230751));
    this.h = ((Button)findViewById(2131230752));
    this.i = ((Button)findViewById(2131230753));
    String str = c.f(getString(2131296388));
    this.f.setText(getString(2131296405, new Object[] { str }));
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM - dd - yyyy HH:mm", Locale.US);
    TextView localTextView = this.g;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localSimpleDateFormat.format(new Date());
    localTextView.setText(getString(2131296404, arrayOfObject));
    this.d.getViewTreeObserver().addOnGlobalLayoutListener(new ap(this));
    this.e.setEnabled(false);
    this.e.setOnClickListener(new aq(this));
    this.h.setEnabled(false);
    this.h.setOnClickListener(new ar(this));
    this.i.setOnClickListener(new as(this));
    if (paramBundle != null)
    {
      this.j = ((Uri)paramBundle.getParcelable("uri"));
      return;
    }
    this.j = getIntent().getData();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("uri", this.j);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ConfirmSubmitPhotoActivity
 * JD-Core Version:    0.6.2
 */