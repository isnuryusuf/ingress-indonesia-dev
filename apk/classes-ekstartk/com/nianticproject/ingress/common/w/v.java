package com.nianticproject.ingress.common.w;

import com.google.a.a.ab;
import com.google.a.a.bb;
import com.google.a.c.eq;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class v
{
  private static final aa a = new aa(v.class);
  private static final Pattern b = Pattern.compile("^((?:(?:(?:http(?:s)?):)?//)?(?:(?:commondata)?storage\\.googleapis\\.com/)?(?:[\\w-_]+\\.)?panoramio\\.com/photos/)(original|medium|small|thumbnail|square|mini_square)(/[^/]+)");
  private static final Pattern c = Pattern.compile("^((?:(?:(?:http(?:s)?):)?//)?(?:(?:(?:lh|gp)\\d\\.(?:ggpht|googleusercontent|google)\\.com)|(?:\\d\\.bp\\.blogspot\\.com)|(?:bp\\d\\.blogger\\.com)|(?:db\\d\\.googleusercontent\\.cn))/(?:(?:public|image|proxy)/)?)(.*)");
  private static final Pattern d = Pattern.compile("^(.*=[^=]*)(s\\d+)([^=]*)$");
  private static final Pattern e = Pattern.compile("^(.*)(s\\d+)(.*)$");
  private static final bb f = bb.a('/').a();
  private static final ab g = ab.a('/').a();
  private static final bb h = bb.a('=').a();

  public static String a(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0));
    Matcher localMatcher2;
    do
    {
      return paramString;
      Matcher localMatcher1 = b.matcher(paramString);
      if (localMatcher1.matches())
      {
        if (paramInt <= 180);
        for (String str7 = "small"; ; str7 = "medium")
        {
          StringBuilder localStringBuilder3 = new StringBuilder();
          localStringBuilder3.append(localMatcher1.group(1));
          localStringBuilder3.append(str7);
          localStringBuilder3.append(localMatcher1.group(3));
          return localStringBuilder3.toString();
        }
      }
      localMatcher2 = c.matcher(paramString);
    }
    while (!localMatcher2.matches());
    String str1 = localMatcher2.group(1);
    String str2 = localMatcher2.group(2);
    if (paramInt < 0)
      paramInt = 0;
    while (str2.indexOf('/') == -1)
    {
      String str6;
      if (h.b(str2).size() == 1)
      {
        Object[] arrayOfObject3 = new Object[3];
        arrayOfObject3[0] = str1;
        arrayOfObject3[1] = str2;
        arrayOfObject3[2] = Integer.valueOf(paramInt);
        str6 = String.format("%s%s=s%d", arrayOfObject3);
        return str6;
        if (paramInt > 1600)
          paramInt = 1600;
      }
      else
      {
        Matcher localMatcher4 = d.matcher(str2);
        StringBuilder localStringBuilder2;
        if (localMatcher4.matches())
        {
          localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append(localMatcher4.group(1));
          localStringBuilder2.append("s");
          localStringBuilder2.append(paramInt);
          localStringBuilder2.append(localMatcher4.group(3));
        }
        Object[] arrayOfObject2;
        for (String str5 = localStringBuilder2.toString(); ; str5 = String.format("%s-s%d", arrayOfObject2))
        {
          str6 = str1 + str5;
          break;
          arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = str2;
          arrayOfObject2[1] = Integer.valueOf(paramInt);
        }
      }
    }
    ArrayList localArrayList = eq.a(f.a(str2));
    if (str2.endsWith("/"))
      localArrayList.add("");
    StringBuilder localStringBuilder1;
    switch (localArrayList.size())
    {
    default:
      String str3 = (String)localArrayList.get(4);
      Matcher localMatcher3 = e.matcher(str3);
      if (localMatcher3.matches())
      {
        localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append(localMatcher3.group(1));
        localStringBuilder1.append("s");
        localStringBuilder1.append(paramInt);
        localStringBuilder1.append(localMatcher3.group(3));
      }
      break;
    case 4:
    case 5:
    }
    Object[] arrayOfObject1;
    for (String str4 = localStringBuilder1.toString(); ; str4 = String.format("s%d", arrayOfObject1))
    {
      localArrayList.set(4, str4);
      return str1 + g.a(localArrayList);
      localArrayList.add("");
      break;
      localArrayList.add(4, "");
      break;
      arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.v
 * JD-Core Version:    0.6.2
 */