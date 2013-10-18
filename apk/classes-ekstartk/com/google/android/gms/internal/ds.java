package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.widget.ImageView;
import com.google.android.gms.common.c;
import com.google.android.gms.plus.b;

public final class ds extends ImageView
  implements c, b
{
  private int a;
  private Uri b;
  private boolean c;
  private boolean d;
  private Bitmap e;
  private com.google.android.gms.plus.a f;

  public ds(Context paramContext)
  {
    super(paramContext);
  }

  private void c()
  {
    int i;
    if ((this.b != null) && ("android.resource".equals(this.b.getScheme())))
    {
      i = 1;
      if (this.d)
        break label37;
    }
    label37: 
    do
    {
      return;
      i = 0;
      break;
      if (this.b == null)
      {
        setImageBitmap(null);
        return;
      }
    }
    while ((i == 0) && ((this.f == null) || (!this.f.a())));
    if (i != 0)
      setImageURI(this.b);
    while (true)
    {
      this.d = false;
      return;
      this.f.a(this, this.b, this.a);
    }
  }

  public final void a()
  {
    c();
  }

  public final void a(Uri paramUri, int paramInt)
  {
    boolean bool;
    if (this.b == null)
      if (paramUri == null)
        bool = true;
    while (true)
    {
      int i = this.a;
      int j = 0;
      if (i == paramInt)
        j = 1;
      if ((!bool) || (j == 0))
        break;
      return;
      bool = false;
      continue;
      bool = this.b.equals(paramUri);
    }
    this.b = paramUri;
    this.a = paramInt;
    this.d = true;
    c();
  }

  public final void a(com.google.android.gms.common.a parama, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    if (!parama.a());
    do
    {
      return;
      this.d = false;
    }
    while (paramParcelFileDescriptor == null);
    new dt(this, this.a).execute(new ParcelFileDescriptor[] { paramParcelFileDescriptor });
  }

  public final void b()
  {
  }

  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.c = true;
    if ((this.f != null) && (!this.f.b(this)))
      this.f.a(this);
    if (this.e != null)
      setImageBitmap(this.e);
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.c = false;
    if ((this.f != null) && (this.f.b(this)))
      this.f.c(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ds
 * JD-Core Version:    0.6.2
 */