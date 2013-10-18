package com.nianticproject.ingress.f;

import android.text.TextUtils;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.ArrayList;

final class p extends Filter
{
  p(o paramo)
  {
  }

  protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < k.a(this.a.a).size(); j++)
    {
      a locala = (a)k.a(this.a.a).get(j);
      if ((locala.a() == b.a) && ((TextUtils.isEmpty(paramCharSequence)) || (locala.b.contains(paramCharSequence)) || (locala.a.contains(paramCharSequence))))
        localArrayList.add(Integer.valueOf(j));
    }
    o.a(this.a, new int[localArrayList.size()]);
    while (i < localArrayList.size())
    {
      o.a(this.a)[i] = ((Integer)localArrayList.get(i)).intValue();
      i++;
    }
    return null;
  }

  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    o.b(this.a, o.a(this.a));
    o.a(this.a, null);
    this.a.notifyDataSetChanged();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.f.p
 * JD-Core Version:    0.6.2
 */