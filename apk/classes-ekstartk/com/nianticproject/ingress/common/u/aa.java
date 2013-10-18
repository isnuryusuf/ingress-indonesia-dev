package com.nianticproject.ingress.common.u;

import com.google.a.a.an;
import com.nianticproject.ingress.common.o.c;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ah;
import java.io.IOException;
import java.util.List;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.io.SegmentedStringWriter;
import org.codehaus.jackson.type.TypeReference;

public final class aa<R, E>
  implements ah<RpcResult<R, E>>
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(aa.class);
  private static final JsonFactory b = c.b;
  private final TypeReference<R> c;
  private final Class<R> d;
  private final Class<E> e;

  private aa(Class<R> paramClass, Class<E> paramClass1)
  {
    this.c = null;
    this.d = paramClass;
    this.e = paramClass1;
  }

  private aa(TypeReference<R> paramTypeReference, Class<E> paramClass)
  {
    this.c = ((TypeReference)an.a(paramTypeReference, "resultType"));
    this.d = null;
    this.e = paramClass;
  }

  public static <R, E> aa<R, E> a(Class<R> paramClass, Class<E> paramClass1)
  {
    return new aa(paramClass, paramClass1);
  }

  public static <R, E> aa<R, E> a(TypeReference<R> paramTypeReference, Class<E> paramClass)
  {
    return new aa(paramTypeReference, paramClass);
  }

  // ERROR //
  private RpcResult<R, E> b(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 66
    //   4: invokestatic 71	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   7: invokestatic 77	java/lang/System:currentTimeMillis	()J
    //   10: pop2
    //   11: getstatic 34	com/nianticproject/ingress/common/u/aa:b	Lorg/codehaus/jackson/JsonFactory;
    //   14: aload_1
    //   15: invokevirtual 83	org/codehaus/jackson/JsonFactory:createJsonParser	(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;
    //   18: astore 11
    //   20: aload 11
    //   22: astore 7
    //   24: aload 7
    //   26: invokevirtual 89	org/codehaus/jackson/JsonParser:nextToken	()Lorg/codehaus/jackson/JsonToken;
    //   29: getstatic 95	org/codehaus/jackson/JsonToken:START_OBJECT	Lorg/codehaus/jackson/JsonToken;
    //   32: if_acmpeq +64 -> 96
    //   35: new 97	com/nianticproject/ingress/shared/rpc/y
    //   38: dup
    //   39: new 99	java/lang/StringBuilder
    //   42: dup
    //   43: ldc 101
    //   45: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload 7
    //   50: invokevirtual 106	org/codehaus/jackson/JsonParser:getCurrentToken	()Lorg/codehaus/jackson/JsonToken;
    //   53: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokespecial 115	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/String;)V
    //   62: athrow
    //   63: astore 6
    //   65: new 97	com/nianticproject/ingress/shared/rpc/y
    //   68: dup
    //   69: aload 6
    //   71: invokespecial 118	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/Exception;)V
    //   74: athrow
    //   75: astore 8
    //   77: aload 7
    //   79: ifnull +8 -> 87
    //   82: aload 7
    //   84: invokevirtual 121	org/codehaus/jackson/JsonParser:close	()V
    //   87: aload 8
    //   89: athrow
    //   90: astore_3
    //   91: invokestatic 123	com/nianticproject/ingress/shared/aj:b	()V
    //   94: aload_3
    //   95: athrow
    //   96: aload 7
    //   98: invokevirtual 89	org/codehaus/jackson/JsonParser:nextToken	()Lorg/codehaus/jackson/JsonToken;
    //   101: astore 12
    //   103: aconst_null
    //   104: astore 13
    //   106: aconst_null
    //   107: astore 14
    //   109: aconst_null
    //   110: astore 15
    //   112: aload 12
    //   114: getstatic 126	org/codehaus/jackson/JsonToken:FIELD_NAME	Lorg/codehaus/jackson/JsonToken;
    //   117: if_acmpne +243 -> 360
    //   120: aload 7
    //   122: invokevirtual 129	org/codehaus/jackson/JsonParser:getCurrentName	()Ljava/lang/String;
    //   125: astore 22
    //   127: ldc 131
    //   129: aload 22
    //   131: invokestatic 134	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   134: aload 7
    //   136: invokevirtual 89	org/codehaus/jackson/JsonParser:nextToken	()Lorg/codehaus/jackson/JsonToken;
    //   139: pop
    //   140: aload 22
    //   142: ldc 136
    //   144: invokevirtual 142	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   147: ifeq +97 -> 244
    //   150: aload_0
    //   151: getfield 39	com/nianticproject/ingress/common/u/aa:c	Lorg/codehaus/jackson/type/TypeReference;
    //   154: ifnull +39 -> 193
    //   157: aload 7
    //   159: aload_0
    //   160: getfield 39	com/nianticproject/ingress/common/u/aa:c	Lorg/codehaus/jackson/type/TypeReference;
    //   163: invokevirtual 146	org/codehaus/jackson/JsonParser:readValueAs	(Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    //   166: astore 28
    //   168: aload 28
    //   170: astore 27
    //   172: aload 27
    //   174: astore 15
    //   176: invokestatic 123	com/nianticproject/ingress/shared/aj:b	()V
    //   179: aload 7
    //   181: invokevirtual 89	org/codehaus/jackson/JsonParser:nextToken	()Lorg/codehaus/jackson/JsonToken;
    //   184: astore 25
    //   186: aload 25
    //   188: astore 12
    //   190: goto -78 -> 112
    //   193: aload_0
    //   194: getfield 41	com/nianticproject/ingress/common/u/aa:d	Ljava/lang/Class;
    //   197: ifnull +17 -> 214
    //   200: aload 7
    //   202: aload_0
    //   203: getfield 41	com/nianticproject/ingress/common/u/aa:d	Ljava/lang/Class;
    //   206: invokevirtual 149	org/codehaus/jackson/JsonParser:readValueAs	(Ljava/lang/Class;)Ljava/lang/Object;
    //   209: astore 27
    //   211: goto -39 -> 172
    //   214: new 97	com/nianticproject/ingress/shared/rpc/y
    //   217: dup
    //   218: ldc 151
    //   220: invokespecial 115	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/String;)V
    //   223: athrow
    //   224: astore 23
    //   226: invokestatic 123	com/nianticproject/ingress/shared/aj:b	()V
    //   229: aload 23
    //   231: athrow
    //   232: astore 10
    //   234: new 97	com/nianticproject/ingress/shared/rpc/y
    //   237: dup
    //   238: aload 10
    //   240: invokespecial 118	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/Exception;)V
    //   243: athrow
    //   244: aload 22
    //   246: ldc 153
    //   248: invokevirtual 142	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   251: ifeq +46 -> 297
    //   254: aload_0
    //   255: getfield 43	com/nianticproject/ingress/common/u/aa:e	Ljava/lang/Class;
    //   258: ifnull +29 -> 287
    //   261: aload_0
    //   262: getfield 43	com/nianticproject/ingress/common/u/aa:e	Ljava/lang/Class;
    //   265: ldc 155
    //   267: invokevirtual 156	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   270: ifne +17 -> 287
    //   273: aload 7
    //   275: aload_0
    //   276: getfield 43	com/nianticproject/ingress/common/u/aa:e	Ljava/lang/Class;
    //   279: invokevirtual 149	org/codehaus/jackson/JsonParser:readValueAs	(Ljava/lang/Class;)Ljava/lang/Object;
    //   282: astore 14
    //   284: goto -108 -> 176
    //   287: new 97	com/nianticproject/ingress/shared/rpc/y
    //   290: dup
    //   291: ldc 158
    //   293: invokespecial 115	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/String;)V
    //   296: athrow
    //   297: aload 22
    //   299: ldc 160
    //   301: invokevirtual 142	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   304: ifne +13 -> 317
    //   307: aload 22
    //   309: ldc 162
    //   311: invokevirtual 142	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   314: ifeq +18 -> 332
    //   317: aload 7
    //   319: ldc 164
    //   321: invokevirtual 149	org/codehaus/jackson/JsonParser:readValueAs	(Ljava/lang/Class;)Ljava/lang/Object;
    //   324: checkcast 164	com/nianticproject/ingress/shared/rpc/GameBasket
    //   327: astore 13
    //   329: goto -153 -> 176
    //   332: aload 22
    //   334: ldc 166
    //   336: invokevirtual 142	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   339: ifeq -163 -> 176
    //   342: aload 7
    //   344: ldc 138
    //   346: invokevirtual 149	org/codehaus/jackson/JsonParser:readValueAs	(Ljava/lang/Class;)Ljava/lang/Object;
    //   349: checkcast 138	java/lang/String
    //   352: astore 26
    //   354: aload 26
    //   356: astore_2
    //   357: goto -181 -> 176
    //   360: aload 7
    //   362: invokevirtual 106	org/codehaus/jackson/JsonParser:getCurrentToken	()Lorg/codehaus/jackson/JsonToken;
    //   365: getstatic 169	org/codehaus/jackson/JsonToken:END_OBJECT	Lorg/codehaus/jackson/JsonToken;
    //   368: if_acmpeq +55 -> 423
    //   371: aload 7
    //   373: invokevirtual 89	org/codehaus/jackson/JsonParser:nextToken	()Lorg/codehaus/jackson/JsonToken;
    //   376: getstatic 169	org/codehaus/jackson/JsonToken:END_OBJECT	Lorg/codehaus/jackson/JsonToken;
    //   379: if_acmpeq +44 -> 423
    //   382: new 97	com/nianticproject/ingress/shared/rpc/y
    //   385: dup
    //   386: new 99	java/lang/StringBuilder
    //   389: dup
    //   390: ldc 171
    //   392: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   395: aload 7
    //   397: invokevirtual 106	org/codehaus/jackson/JsonParser:getCurrentToken	()Lorg/codehaus/jackson/JsonToken;
    //   400: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   403: ldc 173
    //   405: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   408: aload 7
    //   410: invokevirtual 179	org/codehaus/jackson/JsonParser:getText	()Ljava/lang/String;
    //   413: invokevirtual 176	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: invokespecial 115	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/String;)V
    //   422: athrow
    //   423: aload 14
    //   425: ifnonnull +60 -> 485
    //   428: aload_2
    //   429: ifnonnull +56 -> 485
    //   432: aload 15
    //   434: aload 13
    //   436: invokestatic 184	com/nianticproject/ingress/shared/rpc/RpcResult:a	(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    //   439: astore 20
    //   441: aload 7
    //   443: ifnull +8 -> 451
    //   446: aload 7
    //   448: invokevirtual 121	org/codehaus/jackson/JsonParser:close	()V
    //   451: invokestatic 123	com/nianticproject/ingress/shared/aj:b	()V
    //   454: aload 20
    //   456: areturn
    //   457: astore 21
    //   459: getstatic 29	com/nianticproject/ingress/common/u/aa:a	Lcom/nianticproject/ingress/common/w/aa;
    //   462: new 99	java/lang/StringBuilder
    //   465: dup
    //   466: ldc 186
    //   468: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   471: aload 21
    //   473: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   476: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   479: invokevirtual 188	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   482: goto -31 -> 451
    //   485: aload 15
    //   487: ifnonnull +12 -> 499
    //   490: aload 14
    //   492: ifnull +17 -> 509
    //   495: aload_2
    //   496: ifnull +13 -> 509
    //   499: new 97	com/nianticproject/ingress/shared/rpc/y
    //   502: dup
    //   503: ldc 190
    //   505: invokespecial 115	com/nianticproject/ingress/shared/rpc/y:<init>	(Ljava/lang/String;)V
    //   508: athrow
    //   509: aload_2
    //   510: ifnull +55 -> 565
    //   513: aload_2
    //   514: aload 13
    //   516: invokestatic 193	com/nianticproject/ingress/shared/rpc/RpcResult:a	(Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    //   519: astore 16
    //   521: aload 7
    //   523: ifnull +8 -> 531
    //   526: aload 7
    //   528: invokevirtual 121	org/codehaus/jackson/JsonParser:close	()V
    //   531: invokestatic 123	com/nianticproject/ingress/shared/aj:b	()V
    //   534: aload 16
    //   536: areturn
    //   537: astore 17
    //   539: getstatic 29	com/nianticproject/ingress/common/u/aa:a	Lcom/nianticproject/ingress/common/w/aa;
    //   542: new 99	java/lang/StringBuilder
    //   545: dup
    //   546: ldc 186
    //   548: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   551: aload 17
    //   553: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   556: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   559: invokevirtual 188	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   562: goto -31 -> 531
    //   565: aload 14
    //   567: aload 13
    //   569: invokestatic 195	com/nianticproject/ingress/shared/rpc/RpcResult:b	(Ljava/lang/Object;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;
    //   572: astore 18
    //   574: aload 7
    //   576: ifnull +8 -> 584
    //   579: aload 7
    //   581: invokevirtual 121	org/codehaus/jackson/JsonParser:close	()V
    //   584: invokestatic 123	com/nianticproject/ingress/shared/aj:b	()V
    //   587: aload 18
    //   589: areturn
    //   590: astore 19
    //   592: getstatic 29	com/nianticproject/ingress/common/u/aa:a	Lcom/nianticproject/ingress/common/w/aa;
    //   595: new 99	java/lang/StringBuilder
    //   598: dup
    //   599: ldc 186
    //   601: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   604: aload 19
    //   606: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   609: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   612: invokevirtual 188	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   615: goto -31 -> 584
    //   618: astore 9
    //   620: getstatic 29	com/nianticproject/ingress/common/u/aa:a	Lcom/nianticproject/ingress/common/w/aa;
    //   623: new 99	java/lang/StringBuilder
    //   626: dup
    //   627: ldc 186
    //   629: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   632: aload 9
    //   634: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   637: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   640: invokevirtual 188	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   643: goto -556 -> 87
    //   646: astore 8
    //   648: aconst_null
    //   649: astore 7
    //   651: goto -574 -> 77
    //   654: astore 10
    //   656: aconst_null
    //   657: astore 7
    //   659: goto -425 -> 234
    //   662: astore 6
    //   664: aconst_null
    //   665: astore 7
    //   667: goto -602 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   24	63	63	org/codehaus/jackson/JsonProcessingException
    //   96	103	63	org/codehaus/jackson/JsonProcessingException
    //   112	127	63	org/codehaus/jackson/JsonProcessingException
    //   176	186	63	org/codehaus/jackson/JsonProcessingException
    //   226	232	63	org/codehaus/jackson/JsonProcessingException
    //   360	423	63	org/codehaus/jackson/JsonProcessingException
    //   432	441	63	org/codehaus/jackson/JsonProcessingException
    //   499	509	63	org/codehaus/jackson/JsonProcessingException
    //   513	521	63	org/codehaus/jackson/JsonProcessingException
    //   565	574	63	org/codehaus/jackson/JsonProcessingException
    //   24	63	75	finally
    //   65	75	75	finally
    //   96	103	75	finally
    //   112	127	75	finally
    //   176	186	75	finally
    //   226	232	75	finally
    //   234	244	75	finally
    //   360	423	75	finally
    //   432	441	75	finally
    //   499	509	75	finally
    //   513	521	75	finally
    //   565	574	75	finally
    //   2	11	90	finally
    //   82	87	90	finally
    //   87	90	90	finally
    //   446	451	90	finally
    //   459	482	90	finally
    //   526	531	90	finally
    //   539	562	90	finally
    //   579	584	90	finally
    //   592	615	90	finally
    //   620	643	90	finally
    //   127	168	224	finally
    //   193	211	224	finally
    //   214	224	224	finally
    //   244	284	224	finally
    //   287	297	224	finally
    //   297	317	224	finally
    //   317	329	224	finally
    //   332	354	224	finally
    //   24	63	232	java/io/IOException
    //   96	103	232	java/io/IOException
    //   112	127	232	java/io/IOException
    //   176	186	232	java/io/IOException
    //   226	232	232	java/io/IOException
    //   360	423	232	java/io/IOException
    //   432	441	232	java/io/IOException
    //   499	509	232	java/io/IOException
    //   513	521	232	java/io/IOException
    //   565	574	232	java/io/IOException
    //   446	451	457	java/io/IOException
    //   526	531	537	java/io/IOException
    //   579	584	590	java/io/IOException
    //   82	87	618	java/io/IOException
    //   11	20	646	finally
    //   11	20	654	java/io/IOException
    //   11	20	662	org/codehaus/jackson/JsonProcessingException
  }

  private static String b(Object paramObject)
  {
    SegmentedStringWriter localSegmentedStringWriter = new SegmentedStringWriter(b._getBufferRecycler());
    try
    {
      JsonGenerator localJsonGenerator = b.createJsonGenerator(localSegmentedStringWriter);
      localJsonGenerator.writeStartObject();
      localJsonGenerator.writeObjectField("params", paramObject);
      localJsonGenerator.writeEndObject();
      localJsonGenerator.close();
      return localSegmentedStringWriter.getAndClear();
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public final String a(Object paramObject)
  {
    try
    {
      aj.a("JacksonSerializer.constructPayloadFromNamedParams");
      String str = b(paramObject);
      return str;
    }
    finally
    {
      aj.b();
    }
  }

  public final String a(List<?> paramList)
  {
    try
    {
      aj.a("JacksonSerializer.constructPayloadFromUnnamedParams");
      String str = b(paramList);
      return str;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.aa
 * JD-Core Version:    0.6.2
 */