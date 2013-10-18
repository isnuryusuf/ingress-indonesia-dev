package com.nianticproject.ingress.common.u;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.knobs.e;
import com.nianticproject.ingress.shared.a.a;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;

public class f
{
  private static final aa a = new aa(f.class);
  private static final int[] c = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 3, 4 };
  private final ArrayBlockingQueue<Integer> b = new ArrayBlockingQueue(40);

  public final int a(List<String> paramList)
  {
    ArrayList localArrayList = eq.a();
    aj.a("coc.a");
    int i = 0;
    int j = 0;
    while (true)
    {
      int n;
      try
      {
        if (i < paramList.size())
        {
          String str1 = (String)paramList.get(i);
          int m = Integer.parseInt(str1.substring(-1 + str1.length()), 16);
          n = c[m];
          String[] arrayOfString = str1.split("\\.");
          if (arrayOfString.length != 2)
            break label412;
          bool1 = true;
          an.a(bool1);
          String str2 = arrayOfString[0];
          if (str2.length() != 32)
            break label418;
          bool2 = true;
          an.a(bool2);
          int i1 = (int)Long.parseLong(str2.substring(0, 8), 16);
          int i2 = (int)Long.parseLong(str2.substring(8, 16), 16);
          int i3 = (int)Long.parseLong(str2.substring(16, 24), 16);
          int i4 = (int)Long.parseLong(str2.substring(24, 32), 16);
          if (n > 0)
            localArrayList.add(Integer.valueOf(0x11111111 & i1 | 0x22222222 & i2 | 0x44444444 & i3 | 0x88888888 & i4));
          if (n > 1)
            localArrayList.add(Integer.valueOf(0x22222222 & i1 | 0x44444444 & i2 | 0x88888888 & i3 | 0x11111111 & i4));
          if (n > 2)
            localArrayList.add(Integer.valueOf(0x44444444 & i1 | 0x88888888 & i2 | 0x11111111 & i3 | 0x22222222 & i4));
          if (n > 3)
            localArrayList.add(Integer.valueOf(i1 & 0x88888888 | i2 & 0x11111111 | 0x22222222 & i3 | i4 & 0x44444444));
        }
        else
        {
          if (j <= 1)
            break label424;
          this.b.clear();
          break label424;
          if (k < localArrayList.size())
          {
            this.b.offer(localArrayList.get(k));
            k++;
            continue;
          }
          return j;
        }
      }
      finally
      {
        aj.b();
      }
      j += n;
      i++;
      continue;
      label412: boolean bool1 = false;
      continue;
      label418: boolean bool2 = false;
      continue;
      label424: int k = 0;
    }
  }

  public final void a(av paramav, GameplayRpcParams paramGameplayRpcParams, boolean paramBoolean1, boolean paramBoolean2)
  {
    aw localaw;
    int i;
    int j;
    if (paramav == null)
    {
      localaw = av.u().a(System.currentTimeMillis());
      long l = q.f().j();
      if (e.a(paramGameplayRpcParams.getClass(), l))
      {
        i = paramGameplayRpcParams.b();
        if (!paramBoolean1)
          break label192;
        Integer localInteger = (Integer)this.b.poll();
        if (localInteger == null)
          break label192;
        j = i ^ localInteger.intValue();
      }
    }
    while (true)
      while (true)
      {
        localaw.b(j);
        if ((this.b.size() <= 8) && (paramBoolean2))
          localaw.a(true);
        if (p.a().H())
          localaw.b(true);
        a locala = p.a().B();
        byte[] arrayOfByte1 = localaw.c().a();
        label192: 
        try
        {
          aj.a("coc.e");
          byte[] arrayOfByte2 = locala.a(arrayOfByte1);
          aj.b();
          return;
          localaw = paramav.v();
        }
        finally
        {
          aj.b();
        }
      }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.f
 * JD-Core Version:    0.6.2
 */