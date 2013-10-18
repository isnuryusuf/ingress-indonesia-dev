package com.nianticproject.ingress;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.ui.aj;

public abstract class cp extends Fragment
{
  protected boolean E()
  {
    return true;
  }

  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (E())
      aj.a(i(), paramView, "coda.ttf");
  }

  protected abstract String b();

  public void q()
  {
    super.q();
    a.a(b());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.cp
 * JD-Core Version:    0.6.2
 */