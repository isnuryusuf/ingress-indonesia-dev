package com.google.android.gms.internal;

import android.widget.CompoundButton;
import com.google.android.gms.common.a;
import com.google.android.gms.plus.c;

public final class en
  implements c
{
  protected en(dz paramdz)
  {
  }

  public final void a(a parama, du paramdu)
  {
    if (this.a.a)
    {
      this.a.a = false;
      this.a.e.refreshDrawableState();
    }
    if ((parama.a()) && (paramdu != null))
    {
      this.a.j = paramdu;
      this.a.g();
      this.a.d();
      return;
    }
    this.a.f();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.en
 * JD-Core Version:    0.6.2
 */