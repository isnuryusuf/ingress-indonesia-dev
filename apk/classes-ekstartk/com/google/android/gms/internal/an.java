package com.google.android.gms.internal;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public abstract class an
{
  protected static <O, I> I a(an.a<I, O> parama, Object paramObject)
  {
    if (an.a.a(parama) != null)
      paramObject = parama.a(paramObject);
    return paramObject;
  }

  private static void a(StringBuilder paramStringBuilder, an.a parama, Object paramObject)
  {
    if (parama.b() == 11)
    {
      paramStringBuilder.append(((an)parama.h().cast(paramObject)).toString());
      return;
    }
    if (parama.b() == 7)
    {
      paramStringBuilder.append("\"");
      paramStringBuilder.append(s.a((String)paramObject));
      paramStringBuilder.append("\"");
      return;
    }
    paramStringBuilder.append(paramObject);
  }

  private static void a(StringBuilder paramStringBuilder, an.a parama, ArrayList<Object> paramArrayList)
  {
    paramStringBuilder.append("[");
    int i = 0;
    int j = paramArrayList.size();
    while (i < j)
    {
      if (i > 0)
        paramStringBuilder.append(",");
      Object localObject = paramArrayList.get(i);
      if (localObject != null)
        a(paramStringBuilder, parama, localObject);
      i++;
    }
    paramStringBuilder.append("]");
  }

  protected boolean a(an.a parama)
  {
    if (parama.d() == 11)
    {
      if (parama.e())
      {
        parama.f();
        throw new UnsupportedOperationException("Concrete type arrays not supported");
      }
      parama.f();
      throw new UnsupportedOperationException("Concrete types not supported");
    }
    parama.f();
    return d();
  }

  protected Object b(an.a parama)
  {
    String str1 = parama.f();
    if (parama.h() != null)
    {
      parama.f();
      c();
      gg.a(true, "Concrete field shouldn't be value object: " + parama.f());
      parama.e();
      try
      {
        String str2 = "get" + Character.toUpperCase(str1.charAt(0)) + str1.substring(1);
        Object localObject = getClass().getMethod(str2, new Class[0]).invoke(this, new Object[0]);
        return localObject;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    parama.f();
    return c();
  }

  public abstract HashMap<String, an.a<?, ?>> b();

  protected abstract Object c();

  protected abstract boolean d();

  public String toString()
  {
    HashMap localHashMap = b();
    StringBuilder localStringBuilder = new StringBuilder(100);
    Iterator localIterator = localHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      an.a locala = (an.a)localHashMap.get(str);
      if (a(locala))
      {
        Object localObject = a(locala, b(locala));
        if (localStringBuilder.length() == 0)
          localStringBuilder.append("{");
        while (true)
        {
          localStringBuilder.append("\"").append(str).append("\":");
          if (localObject != null)
            break label134;
          localStringBuilder.append("null");
          break;
          localStringBuilder.append(",");
        }
        label134: switch (locala.d())
        {
        default:
          if (locala.c())
            a(localStringBuilder, locala, (ArrayList)localObject);
          break;
        case 8:
          localStringBuilder.append("\"").append(r.a((byte[])localObject)).append("\"");
          break;
        case 9:
          localStringBuilder.append("\"").append(r.b((byte[])localObject)).append("\"");
          break;
        case 10:
          t.a(localStringBuilder, (HashMap)localObject);
          continue;
          a(localStringBuilder, locala, localObject);
        }
      }
    }
    if (localStringBuilder.length() > 0)
      localStringBuilder.append("}");
    while (true)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("{}");
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.an
 * JD-Core Version:    0.6.2
 */