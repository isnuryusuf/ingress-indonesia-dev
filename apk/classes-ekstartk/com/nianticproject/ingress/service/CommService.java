package com.nianticproject.ingress.service;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.eq;
import com.google.a.d.ae;
import com.google.a.d.h;
import com.google.a.d.j;
import com.google.a.d.u;
import com.nianticproject.ingress.ad;
import com.nianticproject.ingress.common.b;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.message.component.SimpleClientPlext;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.g;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.s;
import com.nianticproject.ingress.shared.rpc.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

public class CommService extends IntentService
{
  private static final aa a = new aa(CommService.class);
  private static boolean b = false;
  private static boolean c;

  public CommService()
  {
    super("COMM_SERVICE");
  }

  private static PendingIntent a(Context paramContext, Intent paramIntent)
  {
    return PendingIntent.getService(paramContext, 0, paramIntent, 268435456);
  }

  private static u a()
  {
    Location localLocation = ec.b();
    if (localLocation != null)
      return ad.a(localLocation);
    return null;
  }

  public static void a(Context paramContext)
  {
    an.a(paramContext);
    paramContext.startService(b(paramContext, 0));
  }

  public static void a(Context paramContext, int paramInt)
  {
    new Object[1][0] = Integer.valueOf(paramInt);
    an.a(paramContext);
    Intent localIntent = b(paramContext, 4);
    localIntent.putExtra("range", paramInt);
    paramContext.startService(localIntent);
  }

  public static void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (paramString.length() > 256)
      paramString = paramString.substring(0, 256);
    if ((paramString.length() > 0) && (Character.isHighSurrogate(paramString.charAt(-1 + paramString.length()))))
      paramString = paramString.substring(0, -1 + paramString.length());
    an.a(paramContext);
    Intent localIntent = b(paramContext, 3);
    localIntent.putExtra("message", paramString);
    localIntent.putExtra("faction_only", paramBoolean);
    paramContext.startService(localIntent);
  }

  private void a(Intent paramIntent)
  {
    while (true)
    {
      try
      {
        com.nianticproject.ingress.shared.aj.a("CommService.doSay");
        String str1 = paramIntent.getStringExtra("message");
        boolean bool = paramIntent.getBooleanExtra("faction_only", false);
        u localu = a();
        if (localu == null)
          return;
        ab localab = com.nianticproject.ingress.common.u.aj.a(str1, localu, bool);
        com.nianticproject.ingress.common.u.q localq = p.a().i();
        try
        {
          RpcResult localRpcResult = localq.a(localab);
          if (!localRpcResult.e())
          {
            a(bool);
            return;
          }
          String str2 = (String)localRpcResult.a();
          Set localSet = localRpcResult.d().c().a();
          if (bool)
          {
            Iterator localIterator = localSet.iterator();
            if (localIterator.hasNext())
            {
              com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator.next();
              if (!str2.equals(localf.getGuid()))
                continue;
              com.nianticproject.ingress.content.a.a(this, p.a().b().j(), dc.a(localf));
              i = 1;
              if (i == 0);
              d(this);
            }
          }
          else
          {
            continue;
          }
        }
        catch (y localy)
        {
          a(bool);
          continue;
        }
      }
      finally
      {
        com.nianticproject.ingress.shared.aj.b();
      }
      int i = 0;
    }
  }

  private void a(ArrayList<Long> paramArrayList, int paramInt)
  {
    com.nianticproject.ingress.content.c localc = com.nianticproject.ingress.content.a.a(this, paramInt);
    if (localc == null)
      a.b("doUpdate failed to get timestamps");
    label113: 
    do
      while (true)
      {
        return;
        aa localaa = a;
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = new Date(localc.a);
        arrayOfObject1[1] = new Date(localc.b);
        arrayOfObject1[2] = Long.valueOf(localc.c);
        localaa.a("doUpdate: minTimestamp=%s maxTimestamp=%s rowCount=%d", arrayOfObject1);
        long l;
        ab localab;
        if (localc.c == 0L)
        {
          new Object[1][0] = Integer.valueOf(100);
          l = System.currentTimeMillis() - 86400000L;
          localab = com.nianticproject.ingress.common.u.aj.a(paramArrayList, l, paramInt);
        }
        try
        {
          com.nianticproject.ingress.common.u.q localq = p.a().i();
          if (localq == null);
          ArrayList localArrayList;
          for (localObject = null; localObject != null; localObject = localArrayList)
          {
            new Object[1][0] = Integer.valueOf(((ArrayList)localObject).size());
            if (((ArrayList)localObject).size() == 0)
              break label260;
            com.nianticproject.ingress.content.a.a(this, p.a().b().j(), (List)localObject);
            return;
            new Object[1][0] = Integer.valueOf(100);
            l = localc.b;
            break label113;
            localArrayList = eq.a((Iterable)localq.b(localab));
          }
        }
        catch (y localy)
        {
          while (true)
          {
            a.a(localy, "RpcException while requesting plexts");
            Object localObject = null;
          }
        }
      }
    while (com.nianticproject.ingress.content.a.a(this, paramInt).c != 0L);
    label260: b localb = b.a;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Long.valueOf(60L);
    com.nianticproject.ingress.content.a.a(this, localb, getString(2131296367, arrayOfObject2), null, true, System.currentTimeMillis(), 2500, null, paramInt);
  }

  private void a(boolean paramBoolean)
  {
    if (p.a().G());
    for (b localb = b.b; ; localb = b.a)
    {
      NemesisService.a(this, localb, getString(2131296355), null, true, System.currentTimeMillis(), 2500, paramBoolean);
      return;
    }
  }

  private static Intent b(Context paramContext, int paramInt)
  {
    an.a(Integer.valueOf(paramInt));
    Intent localIntent = new Intent(paramContext, CommService.class);
    localIntent.putExtra("operation", paramInt);
    return localIntent;
  }

  private void b()
  {
    long l = 60000L + System.currentTimeMillis();
    aa localaa = a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = new Date(l);
    localaa.a("scheduleNextUpdate: next=%s", arrayOfObject);
    ((AlarmManager)getSystemService("alarm")).set(1, l, a(this, b(this, 2)));
  }

  public static void b(Context paramContext)
  {
    an.a(paramContext);
    paramContext.startService(b(paramContext, 1));
  }

  private void c()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 1 + s.a(s.values());
    int j = 0;
    while (true)
      if (j < 2484)
      {
        com.nianticproject.ingress.shared.plext.d locald = com.nianticproject.ingress.shared.plext.d.values()[(j % com.nianticproject.ingress.shared.plext.d.values().length)];
        String str;
        label123: com.nianticproject.ingress.shared.plext.f localf;
        ai localai;
        int k;
        switch (a.a[locald.ordinal()])
        {
        default:
          a.c("%s is an untested MarkupType, add it here", new Object[] { locald });
          str = "[\"TEXT\",{\"plain\":\"unknown message\"}]";
          localf = com.nianticproject.ingress.shared.plext.f.values()[(j % com.nianticproject.ingress.shared.plext.f.values().length)];
          if (j % 2 == 0)
          {
            localai = ai.b;
            k = j / 2 % i;
          }
          break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        }
        try
        {
          com.nianticproject.ingress.shared.plext.c localc = (com.nianticproject.ingress.shared.plext.c)com.nianticproject.ingress.common.o.c.a.readValue(str, com.nianticproject.ingress.shared.plext.c.class);
          GameEntityBuilder localGameEntityBuilder = new GameEntityBuilder("stress_test_plext." + g.a(g.m), System.currentTimeMillis());
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(j);
          localArrayList.add(localGameEntityBuilder.a(new SimpleClientPlext(String.format("Stress test plext %d", arrayOfObject), Arrays.asList(new com.nianticproject.ingress.shared.plext.c[] { localc }), localai, localf, k)).a());
          j++;
          continue;
          str = "[\"TEXT\",{\"plain\":\"hello world\"}]";
          break label123;
          str = "[\"SENDER\",{\"plain\":\"nickname: \",\"guid\":\"guid\",\"team\":\"ALIENS\"}]";
          break label123;
          str = "[\"PLAYER\",{\"plain\":\"nickname\",\"guid\":\"guid\",\"team\":\"ALIENS\"}]";
          break label123;
          str = "[\"AT_PLAYER\",{\"plain\":\"@nickname\",\"guid\":\"guid\",\"team\":\"ALIENS\"}]";
          break label123;
          str = "[\"FACTION\",{\"plain\":\"Enlightened\",\"team\":\"ALIENS\"}]";
          break label123;
          str = "[\"PORTAL\",{\"plain\":\"[Unnamed Portal] ([Unknown Location])\",\"guid\":\"guid\",\"team\":\"RESISTANCE\",\"latE6\":\"0\",\"lngE6\":\"0\",\"address\":\"[Unknown Location]\"}]";
          break label123;
          str = "[\"SECURE\",{\"plain\":\"[secure] \"}]";
          break label123;
          str = "[\"SCORE\",{\"plain\":\"Enlightened 101 - Resistance 100\",\"resistanceScore\":\"100\",\"aliensScore\":\"101\"}]";
          break label123;
          localai = ai.a;
        }
        catch (JsonParseException localJsonParseException)
        {
          while (true)
            localJsonParseException.printStackTrace();
        }
        catch (JsonMappingException localJsonMappingException)
        {
          while (true)
            localJsonMappingException.printStackTrace();
        }
        catch (IOException localIOException)
        {
          while (true)
            localIOException.printStackTrace();
        }
      }
    new Object[1][0] = Integer.valueOf(localArrayList.size());
    com.nianticproject.ingress.content.a.a(this, p.a().b().j(), localArrayList);
  }

  public static void c(Context paramContext)
  {
    an.a(paramContext);
    paramContext.startService(b(paramContext, 5));
  }

  private static void d(Context paramContext)
  {
    an.a(paramContext);
    Intent localIntent = b(paramContext, 2);
    localIntent.putExtra("forced_update", false);
    paramContext.startService(localIntent);
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("operation", -1);
    try
    {
      com.nianticproject.ingress.shared.aj.a("CommService.onHandleIntent", "op", i);
      new Object[1][0] = Integer.valueOf(i);
      switch (i)
      {
      default:
        throw new IllegalArgumentException(i + " is an unknown operation code");
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
    c = false;
    b = true;
    d(this);
    while (true)
    {
      com.nianticproject.ingress.shared.aj.b();
      return;
      c = true;
      a.a("cancelNextUpdate");
      ((AlarmManager)getSystemService("alarm")).cancel(a(this, b(this, 2)));
      b = false;
      continue;
      if (((b) || (paramIntent.getBooleanExtra("forced_update", false))) && (!c))
      {
        try
        {
          u localu = a();
          if (localu == null)
          {
            if (!b)
              continue;
            b();
            continue;
          }
          int m = 1000 * com.nianticproject.ingress.common.s.c.e(20015);
          if (m < 1000)
          {
            aa localaa1 = a;
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = Integer.valueOf(m);
            arrayOfObject1[1] = Integer.valueOf(1000);
            localaa1.c("rangeFilterMeters %d below minimum %d", arrayOfObject1);
            if (!b)
              continue;
            b();
            continue;
          }
          h localh = h.a(localu.g(), com.google.a.d.d.a(m / 6371010.0D));
          ArrayList localArrayList1 = new ae().a(localh).a();
          long[] arrayOfLong = new long[localArrayList1.size()];
          for (int n = 0; n < localArrayList1.size(); n++)
            arrayOfLong[n] = ((j)localArrayList1.get(n)).d();
          if (arrayOfLong.length == 0)
          {
            aa localaa2 = a;
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = localu.h();
            arrayOfObject2[1] = Integer.valueOf(m);
            localaa2.c("s2CellIdsForPlextLocation gives 0 cells for %s range %d", arrayOfObject2);
            if (!b)
              continue;
            b();
            continue;
          }
          ArrayList localArrayList2 = new ArrayList(arrayOfLong.length);
          int i1 = arrayOfLong.length;
          for (int i2 = 0; i2 < i1; i2++)
            localArrayList2.add(Long.valueOf(arrayOfLong[i2]));
          a(localArrayList2, -1);
          if (com.nianticproject.ingress.common.q.f().a(com.nianticproject.ingress.common.p.a.a()))
            a(localArrayList2, com.nianticproject.ingress.common.a.a);
          a(localArrayList2, com.nianticproject.ingress.common.a.b);
          if (!b)
            continue;
          b();
          continue;
        }
        finally
        {
          if (b)
            b();
        }
        a(paramIntent);
        continue;
        int j = com.nianticproject.ingress.common.s.c.e(20015);
        int k = paramIntent.getIntExtra("range", j);
        if (k != j)
        {
          com.nianticproject.ingress.content.a.a(this, b.a);
          com.nianticproject.ingress.common.s.c.d(k);
          d(this);
          continue;
          c();
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.CommService
 * JD-Core Version:    0.6.2
 */