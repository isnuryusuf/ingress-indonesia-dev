package com.google.android.a.a.a.a;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class c
{
  private f a;
  private ExecutorService b;
  private LinkedHashMap<String, String> c = new LinkedHashMap();
  private BlockingQueue<j> d;
  private String e;
  private String f;
  private String g;
  private int h;
  private int i = 1;
  private int j;
  private int k;

  public c(String paramString1, String paramString2, String paramString3, f paramf, int paramInt1, int paramInt2, int paramInt3)
  {
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramString3;
    this.a = paramf;
    this.h = paramInt1;
    this.j = paramInt2;
    this.k = paramInt3;
    a("v", this.g);
    a("s", this.f);
    this.d = new ArrayBlockingQueue(this.h);
    this.b = Executors.newSingleThreadExecutor();
    this.b.execute(new d(this));
  }

  private Map<String, Map<String, String>> a(List<j> paramList)
  {
    LinkedHashMap localLinkedHashMap1 = new LinkedHashMap();
    LinkedHashMap localLinkedHashMap2 = new LinkedHashMap();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      j localj = (j)localIterator1.next();
      String str = localj.a();
      if (localLinkedHashMap2.containsKey(str))
      {
        ((List)localLinkedHashMap2.get(str)).add(localj);
      }
      else
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(localj);
        localLinkedHashMap2.put(str, localArrayList);
      }
    }
    Iterator localIterator2 = localLinkedHashMap2.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      List localList = (List)localEntry.getValue();
      LinkedHashMap localLinkedHashMap3 = new LinkedHashMap(this.c);
      try
      {
        Map localMap = j.a((j[])localList.toArray(new j[0]));
        localLinkedHashMap3.putAll(localMap);
        localLinkedHashMap1.put(localEntry.getKey(), localLinkedHashMap3);
      }
      catch (a locala)
      {
        Log.w("ReporterDefault", "failed to merge tickers:" + localList, locala);
      }
    }
    return localLinkedHashMap1;
  }

  private boolean a(Map<String, String> paramMap)
  {
    int m = this.j;
    boolean bool = false;
    while (true)
      if ((!bool) && (m > 0))
        try
        {
          Thread.sleep(this.k);
          this.a.a(this.e, paramMap);
          bool = true;
          m--;
        }
        catch (g localg)
        {
          while (true)
          {
            Log.w("ReporterDefault", "#" + m + " failed to send report", localg);
            bool = false;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
          {
            Log.w("ReporterDefault", "interrupted in sendReport()", localInterruptedException);
            Thread.currentThread().interrupt();
          }
        }
    return bool;
  }

  final void a()
  {
    ArrayList localArrayList;
    do
      try
      {
        int m = this.i;
        localArrayList = new ArrayList();
        for (int n = 0; n < m; n++)
          localArrayList.add(this.d.take());
      }
      catch (InterruptedException localInterruptedException)
      {
        Log.w("ReporterDefault", "reporter interrupted", localInterruptedException);
        Thread.currentThread().interrupt();
        localArrayList = null;
      }
    while (localArrayList == null);
    Iterator localIterator = a(localArrayList).values().iterator();
    while (localIterator.hasNext())
      a((Map)localIterator.next());
  }

  public final void a(int paramInt)
  {
    if (paramInt <= 0)
    {
      Log.w("ReporterDefault", "too small batch size :" + paramInt + ", changed to 1");
      paramInt = 1;
    }
    if (paramInt > this.h)
      Log.w("ReporterDefault", "batch size :" + paramInt + " bigger than buffer size, change to buffer limit");
    this.i = paramInt;
  }

  public final void a(String paramString1, String paramString2)
  {
    this.c.put(paramString1, paramString2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.a.a.a.c
 * JD-Core Version:    0.6.2
 */