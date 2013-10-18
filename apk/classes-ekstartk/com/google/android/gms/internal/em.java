package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.plus.d;

final class em
  implements View.OnClickListener, d
{
  private final d b = null;

  public em(dz paramdz)
  {
  }

  public final void a(Intent paramIntent)
  {
    Context localContext = this.a.getContext();
    if (((localContext instanceof Activity)) && (paramIntent != null))
      ((Activity)localContext).startActivityForResult(paramIntent, this.a.b);
  }

  public final void onClick(View paramView)
  {
    if ((paramView == this.a.e) || (paramView == this.a.f))
      if (this.a.j != null)
        break label52;
    label52: for (Intent localIntent = null; this.b != null; localIntent = (Intent)this.a.j.a.getParcelable("intent"))
    {
      this.b.a(localIntent);
      return;
    }
    a(localIntent);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.em
 * JD-Core Version:    0.6.2
 */