package com.google.android.gms.internal;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class aq
  implements ae
{
  public static final n a = new n();
  private final int b;
  private final HashMap<String, HashMap<String, an.a<?, ?>>> c;
  private final ArrayList<aq.a> d;
  private final String e;

  aq(int paramInt, ArrayList<aq.a> paramArrayList, String paramString)
  {
    this.b = paramInt;
    this.d = null;
    this.c = a(paramArrayList);
    this.e = ((String)gg.a(paramString));
    d();
  }

  private static HashMap<String, HashMap<String, an.a<?, ?>>> a(ArrayList<aq.a> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    int i = paramArrayList.size();
    for (int j = 0; j < i; j++)
    {
      aq.a locala = (aq.a)paramArrayList.get(j);
      localHashMap.put(locala.c, locala.a());
    }
    return localHashMap;
  }

  private void d()
  {
    Iterator localIterator1 = this.c.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      HashMap localHashMap = (HashMap)this.c.get(str);
      Iterator localIterator2 = localHashMap.keySet().iterator();
      while (localIterator2.hasNext())
        ((an.a)localHashMap.get((String)localIterator2.next())).a(this);
    }
  }

  final int a()
  {
    return this.b;
  }

  public final HashMap<String, an.a<?, ?>> a(String paramString)
  {
    return (HashMap)this.c.get(paramString);
  }

  final ArrayList<aq.a> b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.c.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new aq.a(str, (HashMap)this.c.get(str)));
    }
    return localArrayList;
  }

  public final String c()
  {
    return this.e;
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = this.c.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      localStringBuilder.append(str1).append(":\n");
      HashMap localHashMap = (HashMap)this.c.get(str1);
      Iterator localIterator2 = localHashMap.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        localStringBuilder.append("  ").append(str2).append(": ");
        localStringBuilder.append(localHashMap.get(str2));
      }
    }
    return localStringBuilder.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    n.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aq
 * JD-Core Version:    0.6.2
 */