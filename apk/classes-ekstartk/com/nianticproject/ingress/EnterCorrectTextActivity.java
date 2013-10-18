package com.nianticproject.ingress;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.TextWatcher;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.nianticproject.ingress.curation.AbstractPortalCurationActivity;

public class EnterCorrectTextActivity extends AbstractPortalCurationActivity
  implements TextWatcher
{
  private String d;
  private bb e;
  private String f;
  private ImageView g;
  private TextView h;
  private EditText i;
  private Button j;

  public static Intent a(Context paramContext, String paramString1, String paramString2, bb parambb, String paramString3)
  {
    Intent localIntent = AbstractPortalCurationActivity.a(paramContext, EnterCorrectTextActivity.class, paramString1);
    if (!TextUtils.isEmpty(paramString2));
    for (Uri localUri = Uri.parse(paramString2); ; localUri = null)
    {
      localIntent.setData(localUri);
      localIntent.putExtra("text_type", parambb);
      localIntent.putExtra("initial_text", paramString3);
      return localIntent;
    }
  }

  private void g()
  {
    String str = this.i.getText().toString().trim();
    Button localButton = this.j;
    if ((!TextUtils.isEmpty(str)) && (!TextUtils.equals(str, this.f)));
    for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }

  private void h()
  {
    Bitmap localBitmap = BitmapFactory.decodeResource(getResources(), 2130837599);
    ec.a(this, this.g, localBitmap);
  }

  protected final String a()
  {
    return "EnterCorrectTextActivity";
  }

  public final void a(String paramString)
  {
    if (paramString.equals(this.d))
      h();
  }

  public final void a(String paramString, Bitmap paramBitmap)
  {
    if (paramString.equals(this.d))
    {
      if (paramBitmap != null)
        ec.a(this, this.g, paramBitmap);
    }
    else
      return;
    h();
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  protected final String c()
  {
    switch (ba.a[this.e.ordinal()])
    {
    default:
      return super.c();
    case 1:
      return getString(2131296422);
    case 2:
    }
    return getString(2131296423);
  }

  protected final String d()
  {
    switch (ba.a[this.e.ordinal()])
    {
    default:
      return super.d();
    case 1:
      return getString(2131296417);
    case 2:
    }
    return getString(2131296418);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903052);
    this.g = ((ImageView)findViewById(2131230748));
    this.h = ((TextView)findViewById(2131230762));
    this.i = ((EditText)findViewById(2131230763));
    this.j = ((Button)findViewById(2131230752));
    Button localButton = (Button)findViewById(2131230753);
    Intent localIntent = getIntent();
    Uri localUri = localIntent.getData();
    String str;
    label153: int k;
    if (localUri != null)
    {
      str = localUri.toString();
      this.d = str;
      this.e = ((bb)localIntent.getSerializableExtra("text_type"));
      this.f = localIntent.getStringExtra("initial_text");
      if (TextUtils.isEmpty(this.d))
        break label273;
      this.g.getViewTreeObserver().addOnGlobalLayoutListener(new aw(this));
      k = this.i.getInputType();
      switch (ba.a[this.e.ordinal()])
      {
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      this.i.setInputType(k);
      this.i.setText(this.f);
      this.i.addTextChangedListener(this);
      this.i.setOnEditorActionListener(new ax(this));
      this.j.setOnClickListener(new ay(this));
      localButton.setOnClickListener(new az(this));
      return;
      str = null;
      break;
      label273: h();
      break label153;
      this.h.setText(2131296413);
      this.i.setSingleLine(true);
      this.i.setEllipsize(TextUtils.TruncateAt.END);
      this.i.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      k |= 8192;
      continue;
      this.h.setText(2131296414);
      this.i.setSingleLine(false);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
      this.i.setLayoutParams(localLayoutParams);
      k |= 147456;
    }
  }

  protected void onResume()
  {
    super.onResume();
    g();
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.EnterCorrectTextActivity
 * JD-Core Version:    0.6.2
 */