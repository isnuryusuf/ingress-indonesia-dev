package com.google.android.a.a.a.a;

public final class h
  implements f
{
  private String a;
  private String b;

  public h()
  {
  }

  public h(String paramString1, String paramString2)
  {
    String str1;
    String str2;
    if (k.a(paramString1))
    {
      str1 = null;
      this.a = str1;
      boolean bool = k.a(paramString2);
      str2 = null;
      if (!bool)
        break label47;
    }
    while (true)
    {
      this.b = str2;
      return;
      str1 = paramString1.trim();
      break;
      label47: str2 = paramString2.trim();
    }
  }

  // ERROR //
  public final void a(String paramString, java.util.Map<String, String> paramMap)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_2
    //   2: invokestatic 37	com/google/android/a/a/a/a/k:a	(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    //   5: astore_3
    //   6: invokestatic 39	com/google/android/a/a/a/a/k:a	()Ljava/lang/String;
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 21	com/google/android/a/a/a/a/h:a	Ljava/lang/String;
    //   15: invokestatic 19	com/google/android/a/a/a/a/k:a	(Ljava/lang/String;)Z
    //   18: ifne +264 -> 282
    //   21: aload_0
    //   22: getfield 23	com/google/android/a/a/a/a/h:b	Ljava/lang/String;
    //   25: invokestatic 19	com/google/android/a/a/a/a/k:a	(Ljava/lang/String;)Z
    //   28: ifne +254 -> 282
    //   31: iconst_3
    //   32: anewarray 4	java/lang/Object
    //   35: astore 18
    //   37: aload 18
    //   39: iconst_0
    //   40: aload 4
    //   42: aastore
    //   43: aload 18
    //   45: iconst_1
    //   46: aload_0
    //   47: getfield 21	com/google/android/a/a/a/a/h:a	Ljava/lang/String;
    //   50: aastore
    //   51: aload 18
    //   53: iconst_2
    //   54: aload_0
    //   55: getfield 23	com/google/android/a/a/a/a/h:b	Ljava/lang/String;
    //   58: aastore
    //   59: ldc 41
    //   61: aload 18
    //   63: invokestatic 45	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   66: astore 5
    //   68: new 47	java/lang/StringBuilder
    //   71: dup
    //   72: ldc 49
    //   74: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   77: aload 5
    //   79: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: pop
    //   86: ldc 61
    //   88: invokestatic 63	com/google/android/a/a/a/a/k:b	(Ljava/lang/String;)V
    //   91: aconst_null
    //   92: astore 7
    //   94: new 65	java/net/URL
    //   97: dup
    //   98: aload_3
    //   99: invokespecial 66	java/net/URL:<init>	(Ljava/lang/String;)V
    //   102: invokevirtual 70	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   105: checkcast 72	java/net/HttpURLConnection
    //   108: astore 12
    //   110: aload 12
    //   112: ldc 74
    //   114: aload 5
    //   116: invokevirtual 77	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: new 47	java/lang/StringBuilder
    //   122: dup
    //   123: ldc 79
    //   125: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   128: aload_3
    //   129: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: pop
    //   136: ldc 61
    //   138: invokestatic 63	com/google/android/a/a/a/a/k:b	(Ljava/lang/String;)V
    //   141: aload 12
    //   143: invokevirtual 83	java/net/HttpURLConnection:getResponseCode	()I
    //   146: pop
    //   147: aload 12
    //   149: ifnull +8 -> 157
    //   152: aload 12
    //   154: invokevirtual 86	java/net/HttpURLConnection:disconnect	()V
    //   157: return
    //   158: astore 10
    //   160: aconst_null
    //   161: astore 11
    //   163: ldc 61
    //   165: new 47	java/lang/StringBuilder
    //   168: dup
    //   169: ldc 88
    //   171: invokespecial 52	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   174: aload_3
    //   175: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   181: invokestatic 90	com/google/android/a/a/a/a/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   184: new 92	com/google/android/a/a/a/a/g
    //   187: dup
    //   188: aload 10
    //   190: invokevirtual 95	java/net/MalformedURLException:getMessage	()Ljava/lang/String;
    //   193: invokespecial 96	com/google/android/a/a/a/a/g:<init>	(Ljava/lang/String;)V
    //   196: athrow
    //   197: astore 8
    //   199: aload 11
    //   201: astore 7
    //   203: aload 7
    //   205: ifnull +8 -> 213
    //   208: aload 7
    //   210: invokevirtual 86	java/net/HttpURLConnection:disconnect	()V
    //   213: aload 8
    //   215: athrow
    //   216: astore 9
    //   218: ldc 61
    //   220: ldc 98
    //   222: invokestatic 90	com/google/android/a/a/a/a/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   225: new 92	com/google/android/a/a/a/a/g
    //   228: dup
    //   229: aload 9
    //   231: invokevirtual 99	java/io/IOException:getMessage	()Ljava/lang/String;
    //   234: invokespecial 96	com/google/android/a/a/a/a/g:<init>	(Ljava/lang/String;)V
    //   237: athrow
    //   238: astore 8
    //   240: goto -37 -> 203
    //   243: astore 15
    //   245: aload 12
    //   247: astore 7
    //   249: aload 15
    //   251: astore 8
    //   253: goto -50 -> 203
    //   256: astore 14
    //   258: aload 12
    //   260: astore 7
    //   262: aload 14
    //   264: astore 9
    //   266: goto -48 -> 218
    //   269: astore 13
    //   271: aload 12
    //   273: astore 11
    //   275: aload 13
    //   277: astore 10
    //   279: goto -116 -> 163
    //   282: aload 4
    //   284: astore 5
    //   286: goto -218 -> 68
    //
    // Exception table:
    //   from	to	target	type
    //   94	110	158	java/net/MalformedURLException
    //   163	197	197	finally
    //   94	110	216	java/io/IOException
    //   94	110	238	finally
    //   218	238	238	finally
    //   110	147	243	finally
    //   110	147	256	java/io/IOException
    //   110	147	269	java/net/MalformedURLException
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.a.a.a.h
 * JD-Core Version:    0.6.2
 */