package com.google.android.gms.internal;

import android.content.Context;
import android.widget.CompoundButton;

final class eo extends CompoundButton
{
  public eo(dz paramdz, Context paramContext)
  {
    super(paramContext);
  }

  public final void toggle()
  {
    if (this.a.a)
    {
      super.toggle();
      return;
    }
    this.a.a = true;
    this.a.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eo
 * JD-Core Version:    0.6.2
 */