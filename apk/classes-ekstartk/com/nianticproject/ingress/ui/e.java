package com.nianticproject.ingress.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public final class e<T> extends BaseAdapter
{
  private final T[] a;

  public e(T[] paramArrayOfT)
  {
    this.a = paramArrayOfT;
  }

  public final int getCount()
  {
    return this.a.length;
  }

  public final T getItem(int paramInt)
  {
    return this.a[paramInt];
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView;
    if (paramView != null)
      localView = paramView;
    while (true)
    {
      ((TextView)localView).setText(getItem(paramInt).toString());
      return localView;
      localView = LayoutInflater.from(localContext).inflate(2130903042, paramViewGroup, false);
      aj.a(localContext, localView, "coda.ttf");
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.e
 * JD-Core Version:    0.6.2
 */