package com.nianticproject.ingress.k;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.a.a.an;
import com.nianticproject.ingress.common.s.e;
import com.nianticproject.ingress.common.s.f;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public final class a
  implements e
{
  private static final String a = "nemesis".toUpperCase(Locale.ENGLISH) + "_PREFS";
  private static FutureTask<SharedPreferences> c = null;
  private final aa b = new aa(com.nianticproject.ingress.common.s.c.class);

  public a(Context paramContext)
  {
    try
    {
      aj.a("AndroidNemesisPreferencesBackend.AndroidNemesisPreferencesBackend");
      c = new FutureTask(new b(this, paramContext));
      new c(this).e();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  private SharedPreferences d()
  {
    an.a(c);
    try
    {
      SharedPreferences localSharedPreferences = (SharedPreferences)c.get();
      return localSharedPreferences;
    }
    catch (InterruptedException localInterruptedException)
    {
      this.b.a(localInterruptedException, "Get task interrupted.");
      return null;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while loading preferences", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      while (true)
        this.b.a(localCancellationException, "Get task cancelled.");
    }
  }

  public final f a()
  {
    return new f(d().getAll());
  }

  public final void a(com.nianticproject.ingress.common.s.b paramb)
  {
    SharedPreferences.Editor localEditor;
    while (true)
    {
      String str;
      Object localObject2;
      try
      {
        aj.a("AndroidNemesisPreferencesBackend.bulkCommit");
        HashMap localHashMap = paramb.a();
        localEditor = d().edit();
        Iterator localIterator = localHashMap.entrySet().iterator();
        if (!localIterator.hasNext())
          break;
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        str = (String)localEntry.getKey();
        localObject2 = localEntry.getValue();
        if (localObject2 == null)
        {
          localEditor.remove(str);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      if ((localObject2 instanceof String))
        localEditor.putString(str, (String)localObject2);
      else if ((localObject2 instanceof Long))
        localEditor.putLong(str, ((Long)localObject2).longValue());
      else if ((localObject2 instanceof Integer))
        localEditor.putInt(str, ((Integer)localObject2).intValue());
      else if ((localObject2 instanceof Float))
        localEditor.putFloat(str, ((Float)localObject2).floatValue());
      else if ((localObject2 instanceof Boolean))
        localEditor.putBoolean(str, ((Boolean)localObject2).booleanValue());
      else
        throw new IllegalArgumentException("Don't know how to commit class " + localObject2.getClass().getName());
    }
    localEditor.apply();
    aj.b();
  }

  public final void a(String paramString)
  {
    aj.a("AndroidNemesisPreferencesBackend.remove");
    d().edit().remove(paramString).apply();
    aj.b();
  }

  public final void a(String paramString, int paramInt)
  {
    aj.a("AndroidNemesisPreferencesBackend.putInt");
    d().edit().putInt(paramString, paramInt).apply();
    aj.b();
  }

  public final void a(String paramString, long paramLong)
  {
    aj.a("AndroidNemesisPreferencesBackend.putLong");
    d().edit().putLong(paramString, paramLong).apply();
    aj.b();
  }

  public final void a(String paramString1, String paramString2)
  {
    aj.a("AndroidNemesisPreferencesBackend.putString");
    d().edit().putString(paramString1, paramString2).apply();
    aj.b();
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    aj.a("AndroidNemesisPreferencesBackend.putBoolean");
    d().edit().putBoolean(paramString, paramBoolean).apply();
    aj.b();
  }

  public final int b(String paramString, int paramInt)
  {
    return d().getInt(paramString, paramInt);
  }

  public final long b(String paramString, long paramLong)
  {
    return d().getLong(paramString, paramLong);
  }

  public final String b(String paramString)
  {
    return d().getString(paramString, null);
  }

  public final String b(String paramString1, String paramString2)
  {
    return d().getString(paramString1, paramString2);
  }

  public final boolean b(String paramString, boolean paramBoolean)
  {
    return d().getBoolean(paramString, paramBoolean);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.k.a
 * JD-Core Version:    0.6.2
 */