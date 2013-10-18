package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

public final class be
  implements n
{
  private final TreeSet<String> a = new TreeSet();

  public be(Context paramContext, Collection<String> paramCollection)
  {
    a(paramContext, paramCollection);
  }

  private static Throwable a(Throwable paramThrowable)
  {
    while (paramThrowable.getCause() != null)
      paramThrowable = paramThrowable.getCause();
    return paramThrowable;
  }

  private void a(Context paramContext, Collection<String> paramCollection)
  {
    this.a.clear();
    HashSet localHashSet = new HashSet();
    if (paramCollection != null)
      localHashSet.addAll(paramCollection);
    if (paramContext != null)
      try
      {
        String str3 = paramContext.getApplicationContext().getPackageName();
        this.a.add(str3);
        ActivityInfo[] arrayOfActivityInfo = paramContext.getApplicationContext().getPackageManager().getPackageInfo(str3, 15).activities;
        if (arrayOfActivityInfo != null)
        {
          int j = arrayOfActivityInfo.length;
          for (int k = 0; k < j; k++)
            localHashSet.add(arrayOfActivityInfo[k].packageName);
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        aq.c("No package found");
      }
    Iterator localIterator1 = localHashSet.iterator();
    if (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      Iterator localIterator2 = this.a.iterator();
      for (int i = 1; ; i = 0)
      {
        if (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          if (str1.startsWith(str2))
            continue;
          if (str2.startsWith(str1))
            this.a.remove(str2);
        }
        if (i == 0)
          break;
        this.a.add(str1);
        break;
      }
    }
  }

  public final String a(String paramString, Throwable paramThrowable)
  {
    Throwable localThrowable = a(paramThrowable);
    StackTraceElement[] arrayOfStackTraceElement = a(paramThrowable).getStackTrace();
    Object localObject;
    if ((arrayOfStackTraceElement == null) || (arrayOfStackTraceElement.length == 0))
      localObject = null;
    while (true)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localThrowable.getClass().getSimpleName());
      if (localObject != null)
      {
        String[] arrayOfString = ((StackTraceElement)localObject).getClassName().split("\\.");
        String str1 = "unknown";
        if ((arrayOfString != null) && (arrayOfString.length > 0))
          str1 = arrayOfString[(-1 + arrayOfString.length)];
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = str1;
        arrayOfObject[1] = ((StackTraceElement)localObject).getMethodName();
        arrayOfObject[2] = Integer.valueOf(((StackTraceElement)localObject).getLineNumber());
        localStringBuilder.append(String.format(" (@%s:%s:%s)", arrayOfObject));
      }
      if (paramString != null)
        localStringBuilder.append(String.format(" {%s}", new Object[] { paramString }));
      return localStringBuilder.toString();
      int i = arrayOfStackTraceElement.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label246;
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
        String str2 = localStackTraceElement.getClassName();
        Iterator localIterator = this.a.iterator();
        while (true)
          if (localIterator.hasNext())
            if (str2.startsWith((String)localIterator.next()))
            {
              localObject = localStackTraceElement;
              break;
            }
      }
      label246: localObject = arrayOfStackTraceElement[0];
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.be
 * JD-Core Version:    0.6.2
 */