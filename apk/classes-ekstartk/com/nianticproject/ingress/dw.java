package com.nianticproject.ingress;

import android.app.Activity;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bh;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.w.aa;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class dw extends BaseAdapter
{
  private static final aa a = new aa(dw.class);
  private static final Map<bh, Integer> b;
  private static final Comparator<bn> c = new dx();
  private final Activity d;
  private final List<dv> e;
  private final TextView f;
  private final List<bn> g;
  private final e h;

  static
  {
    EnumMap localEnumMap = hc.a(bh.class);
    b = localEnumMap;
    localEnumMap.put(bh.a, Integer.valueOf(Color.argb(255, 92, 204, 204)));
    b.put(bh.b, Integer.valueOf(Color.argb(255, 0, 153, 153)));
    b.put(bh.c, Integer.valueOf(Color.argb(255, 0, 99, 99)));
    b.put(bh.d, Integer.valueOf(Color.argb(255, 0, 99, 99)));
    b.put(bh.e, Integer.valueOf(Color.argb(255, 135, 110, 215)));
    b.put(bh.j, Integer.valueOf(Color.argb(255, 169, 69, 69)));
    b.put(bh.g, Integer.valueOf(Color.argb(255, 106, 72, 215)));
    b.put(bh.k, Integer.valueOf(Color.argb(255, 57, 20, 175)));
  }

  dw(Activity paramActivity, List<dv> paramList, TextView paramTextView, List<bn> paramList1)
  {
    this.d = paramActivity;
    this.e = paramList;
    this.f = paramTextView;
    this.g = eq.a(paramList1);
    this.h = o.a();
    Collections.sort(this.g, c);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      a((dv)localIterator.next());
  }

  private void a(dv paramdv)
  {
    ea localea = new ea(this, paramdv);
    this.d.runOnUiThread(localea);
  }

  public int getCount()
  {
    return this.g.size();
  }

  public Object getItem(int paramInt)
  {
    return this.g.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    bn localbn = (bn)this.g.get(paramInt);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = localbn;
    if (paramView == null);
    for (eb localeb = new eb(this, this.d); ; localeb = (eb)paramView)
    {
      bh localbh = ((bi)localbn.a().get(0)).a().a();
      int i = ((Integer)b.get(localbh)).intValue();
      localeb.a(i);
      localeb.setText(Integer.toString(paramInt));
      localeb.setOnClickListener(new dy(this, localbn, paramInt, i));
      return localeb;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.dw
 * JD-Core Version:    0.6.2
 */