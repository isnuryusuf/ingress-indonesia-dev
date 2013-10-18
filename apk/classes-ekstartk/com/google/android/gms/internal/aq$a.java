package com.google.android.gms.internal;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class aq$a
  implements ae
{
  public static final o a = new o();
  final int b;
  final String c;
  final ArrayList<aq.b> d;

  aq$a(int paramInt, String paramString, ArrayList<aq.b> paramArrayList)
  {
    this.b = paramInt;
    this.c = paramString;
    this.d = paramArrayList;
  }

  aq$a(String paramString, HashMap<String, an.a<?, ?>> paramHashMap)
  {
    this.b = 1;
    this.c = paramString;
    this.d = a(paramHashMap);
  }

  private static ArrayList<aq.b> a(HashMap<String, an.a<?, ?>> paramHashMap)
  {
    if (paramHashMap == null)
      return null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new aq.b(str, (an.a)paramHashMap.get(str)));
    }
    return localArrayList;
  }

  final HashMap<String, an.a<?, ?>> a()
  {
    HashMap localHashMap = new HashMap();
    int i = this.d.size();
    for (int j = 0; j < i; j++)
    {
      aq.b localb = (aq.b)this.d.get(j);
      localHashMap.put(localb.c, localb.d);
    }
    return localHashMap;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    o.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq.a
 * JD-Core Version:    0.6.2
 */