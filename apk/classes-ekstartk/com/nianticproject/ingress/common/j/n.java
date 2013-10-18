package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.utils.Array;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class n
{
  private static final aa a = new aa(n.class);
  private final HashMap<ad, Array<m>> b = new HashMap(200);
  private final Array<Array<ad>> c = new Array(ae.values().length);

  public n()
  {
    for (int i = 0; i < ae.values().length; i++)
      this.c.add(new Array());
  }

  public final void a()
  {
    try
    {
      aj.a("DeferredRenderer.drawAll");
      Set localSet = this.b.keySet();
      if (localSet.size() > 50)
      {
        aa localaa = a;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(localSet.size());
        arrayOfObject[1] = Integer.valueOf(50);
        localaa.c("Probable Material leak: count (%d) > %d. Check that all Material instances are static.", arrayOfObject);
      }
      Iterator localIterator1 = localSet.iterator();
      while (localIterator1.hasNext())
      {
        ad localad2 = (ad)localIterator1.next();
        ((Array)this.c.get(localad2.a().ordinal())).add(localad2);
      }
    }
    finally
    {
      aj.b();
    }
    for (int i = 0; ; i++)
    {
      Array localArray1;
      String str;
      if (i < this.c.size)
      {
        localArray1 = (Array)this.c.get(i);
        str = ae.values()[i].name();
      }
      for (int j = 0; j < localArray1.size; j++)
      {
        ad localad1 = (ad)localArray1.get(j);
        Array localArray2 = (Array)this.b.get(localad1);
        int k = localArray2.size;
        if (k > 0)
        {
          try
          {
            aj.a(str, ".", localad1.g());
            if (localad1.e())
            {
              for (int m = 0; m < localArray2.size; m++)
                ((m)localArray2.get(m)).a(localad1);
              localad1.c();
            }
            localArray2.clear();
          }
          finally
          {
            aj.b();
          }
          Iterator localIterator2 = this.c.iterator();
          while (localIterator2.hasNext())
            ((Array)localIterator2.next()).clear();
          aj.b();
          return;
        }
      }
    }
  }

  public final void a(ad paramad, m paramm)
  {
    Array localArray = (Array)this.b.get(paramad);
    if (localArray == null)
    {
      localArray = new Array();
      this.b.put(paramad, localArray);
    }
    localArray.add(paramm);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.n
 * JD-Core Version:    0.6.2
 */