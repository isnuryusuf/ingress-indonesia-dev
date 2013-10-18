package com.nianticproject.ingress.n;

import android.view.View;
import android.view.View.OnClickListener;
import com.nianticproject.ingress.shared.PregameStatus.UserAction;
import java.util.Collections;
import java.util.Map;

final class l
  implements View.OnClickListener
{
  private final PregameStatus.UserAction a;
  private final q b;

  l(PregameStatus.UserAction paramUserAction, q paramq)
  {
    this.a = paramUserAction;
    this.b = paramq;
  }

  public final void onClick(View paramView)
  {
    Map localMap = this.a.c();
    if (localMap == null)
      localMap = Collections.emptyMap();
    switch (k.a[this.a.b().ordinal()])
    {
    default:
      return;
    case 1:
      this.b.g();
      return;
    case 2:
      this.b.d();
      return;
    case 3:
    }
    this.b.b((String)localMap.get("URI"));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.l
 * JD-Core Version:    0.6.2
 */