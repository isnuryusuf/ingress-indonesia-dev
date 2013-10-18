package com.nianticproject.ingress.multiphotos;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnLongClickListener;

final class ai
  implements View.OnLongClickListener
{
  ai(ag paramag, String paramString)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    FragmentActivity localFragmentActivity = this.b.i();
    if ((localFragmentActivity instanceof an))
      ((an)localFragmentActivity).d(this.a);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.ai
 * JD-Core Version:    0.6.2
 */