package com.nianticproject.ingress.multiphotos;

import android.view.View;
import android.widget.ImageView;

final class bf
{
  public final ImageView a;

  private bf(View paramView)
  {
    this.a = ((ImageView)paramView.findViewById(2131230817));
    paramView.setTag(this);
  }

  public static bf a(View paramView)
  {
    bf localbf = (bf)paramView.getTag();
    if (localbf == null)
      localbf = new bf(paramView);
    return localbf;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.bf
 * JD-Core Version:    0.6.2
 */