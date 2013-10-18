package com.google.android.gms.internal;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class ak
  implements ae, j<String, Integer>
{
  public static final h a = new h();
  private final int b;
  private final HashMap<String, Integer> c;
  private final HashMap<Integer, String> d;
  private final ArrayList<ak.a> e;

  public ak()
  {
    this.b = 1;
    this.c = new HashMap();
    this.d = new HashMap();
    this.e = null;
  }

  ak(int paramInt, ArrayList<ak.a> paramArrayList)
  {
    this.b = paramInt;
    this.c = new HashMap();
    this.d = new HashMap();
    this.e = null;
    a(paramArrayList);
  }

  private void a(ArrayList<ak.a> paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      ak.a locala = (ak.a)localIterator.next();
      a(locala.c, locala.d);
    }
  }

  final int a()
  {
    return this.b;
  }

  public final ak a(String paramString, int paramInt)
  {
    this.c.put(paramString, Integer.valueOf(paramInt));
    this.d.put(Integer.valueOf(paramInt), paramString);
    return this;
  }

  final ArrayList<ak.a> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.c.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new ak.a(str, ((Integer)this.c.get(str)).intValue()));
    }
    return localArrayList;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ak
 * JD-Core Version:    0.6.2
 */