package com.nianticproject.ingress.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.TextView;

final class o extends BaseAdapter
  implements Filterable, ListAdapter
{
  private int[] b;
  private int[] c;
  private final Filter d = new p(this);

  private o(k paramk)
  {
  }

  public final int getCount()
  {
    if (this.c != null)
      return this.c.length;
    return 0;
  }

  public final Filter getFilter()
  {
    return this.d;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView != null);
    while (true)
    {
      d locald = (d)paramView.getTag();
      k.a(this.a, locald, this.c[paramInt]);
      locald.d.setVisibility(8);
      locald.f.setVisibility(8);
      locald.e.setVisibility(8);
      return paramView;
      paramView = LayoutInflater.from(k.b(this.a)).inflate(2130903050, paramViewGroup, false);
      paramView.setTag(new d(paramView));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.f.o
 * JD-Core Version:    0.6.2
 */