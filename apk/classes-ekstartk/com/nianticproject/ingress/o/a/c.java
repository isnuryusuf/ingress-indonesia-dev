package com.nianticproject.ingress.o.a;

import com.nianticproject.ingress.common.w.aa;
import java.lang.reflect.Method;
import java.util.regex.Pattern;

public final class c
{
  private static final aa a = new aa(c.class);
  private static final Pattern b = Pattern.compile("^\\[([^\\]]+)\\]\\s*:\\s*\\[([^\\]]+)\\]");

  public static String a(String paramString1, String paramString2)
  {
    try
    {
      String str = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { paramString1, paramString2 });
      return str;
    }
    catch (Exception localException)
    {
    }
    return paramString2;
  }

  // ERROR //
  public static java.util.Map<String, String> a()
  {
    // Byte code:
    //   0: invokestatic 63	com/google/a/c/hc:b	()Ljava/util/HashMap;
    //   3: astore_0
    //   4: aconst_null
    //   5: astore_1
    //   6: new 65	java/io/BufferedReader
    //   9: dup
    //   10: new 67	java/io/InputStreamReader
    //   13: dup
    //   14: invokestatic 73	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   17: ldc 75
    //   19: invokevirtual 79	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   22: invokevirtual 85	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   25: invokespecial 88	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   28: invokespecial 91	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   31: astore_2
    //   32: aload_2
    //   33: invokevirtual 95	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   36: astore 9
    //   38: aload 9
    //   40: ifnull +59 -> 99
    //   43: getstatic 28	com/nianticproject/ingress/o/a/c:b	Ljava/util/regex/Pattern;
    //   46: aload 9
    //   48: invokevirtual 99	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   51: astore 10
    //   53: aload 10
    //   55: invokevirtual 105	java/util/regex/Matcher:find	()Z
    //   58: ifeq -26 -> 32
    //   61: aload_0
    //   62: aload 10
    //   64: iconst_1
    //   65: invokevirtual 109	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   68: aload 10
    //   70: iconst_2
    //   71: invokevirtual 109	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   74: invokeinterface 115 3 0
    //   79: pop
    //   80: goto -48 -> 32
    //   83: astore 6
    //   85: getstatic 18	com/nianticproject/ingress/o/a/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   88: pop
    //   89: aload_2
    //   90: ifnull +7 -> 97
    //   93: aload_2
    //   94: invokevirtual 118	java/io/BufferedReader:close	()V
    //   97: aload_0
    //   98: areturn
    //   99: aload_2
    //   100: invokevirtual 118	java/io/BufferedReader:close	()V
    //   103: aload_0
    //   104: areturn
    //   105: astore 12
    //   107: aload_0
    //   108: areturn
    //   109: astore 4
    //   111: aload_1
    //   112: ifnull +7 -> 119
    //   115: aload_1
    //   116: invokevirtual 118	java/io/BufferedReader:close	()V
    //   119: aload 4
    //   121: athrow
    //   122: astore 8
    //   124: aload_0
    //   125: areturn
    //   126: astore 5
    //   128: goto -9 -> 119
    //   131: astore_3
    //   132: aload_2
    //   133: astore_1
    //   134: aload_3
    //   135: astore 4
    //   137: goto -26 -> 111
    //   140: astore 13
    //   142: aconst_null
    //   143: astore_2
    //   144: goto -59 -> 85
    //
    // Exception table:
    //   from	to	target	type
    //   32	38	83	java/lang/Exception
    //   43	80	83	java/lang/Exception
    //   99	103	105	java/io/IOException
    //   6	32	109	finally
    //   93	97	122	java/io/IOException
    //   115	119	126	java/io/IOException
    //   32	38	131	finally
    //   43	80	131	finally
    //   85	89	131	finally
    //   6	32	140	java/lang/Exception
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.a.c
 * JD-Core Version:    0.6.2
 */