package com.nianticproject.ingress;

import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.ui.e;
import com.nianticproject.ingress.common.ui.m;
import com.nianticproject.ingress.common.ui.w;

final class cc
  implements w
{
  cc(NemesisActivity paramNemesisActivity)
  {
  }

  public final void a(m paramm)
  {
    boolean bool = paramm instanceof k;
    this.a.runOnUiThread(new cd(this, paramm, bool));
    NemesisActivity.a(this.a).u().d();
  }

  public final void b(m paramm)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cc
 * JD-Core Version:    0.6.2
 */