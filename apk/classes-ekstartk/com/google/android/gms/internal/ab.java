package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.common.f;

final class ab
  implements View.OnClickListener
{
  ab(v paramv, Context paramContext, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    Context localContext = this.a;
    localContext.startActivity(f.a(this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ab
 * JD-Core Version:    0.6.2
 */