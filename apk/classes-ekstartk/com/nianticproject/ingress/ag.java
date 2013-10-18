package com.nianticproject.ingress;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.a.c.dc;
import com.nianticproject.ingress.common.g.a;

final class ag extends BaseAdapter
{
  private final Context a;
  private final dc<String> b;

  public ag(Context paramContext)
  {
    this.a = paramContext;
    this.b = a.a();
  }

  private String a(int paramInt)
  {
    return (String)this.b.get(paramInt);
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ah localah;
    if (paramView != null)
      localah = (ah)paramView.getTag();
    while (true)
    {
      localah.a(a(paramInt));
      return paramView;
      paramView = LayoutInflater.from(this.a).inflate(2130903043, paramViewGroup, false);
      localah = new ah(paramView);
      paramView.setTag(localah);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ag
 * JD-Core Version:    0.6.2
 */