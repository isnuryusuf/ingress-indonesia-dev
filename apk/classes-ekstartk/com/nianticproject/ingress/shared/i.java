package com.nianticproject.ingress.shared;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

public final class i
{
  static boolean a = false;
  private static final Logger b = Logger.getLogger(i.class.getSimpleName());

  // ERROR //
  public static Result<java.lang.Void, k> a(String paramString, java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 40	java/io/File:length	()J
    //   4: lstore_2
    //   5: lload_2
    //   6: lconst_0
    //   7: lcmp
    //   8: ifle +11 -> 19
    //   11: lload_2
    //   12: ldc2_w 41
    //   15: lcmp
    //   16: ifle +13 -> 29
    //   19: new 34	java/io/IOException
    //   22: dup
    //   23: ldc 44
    //   25: invokespecial 47	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   28: athrow
    //   29: new 49	java/net/URL
    //   32: dup
    //   33: aload_0
    //   34: invokespecial 50	java/net/URL:<init>	(Ljava/lang/String;)V
    //   37: astore 4
    //   39: new 52	com/nianticproject/ingress/shared/j
    //   42: dup
    //   43: iconst_0
    //   44: invokespecial 55	com/nianticproject/ingress/shared/j:<init>	(B)V
    //   47: astore 5
    //   49: iconst_1
    //   50: istore 6
    //   52: lconst_0
    //   53: lstore 7
    //   55: lconst_0
    //   56: lstore 9
    //   58: aload 5
    //   60: invokevirtual 57	com/nianticproject/ingress/shared/j:a	()V
    //   63: aconst_null
    //   64: astore 11
    //   66: aload 4
    //   68: invokevirtual 61	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   71: checkcast 63	java/net/HttpURLConnection
    //   74: astore 21
    //   76: aload 21
    //   78: ldc 65
    //   80: invokevirtual 68	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   83: aload 21
    //   85: iconst_1
    //   86: invokevirtual 72	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   89: aload 21
    //   91: ldc 73
    //   93: invokevirtual 77	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   96: aload 21
    //   98: ldc 73
    //   100: invokevirtual 80	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   103: aload 21
    //   105: ldc 82
    //   107: ldc 84
    //   109: invokevirtual 88	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   112: iload 6
    //   114: ifeq +381 -> 495
    //   117: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   120: new 90	java/lang/StringBuilder
    //   123: dup
    //   124: ldc 92
    //   126: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   129: aload_0
    //   130: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokevirtual 103	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   139: aload 21
    //   141: ldc 105
    //   143: new 90	java/lang/StringBuilder
    //   146: dup
    //   147: ldc 107
    //   149: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   152: lload_2
    //   153: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   156: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: invokevirtual 88	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload 21
    //   164: ldc 112
    //   166: ldc 114
    //   168: invokevirtual 88	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   171: aconst_null
    //   172: astore 24
    //   174: iload 6
    //   176: ifne +1589 -> 1765
    //   179: new 116	java/io/FileInputStream
    //   182: dup
    //   183: aload_1
    //   184: invokespecial 119	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   187: astore 61
    //   189: aload 61
    //   191: lload 7
    //   193: invokestatic 122	com/nianticproject/ingress/shared/i:a	(Ljava/io/FileInputStream;J)V
    //   196: sipush 10240
    //   199: newarray byte
    //   201: astore 63
    //   203: iconst_0
    //   204: istore 64
    //   206: aload 61
    //   208: aload 63
    //   210: invokevirtual 126	java/io/FileInputStream:read	([B)I
    //   213: istore 65
    //   215: iconst_0
    //   216: istore 66
    //   218: iload 65
    //   220: ifle +68 -> 288
    //   223: aload 24
    //   225: aload 63
    //   227: iconst_0
    //   228: iload 65
    //   230: invokevirtual 132	java/io/OutputStream:write	([BII)V
    //   233: iload 64
    //   235: iload 65
    //   237: iadd
    //   238: istore 64
    //   240: getstatic 26	com/nianticproject/ingress/shared/i:a	Z
    //   243: ifeq -37 -> 206
    //   246: iload 64
    //   248: ldc 133
    //   250: if_icmple -44 -> 206
    //   253: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   256: new 90	java/lang/StringBuilder
    //   259: dup
    //   260: ldc 135
    //   262: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   265: lload 7
    //   267: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   270: ldc 137
    //   272: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: lload_2
    //   276: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   279: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   282: invokevirtual 103	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   285: iconst_1
    //   286: istore 66
    //   288: iload 66
    //   290: ifne +470 -> 760
    //   293: aload 24
    //   295: invokevirtual 140	java/io/OutputStream:flush	()V
    //   298: aload 24
    //   300: invokevirtual 143	java/io/OutputStream:close	()V
    //   303: aload 61
    //   305: astore 26
    //   307: aconst_null
    //   308: astore 25
    //   310: aload 21
    //   312: invokevirtual 147	java/net/HttpURLConnection:getResponseCode	()I
    //   315: istore 33
    //   317: iload 33
    //   319: lookupswitch	default:+65->384, 200:+562->881, 308:+875->1194, 408:+1124->1443, 500:+1124->1443, 502:+1124->1443, 503:+1124->1443, 504:+1124->1443
    //   385: nop
    //   386: dload 187
    //   388: nop
    //   389: dup_x1
    //   390: dup
    //   391: ldc 149
    //   393: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   396: aload 21
    //   398: invokestatic 152	com/nianticproject/ingress/shared/i:a	(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   401: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   407: invokevirtual 155	java/util/logging/Logger:warning	(Ljava/lang/String;)V
    //   410: getstatic 160	com/nianticproject/ingress/shared/k:b	Lcom/nianticproject/ingress/shared/k;
    //   413: invokestatic 165	com/nianticproject/ingress/shared/Result:b	(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    //   416: astore 58
    //   418: aload 26
    //   420: ifnull +8 -> 428
    //   423: aload 26
    //   425: invokevirtual 166	java/io/FileInputStream:close	()V
    //   428: aload 25
    //   430: ifnull +8 -> 438
    //   433: aload 25
    //   435: invokevirtual 143	java/io/OutputStream:close	()V
    //   438: aload 21
    //   440: ifnull +8 -> 448
    //   443: aload 21
    //   445: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   448: aload 58
    //   450: astore 20
    //   452: aload 20
    //   454: areturn
    //   455: astore 73
    //   457: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   460: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   463: new 90	java/lang/StringBuilder
    //   466: dup
    //   467: ldc 177
    //   469: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   472: aload 73
    //   474: invokevirtual 178	java/net/MalformedURLException:toString	()Ljava/lang/String;
    //   477: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   483: aload 73
    //   485: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   488: getstatic 160	com/nianticproject/ingress/shared/k:b	Lcom/nianticproject/ingress/shared/k;
    //   491: invokestatic 165	com/nianticproject/ingress/shared/Result:b	(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    //   494: areturn
    //   495: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   498: new 90	java/lang/StringBuilder
    //   501: dup
    //   502: ldc 184
    //   504: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   507: lload 7
    //   509: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   512: ldc 137
    //   514: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: lload_2
    //   518: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   521: ldc 186
    //   523: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   526: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   529: invokevirtual 103	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   532: aload 21
    //   534: iconst_1
    //   535: invokevirtual 189	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   538: aload 21
    //   540: lload 9
    //   542: l2i
    //   543: invokevirtual 192	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   546: aload 21
    //   548: ldc 112
    //   550: new 90	java/lang/StringBuilder
    //   553: dup
    //   554: invokespecial 193	java/lang/StringBuilder:<init>	()V
    //   557: lload 9
    //   559: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   562: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   565: invokevirtual 88	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   568: lload 7
    //   570: lconst_0
    //   571: lcmp
    //   572: ifle +51 -> 623
    //   575: lload_2
    //   576: lconst_1
    //   577: lsub
    //   578: lstore 71
    //   580: aload 21
    //   582: ldc 105
    //   584: new 90	java/lang/StringBuilder
    //   587: dup
    //   588: ldc 195
    //   590: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   593: lload 7
    //   595: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   598: ldc 197
    //   600: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   603: lload 71
    //   605: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   608: ldc 137
    //   610: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   613: lload_2
    //   614: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   617: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   620: invokevirtual 88	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   623: aload 21
    //   625: invokevirtual 201	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   628: astore 70
    //   630: aload 70
    //   632: astore 24
    //   634: goto -460 -> 174
    //   637: astore 17
    //   639: aconst_null
    //   640: astore 18
    //   642: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   645: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   648: new 90	java/lang/StringBuilder
    //   651: dup
    //   652: ldc 206
    //   654: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   657: aload 17
    //   659: invokevirtual 207	java/io/IOException:toString	()Ljava/lang/String;
    //   662: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   665: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   668: aload 17
    //   670: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   673: getstatic 209	com/nianticproject/ingress/shared/k:a	Lcom/nianticproject/ingress/shared/k;
    //   676: invokestatic 165	com/nianticproject/ingress/shared/Result:b	(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    //   679: astore 19
    //   681: aload 19
    //   683: astore 20
    //   685: aload 18
    //   687: ifnull -235 -> 452
    //   690: aload 18
    //   692: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   695: aload 20
    //   697: areturn
    //   698: astore 68
    //   700: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   703: new 90	java/lang/StringBuilder
    //   706: dup
    //   707: ldc 211
    //   709: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   712: aload 68
    //   714: invokevirtual 207	java/io/IOException:toString	()Ljava/lang/String;
    //   717: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   720: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   723: invokevirtual 155	java/util/logging/Logger:warning	(Ljava/lang/String;)V
    //   726: iconst_1
    //   727: istore 66
    //   729: goto -441 -> 288
    //   732: astore 67
    //   734: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   737: new 90	java/lang/StringBuilder
    //   740: dup
    //   741: ldc 213
    //   743: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   746: aload 67
    //   748: invokevirtual 207	java/io/IOException:toString	()Ljava/lang/String;
    //   751: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   757: invokevirtual 155	java/util/logging/Logger:warning	(Ljava/lang/String;)V
    //   760: aload 61
    //   762: astore 26
    //   764: aload 24
    //   766: astore 25
    //   768: goto -458 -> 310
    //   771: astore 29
    //   773: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   776: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   779: new 90	java/lang/StringBuilder
    //   782: dup
    //   783: ldc 211
    //   785: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   788: aload 29
    //   790: invokevirtual 207	java/io/IOException:toString	()Ljava/lang/String;
    //   793: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   796: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   799: aload 29
    //   801: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   804: getstatic 209	com/nianticproject/ingress/shared/k:a	Lcom/nianticproject/ingress/shared/k;
    //   807: invokestatic 165	com/nianticproject/ingress/shared/Result:b	(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    //   810: astore 30
    //   812: aload 26
    //   814: ifnull +8 -> 822
    //   817: aload 26
    //   819: invokevirtual 166	java/io/FileInputStream:close	()V
    //   822: aload 25
    //   824: ifnull +8 -> 832
    //   827: aload 25
    //   829: invokevirtual 143	java/io/OutputStream:close	()V
    //   832: aload 21
    //   834: ifnull +8 -> 842
    //   837: aload 21
    //   839: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   842: aload 30
    //   844: areturn
    //   845: astore 32
    //   847: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   850: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   853: ldc 215
    //   855: aload 32
    //   857: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   860: goto -38 -> 822
    //   863: astore 31
    //   865: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   868: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   871: ldc 217
    //   873: aload 31
    //   875: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   878: goto -46 -> 832
    //   881: aload 21
    //   883: ldc 219
    //   885: invokevirtual 223	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   888: astore 46
    //   890: aload 46
    //   892: ifnonnull +75 -> 967
    //   895: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   898: ldc 225
    //   900: invokevirtual 228	java/util/logging/Logger:severe	(Ljava/lang/String;)V
    //   903: ldc 230
    //   905: astore 47
    //   907: aload_1
    //   908: invokestatic 235	com/google/a/e/ab:a	()Lcom/google/a/e/z;
    //   911: invokestatic 240	com/google/a/f/j:a	(Ljava/io/File;Lcom/google/a/e/z;)Lcom/google/a/e/u;
    //   914: invokevirtual 243	com/google/a/e/u:toString	()Ljava/lang/String;
    //   917: astore 48
    //   919: aload 48
    //   921: aload 47
    //   923: invokevirtual 249	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   926: ifeq +156 -> 1082
    //   929: invokestatic 252	com/nianticproject/ingress/shared/Result:a	()Lcom/nianticproject/ingress/shared/Result;
    //   932: astore 52
    //   934: aload 26
    //   936: ifnull +8 -> 944
    //   939: aload 26
    //   941: invokevirtual 166	java/io/FileInputStream:close	()V
    //   944: aload 25
    //   946: ifnull +8 -> 954
    //   949: aload 25
    //   951: invokevirtual 143	java/io/OutputStream:close	()V
    //   954: aload 21
    //   956: ifnull +8 -> 964
    //   959: aload 21
    //   961: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   964: aload 52
    //   966: areturn
    //   967: aload 46
    //   969: bipush 34
    //   971: invokevirtual 256	java/lang/String:indexOf	(I)I
    //   974: istore 55
    //   976: aload 46
    //   978: bipush 34
    //   980: invokevirtual 259	java/lang/String:lastIndexOf	(I)I
    //   983: istore 56
    //   985: iload 55
    //   987: iflt +8 -> 995
    //   990: iload 56
    //   992: ifge +34 -> 1026
    //   995: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   998: new 90	java/lang/StringBuilder
    //   1001: dup
    //   1002: ldc_w 261
    //   1005: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1008: aload 46
    //   1010: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1013: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1016: invokevirtual 228	java/util/logging/Logger:severe	(Ljava/lang/String;)V
    //   1019: ldc 230
    //   1021: astore 47
    //   1023: goto -116 -> 907
    //   1026: aload 46
    //   1028: iload 55
    //   1030: iconst_1
    //   1031: iadd
    //   1032: iload 56
    //   1034: invokevirtual 265	java/lang/String:substring	(II)Ljava/lang/String;
    //   1037: astore 57
    //   1039: aload 57
    //   1041: astore 47
    //   1043: goto -136 -> 907
    //   1046: astore 54
    //   1048: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1051: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   1054: ldc 215
    //   1056: aload 54
    //   1058: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1061: goto -117 -> 944
    //   1064: astore 53
    //   1066: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1069: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1072: ldc 217
    //   1074: aload 53
    //   1076: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1079: goto -125 -> 954
    //   1082: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1085: new 90	java/lang/StringBuilder
    //   1088: dup
    //   1089: ldc_w 267
    //   1092: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1095: aload 48
    //   1097: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1100: ldc_w 269
    //   1103: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1106: aload 47
    //   1108: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1111: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1114: invokevirtual 228	java/util/logging/Logger:severe	(Ljava/lang/String;)V
    //   1117: getstatic 272	com/nianticproject/ingress/shared/k:c	Lcom/nianticproject/ingress/shared/k;
    //   1120: invokestatic 165	com/nianticproject/ingress/shared/Result:b	(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    //   1123: astore 49
    //   1125: aload 26
    //   1127: ifnull +8 -> 1135
    //   1130: aload 26
    //   1132: invokevirtual 166	java/io/FileInputStream:close	()V
    //   1135: aload 25
    //   1137: ifnull +8 -> 1145
    //   1140: aload 25
    //   1142: invokevirtual 143	java/io/OutputStream:close	()V
    //   1145: aload 21
    //   1147: ifnull +8 -> 1155
    //   1150: aload 21
    //   1152: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   1155: aload 49
    //   1157: areturn
    //   1158: astore 51
    //   1160: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1163: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   1166: ldc 215
    //   1168: aload 51
    //   1170: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1173: goto -38 -> 1135
    //   1176: astore 50
    //   1178: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1181: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1184: ldc 217
    //   1186: aload 50
    //   1188: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1191: goto -46 -> 1145
    //   1194: aload 21
    //   1196: ldc_w 274
    //   1199: invokevirtual 223	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   1202: astore 36
    //   1204: aload 36
    //   1206: ifnonnull +56 -> 1262
    //   1209: lconst_0
    //   1210: lstore 7
    //   1212: aload 5
    //   1214: invokevirtual 276	com/nianticproject/ingress/shared/j:b	()V
    //   1217: lload_2
    //   1218: lload 7
    //   1220: lsub
    //   1221: lstore 9
    //   1223: aload 26
    //   1225: ifnull +8 -> 1233
    //   1228: aload 26
    //   1230: invokevirtual 166	java/io/FileInputStream:close	()V
    //   1233: aload 25
    //   1235: ifnull +8 -> 1243
    //   1238: aload 25
    //   1240: invokevirtual 143	java/io/OutputStream:close	()V
    //   1243: iconst_0
    //   1244: istore 6
    //   1246: aload 21
    //   1248: ifnull -1190 -> 58
    //   1251: aload 21
    //   1253: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   1256: iconst_0
    //   1257: istore 6
    //   1259: goto -1201 -> 58
    //   1262: aload 36
    //   1264: bipush 45
    //   1266: invokevirtual 256	java/lang/String:indexOf	(I)I
    //   1269: istore 37
    //   1271: iload 37
    //   1273: ifge +107 -> 1380
    //   1276: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1279: new 90	java/lang/StringBuilder
    //   1282: dup
    //   1283: ldc_w 278
    //   1286: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1289: aload 21
    //   1291: invokestatic 152	com/nianticproject/ingress/shared/i:a	(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   1294: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1297: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1300: invokevirtual 228	java/util/logging/Logger:severe	(Ljava/lang/String;)V
    //   1303: getstatic 209	com/nianticproject/ingress/shared/k:a	Lcom/nianticproject/ingress/shared/k;
    //   1306: invokestatic 165	com/nianticproject/ingress/shared/Result:b	(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    //   1309: astore 38
    //   1311: aload 26
    //   1313: ifnull +8 -> 1321
    //   1316: aload 26
    //   1318: invokevirtual 166	java/io/FileInputStream:close	()V
    //   1321: aload 25
    //   1323: ifnull +8 -> 1331
    //   1326: aload 25
    //   1328: invokevirtual 143	java/io/OutputStream:close	()V
    //   1331: aload 21
    //   1333: ifnull +8 -> 1341
    //   1336: aload 21
    //   1338: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   1341: aload 38
    //   1343: areturn
    //   1344: astore 40
    //   1346: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1349: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   1352: ldc 215
    //   1354: aload 40
    //   1356: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1359: goto -38 -> 1321
    //   1362: astore 39
    //   1364: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1367: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1370: ldc 217
    //   1372: aload 39
    //   1374: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1377: goto -46 -> 1331
    //   1380: iload 37
    //   1382: iconst_1
    //   1383: iadd
    //   1384: istore 41
    //   1386: aload 36
    //   1388: iload 41
    //   1390: invokevirtual 281	java/lang/String:substring	(I)Ljava/lang/String;
    //   1393: invokestatic 287	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   1396: lstore 42
    //   1398: lconst_1
    //   1399: lload 42
    //   1401: ladd
    //   1402: lstore 7
    //   1404: goto -192 -> 1212
    //   1407: astore 45
    //   1409: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1412: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   1415: ldc 215
    //   1417: aload 45
    //   1419: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1422: goto -189 -> 1233
    //   1425: astore 44
    //   1427: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1430: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1433: ldc 217
    //   1435: aload 44
    //   1437: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1440: goto -197 -> 1243
    //   1443: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1446: new 90	java/lang/StringBuilder
    //   1449: dup
    //   1450: ldc_w 289
    //   1453: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1456: aload 21
    //   1458: invokestatic 152	com/nianticproject/ingress/shared/i:a	(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    //   1461: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1464: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1467: invokevirtual 103	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   1470: aload 26
    //   1472: ifnull +8 -> 1480
    //   1475: aload 26
    //   1477: invokevirtual 166	java/io/FileInputStream:close	()V
    //   1480: aload 25
    //   1482: ifnull +8 -> 1490
    //   1485: aload 25
    //   1487: invokevirtual 143	java/io/OutputStream:close	()V
    //   1490: aload 21
    //   1492: ifnull -1434 -> 58
    //   1495: aload 21
    //   1497: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   1500: goto -1442 -> 58
    //   1503: astore 35
    //   1505: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1508: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   1511: ldc 215
    //   1513: aload 35
    //   1515: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1518: goto -38 -> 1480
    //   1521: astore 34
    //   1523: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1526: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1529: ldc 217
    //   1531: aload 34
    //   1533: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1536: goto -46 -> 1490
    //   1539: astore 60
    //   1541: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1544: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   1547: ldc 215
    //   1549: aload 60
    //   1551: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1554: goto -1126 -> 428
    //   1557: astore 59
    //   1559: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1562: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1565: ldc 217
    //   1567: aload 59
    //   1569: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1572: goto -1134 -> 438
    //   1575: astore 12
    //   1577: aconst_null
    //   1578: astore 13
    //   1580: aconst_null
    //   1581: astore 14
    //   1583: aload 13
    //   1585: ifnull +8 -> 1593
    //   1588: aload 13
    //   1590: invokevirtual 166	java/io/FileInputStream:close	()V
    //   1593: aload 14
    //   1595: ifnull +8 -> 1603
    //   1598: aload 14
    //   1600: invokevirtual 143	java/io/OutputStream:close	()V
    //   1603: aload 11
    //   1605: ifnull +8 -> 1613
    //   1608: aload 11
    //   1610: invokevirtual 169	java/net/HttpURLConnection:disconnect	()V
    //   1613: aload 12
    //   1615: athrow
    //   1616: astore 16
    //   1618: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1621: getstatic 175	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   1624: ldc 215
    //   1626: aload 16
    //   1628: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1631: goto -38 -> 1593
    //   1634: astore 15
    //   1636: getstatic 24	com/nianticproject/ingress/shared/i:b	Ljava/util/logging/Logger;
    //   1639: getstatic 204	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   1642: ldc 217
    //   1644: aload 15
    //   1646: invokevirtual 182	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1649: goto -46 -> 1603
    //   1652: astore 23
    //   1654: aload 21
    //   1656: astore 11
    //   1658: aload 23
    //   1660: astore 12
    //   1662: aconst_null
    //   1663: astore 13
    //   1665: aconst_null
    //   1666: astore 14
    //   1668: goto -85 -> 1583
    //   1671: astore 12
    //   1673: aload 18
    //   1675: astore 11
    //   1677: aconst_null
    //   1678: astore 13
    //   1680: aconst_null
    //   1681: astore 14
    //   1683: goto -100 -> 1583
    //   1686: astore 69
    //   1688: aload 24
    //   1690: astore 14
    //   1692: aload 21
    //   1694: astore 11
    //   1696: aload 69
    //   1698: astore 12
    //   1700: aconst_null
    //   1701: astore 13
    //   1703: goto -120 -> 1583
    //   1706: astore 62
    //   1708: aload 24
    //   1710: astore 14
    //   1712: aload 21
    //   1714: astore 11
    //   1716: aload 62
    //   1718: astore 12
    //   1720: aload 61
    //   1722: astore 13
    //   1724: goto -141 -> 1583
    //   1727: astore 27
    //   1729: aload 25
    //   1731: astore 14
    //   1733: aload 26
    //   1735: astore 28
    //   1737: aload 21
    //   1739: astore 11
    //   1741: aload 27
    //   1743: astore 12
    //   1745: aload 28
    //   1747: astore 13
    //   1749: goto -166 -> 1583
    //   1752: astore 22
    //   1754: aload 21
    //   1756: astore 18
    //   1758: aload 22
    //   1760: astore 17
    //   1762: goto -1120 -> 642
    //   1765: aload 24
    //   1767: astore 25
    //   1769: aconst_null
    //   1770: astore 26
    //   1772: goto -1462 -> 310
    //
    // Exception table:
    //   from	to	target	type
    //   29	39	455	java/net/MalformedURLException
    //   66	76	637	java/io/IOException
    //   223	233	698	java/io/IOException
    //   293	303	732	java/io/IOException
    //   310	317	771	java/io/IOException
    //   817	822	845	java/io/IOException
    //   827	832	863	java/io/IOException
    //   939	944	1046	java/io/IOException
    //   949	954	1064	java/io/IOException
    //   1130	1135	1158	java/io/IOException
    //   1140	1145	1176	java/io/IOException
    //   1316	1321	1344	java/io/IOException
    //   1326	1331	1362	java/io/IOException
    //   1228	1233	1407	java/io/IOException
    //   1238	1243	1425	java/io/IOException
    //   1475	1480	1503	java/io/IOException
    //   1485	1490	1521	java/io/IOException
    //   423	428	1539	java/io/IOException
    //   433	438	1557	java/io/IOException
    //   66	76	1575	finally
    //   1588	1593	1616	java/io/IOException
    //   1598	1603	1634	java/io/IOException
    //   76	112	1652	finally
    //   117	171	1652	finally
    //   495	568	1652	finally
    //   580	623	1652	finally
    //   623	630	1652	finally
    //   642	681	1671	finally
    //   179	189	1686	finally
    //   189	203	1706	finally
    //   206	215	1706	finally
    //   223	233	1706	finally
    //   240	246	1706	finally
    //   253	285	1706	finally
    //   293	303	1706	finally
    //   700	726	1706	finally
    //   734	760	1706	finally
    //   310	317	1727	finally
    //   384	418	1727	finally
    //   773	812	1727	finally
    //   881	890	1727	finally
    //   895	903	1727	finally
    //   907	934	1727	finally
    //   967	985	1727	finally
    //   995	1019	1727	finally
    //   1026	1039	1727	finally
    //   1082	1125	1727	finally
    //   1194	1204	1727	finally
    //   1212	1217	1727	finally
    //   1262	1271	1727	finally
    //   1276	1311	1727	finally
    //   1386	1398	1727	finally
    //   1443	1470	1727	finally
    //   76	112	1752	java/io/IOException
    //   117	171	1752	java/io/IOException
    //   495	568	1752	java/io/IOException
    //   580	623	1752	java/io/IOException
    //   623	630	1752	java/io/IOException
  }

  private static String a(HttpURLConnection paramHttpURLConnection)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Map localMap = paramHttpURLConnection.getHeaderFields();
    Iterator localIterator1 = localMap.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      Iterator localIterator2 = ((List)localMap.get(str1)).iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        localStringBuilder.append(str1).append(": ").append(str2).append("\n");
      }
    }
    return localStringBuilder.toString();
  }

  private static void a(FileInputStream paramFileInputStream, long paramLong)
  {
    long l1 = 0L;
    if (paramLong == l1)
      return;
    long l2;
    do
    {
      Object localObject;
      l1 = localObject;
      l2 = l1 + paramFileInputStream.skip(paramLong - l1);
      if (l2 == l1)
        throw new IOException("Error seeking file.");
    }
    while (l2 < paramLong);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.i
 * JD-Core Version:    0.6.2
 */