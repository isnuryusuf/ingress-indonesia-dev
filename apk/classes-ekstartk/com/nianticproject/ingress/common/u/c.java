package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.common.w.aa;

public final class c
{
  private static final aa a = new aa(c.class);

  // ERROR //
  public static java.net.HttpCookie a(java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   3: lstore_2
    //   4: new 33	java/net/URI
    //   7: dup
    //   8: new 35	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 36	java/lang/StringBuilder:<init>	()V
    //   15: aload_0
    //   16: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc 42
    //   21: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_0
    //   25: ldc 44
    //   27: invokestatic 50	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   30: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: ldc 52
    //   35: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_1
    //   39: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokespecial 59	java/net/URI:<init>	(Ljava/lang/String;)V
    //   48: astore 4
    //   50: aload 4
    //   52: invokevirtual 63	java/net/URI:toURL	()Ljava/net/URL;
    //   55: invokevirtual 69	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   58: checkcast 71	java/net/HttpURLConnection
    //   61: astore 11
    //   63: aload 11
    //   65: iconst_0
    //   66: invokevirtual 75	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   69: aload 11
    //   71: invokevirtual 79	java/net/HttpURLConnection:getResponseCode	()I
    //   74: istore 15
    //   76: iload 15
    //   78: sipush 400
    //   81: if_icmplt +204 -> 285
    //   84: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   87: astore 16
    //   89: iconst_1
    //   90: anewarray 4	java/lang/Object
    //   93: astore 17
    //   95: aload 17
    //   97: iconst_0
    //   98: iload 15
    //   100: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   103: aastore
    //   104: aload 16
    //   106: ldc 87
    //   108: aload 17
    //   110: invokevirtual 91	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   113: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   116: astore 18
    //   118: iconst_1
    //   119: anewarray 4	java/lang/Object
    //   122: astore 19
    //   124: aload 19
    //   126: iconst_0
    //   127: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   130: lload_2
    //   131: lsub
    //   132: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   135: aastore
    //   136: aload 18
    //   138: ldc 98
    //   140: aload 19
    //   142: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   145: aconst_null
    //   146: areturn
    //   147: astore 36
    //   149: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   152: aload 36
    //   154: ldc 102
    //   156: invokevirtual 105	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   159: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   162: astore 37
    //   164: iconst_1
    //   165: anewarray 4	java/lang/Object
    //   168: astore 38
    //   170: aload 38
    //   172: iconst_0
    //   173: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   176: lload_2
    //   177: lsub
    //   178: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   181: aastore
    //   182: aload 37
    //   184: ldc 98
    //   186: aload 38
    //   188: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   191: aconst_null
    //   192: areturn
    //   193: astore 33
    //   195: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   198: aload 33
    //   200: ldc 107
    //   202: invokevirtual 105	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   205: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   208: astore 34
    //   210: iconst_1
    //   211: anewarray 4	java/lang/Object
    //   214: astore 35
    //   216: aload 35
    //   218: iconst_0
    //   219: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   222: lload_2
    //   223: lsub
    //   224: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   227: aastore
    //   228: aload 34
    //   230: ldc 98
    //   232: aload 35
    //   234: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   237: aconst_null
    //   238: areturn
    //   239: astore 8
    //   241: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   244: aload 8
    //   246: ldc 109
    //   248: invokevirtual 105	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   251: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   254: astore 9
    //   256: iconst_1
    //   257: anewarray 4	java/lang/Object
    //   260: astore 10
    //   262: aload 10
    //   264: iconst_0
    //   265: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   268: lload_2
    //   269: lsub
    //   270: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   273: aastore
    //   274: aload 9
    //   276: ldc 98
    //   278: aload 10
    //   280: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   283: aconst_null
    //   284: areturn
    //   285: iload 15
    //   287: sipush 302
    //   290: if_icmpeq +32 -> 322
    //   293: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   296: astore 31
    //   298: iconst_1
    //   299: anewarray 4	java/lang/Object
    //   302: astore 32
    //   304: aload 32
    //   306: iconst_0
    //   307: iload 15
    //   309: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   312: aastore
    //   313: aload 31
    //   315: ldc 111
    //   317: aload 32
    //   319: invokevirtual 91	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   322: aload 11
    //   324: invokevirtual 115	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   327: ldc 117
    //   329: invokeinterface 123 2 0
    //   334: checkcast 125	java/util/List
    //   337: astore 20
    //   339: aload 20
    //   341: ifnonnull +91 -> 432
    //   344: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   347: ldc 127
    //   349: invokevirtual 129	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   352: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   355: astore 21
    //   357: iconst_1
    //   358: anewarray 4	java/lang/Object
    //   361: astore 22
    //   363: aload 22
    //   365: iconst_0
    //   366: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   369: lload_2
    //   370: lsub
    //   371: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   374: aastore
    //   375: aload 21
    //   377: ldc 98
    //   379: aload 22
    //   381: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   384: aconst_null
    //   385: areturn
    //   386: astore 12
    //   388: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   391: aload 12
    //   393: ldc 131
    //   395: invokevirtual 105	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   398: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   401: astore 13
    //   403: iconst_1
    //   404: anewarray 4	java/lang/Object
    //   407: astore 14
    //   409: aload 14
    //   411: iconst_0
    //   412: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   415: lload_2
    //   416: lsub
    //   417: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   420: aastore
    //   421: aload 13
    //   423: ldc 98
    //   425: aload 14
    //   427: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   430: aconst_null
    //   431: areturn
    //   432: aload 20
    //   434: invokeinterface 135 1 0
    //   439: astore 23
    //   441: aload 23
    //   443: invokeinterface 141 1 0
    //   448: ifeq +97 -> 545
    //   451: aload 23
    //   453: invokeinterface 145 1 0
    //   458: checkcast 147	java/lang/String
    //   461: invokestatic 153	java/net/HttpCookie:parse	(Ljava/lang/String;)Ljava/util/List;
    //   464: invokeinterface 135 1 0
    //   469: astore 26
    //   471: aload 26
    //   473: invokeinterface 141 1 0
    //   478: ifeq -37 -> 441
    //   481: aload 26
    //   483: invokeinterface 145 1 0
    //   488: checkcast 149	java/net/HttpCookie
    //   491: astore 27
    //   493: aload 27
    //   495: invokevirtual 156	java/net/HttpCookie:getName	()Ljava/lang/String;
    //   498: ldc 158
    //   500: invokevirtual 162	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   503: istore 28
    //   505: iload 28
    //   507: ifeq -36 -> 471
    //   510: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   513: astore 29
    //   515: iconst_1
    //   516: anewarray 4	java/lang/Object
    //   519: astore 30
    //   521: aload 30
    //   523: iconst_0
    //   524: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   527: lload_2
    //   528: lsub
    //   529: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   532: aastore
    //   533: aload 29
    //   535: ldc 98
    //   537: aload 30
    //   539: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   542: aload 27
    //   544: areturn
    //   545: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   548: ldc 164
    //   550: invokevirtual 129	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   553: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   556: astore 24
    //   558: iconst_1
    //   559: anewarray 4	java/lang/Object
    //   562: astore 25
    //   564: aload 25
    //   566: iconst_0
    //   567: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   570: lload_2
    //   571: lsub
    //   572: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   575: aastore
    //   576: aload 24
    //   578: ldc 98
    //   580: aload 25
    //   582: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   585: aconst_null
    //   586: areturn
    //   587: astore 5
    //   589: getstatic 16	com/nianticproject/ingress/common/u/c:a	Lcom/nianticproject/ingress/common/w/aa;
    //   592: astore 6
    //   594: iconst_1
    //   595: anewarray 4	java/lang/Object
    //   598: astore 7
    //   600: aload 7
    //   602: iconst_0
    //   603: invokestatic 31	java/lang/System:currentTimeMillis	()J
    //   606: lload_2
    //   607: lsub
    //   608: invokestatic 96	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   611: aastore
    //   612: aload 6
    //   614: ldc 98
    //   616: aload 7
    //   618: invokevirtual 100	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   621: aload 5
    //   623: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   4	50	147	java/net/URISyntaxException
    //   4	50	193	java/io/UnsupportedEncodingException
    //   50	69	239	java/io/IOException
    //   69	76	386	java/io/IOException
    //   84	113	386	java/io/IOException
    //   293	322	386	java/io/IOException
    //   4	50	587	finally
    //   50	69	587	finally
    //   69	76	587	finally
    //   84	113	587	finally
    //   149	159	587	finally
    //   195	205	587	finally
    //   241	251	587	finally
    //   293	322	587	finally
    //   322	339	587	finally
    //   344	352	587	finally
    //   388	398	587	finally
    //   432	441	587	finally
    //   441	471	587	finally
    //   471	505	587	finally
    //   545	553	587	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.c
 * JD-Core Version:    0.6.2
 */