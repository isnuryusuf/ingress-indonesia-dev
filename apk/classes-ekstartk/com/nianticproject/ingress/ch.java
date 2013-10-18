package com.nianticproject.ingress;

import com.nianticproject.ingress.common.f.h;

final class ch extends h
{
  ch(NemesisApplication paramNemesisApplication)
  {
  }

  // ERROR //
  private static java.lang.Void j()
  {
    // Byte code:
    //   0: ldc 19
    //   2: invokestatic 24	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   5: new 26	java/io/StringWriter
    //   8: dup
    //   9: invokespecial 27	java/io/StringWriter:<init>	()V
    //   12: astore_2
    //   13: getstatic 33	com/nianticproject/ingress/common/o/c:b	Lorg/codehaus/jackson/JsonFactory;
    //   16: aload_2
    //   17: invokevirtual 39	org/codehaus/jackson/JsonFactory:createJsonGenerator	(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    //   20: astore_3
    //   21: ldc 41
    //   23: invokestatic 24	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   26: aload_3
    //   27: new 43	com/nianticproject/ingress/shared/handshake/DeviceInfo
    //   30: dup
    //   31: aconst_null
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: aconst_null
    //   40: aconst_null
    //   41: aconst_null
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokespecial 46	com/nianticproject/ingress/shared/handshake/DeviceInfo:<init>	(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   48: invokevirtual 52	org/codehaus/jackson/JsonGenerator:writeObject	(Ljava/lang/Object;)V
    //   51: aload_3
    //   52: invokevirtual 55	org/codehaus/jackson/JsonGenerator:flush	()V
    //   55: aload_3
    //   56: invokevirtual 58	org/codehaus/jackson/JsonGenerator:close	()V
    //   59: new 60	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   66: ldc 63
    //   68: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: aload_2
    //   72: invokevirtual 71	java/io/StringWriter:toString	()Ljava/lang/String;
    //   75: invokevirtual 77	java/lang/String:hashCode	()I
    //   78: invokevirtual 80	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   81: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: astore 5
    //   86: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   89: ldc 85
    //   91: invokestatic 24	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   94: getstatic 88	com/nianticproject/ingress/common/o/c:a	Lorg/codehaus/jackson/map/ObjectMapper;
    //   97: ldc 90
    //   99: ldc 92
    //   101: ldc 94
    //   103: ldc 96
    //   105: invokestatic 101	com/google/a/c/dh:a	(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;
    //   108: invokevirtual 107	org/codehaus/jackson/map/ObjectMapper:writeValueAsString	(Ljava/lang/Object;)Ljava/lang/String;
    //   111: ldc 109
    //   113: invokestatic 115	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   116: astore 7
    //   118: new 60	java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   125: aload 5
    //   127: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload 7
    //   132: invokevirtual 77	java/lang/String:hashCode	()I
    //   135: invokevirtual 80	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   138: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: astore 8
    //   143: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   146: bipush 9
    //   148: anewarray 117	com/nianticproject/ingress/knobs/g
    //   151: astore 9
    //   153: aload 9
    //   155: iconst_0
    //   156: new 119	com/nianticproject/ingress/knobs/PortalKnobBundle
    //   159: dup
    //   160: invokespecial 120	com/nianticproject/ingress/knobs/PortalKnobBundle:<init>	()V
    //   163: aastore
    //   164: aload 9
    //   166: iconst_1
    //   167: new 122	com/nianticproject/ingress/knobs/InventoryKnobs
    //   170: dup
    //   171: invokespecial 123	com/nianticproject/ingress/knobs/InventoryKnobs:<init>	()V
    //   174: aastore
    //   175: aload 9
    //   177: iconst_2
    //   178: new 125	com/nianticproject/ingress/knobs/ScannerKnobs
    //   181: dup
    //   182: invokespecial 126	com/nianticproject/ingress/knobs/ScannerKnobs:<init>	()V
    //   185: aastore
    //   186: aload 9
    //   188: iconst_3
    //   189: new 128	com/nianticproject/ingress/knobs/ClientFeatureKnobBundle
    //   192: dup
    //   193: invokespecial 129	com/nianticproject/ingress/knobs/ClientFeatureKnobBundle:<init>	()V
    //   196: aastore
    //   197: aload 9
    //   199: iconst_4
    //   200: new 131	com/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle
    //   203: dup
    //   204: iconst_0
    //   205: invokespecial 134	com/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle:<init>	(B)V
    //   208: aastore
    //   209: aload 9
    //   211: iconst_5
    //   212: new 136	com/nianticproject/ingress/knobs/XmCostKnobs
    //   215: dup
    //   216: invokespecial 137	com/nianticproject/ingress/knobs/XmCostKnobs:<init>	()V
    //   219: aastore
    //   220: aload 9
    //   222: bipush 6
    //   224: new 139	com/nianticproject/ingress/knobs/RecycleKnobs
    //   227: dup
    //   228: invokespecial 140	com/nianticproject/ingress/knobs/RecycleKnobs:<init>	()V
    //   231: aastore
    //   232: aload 9
    //   234: bipush 7
    //   236: new 142	com/nianticproject/ingress/knobs/PortalModSharedKnobs
    //   239: dup
    //   240: invokespecial 143	com/nianticproject/ingress/knobs/PortalModSharedKnobs:<init>	()V
    //   243: aastore
    //   244: aload 9
    //   246: bipush 8
    //   248: new 145	com/nianticproject/ingress/knobs/NearbyPortalKnobs
    //   251: dup
    //   252: invokespecial 146	com/nianticproject/ingress/knobs/NearbyPortalKnobs:<init>	()V
    //   255: aastore
    //   256: iconst_0
    //   257: istore 10
    //   259: aload 9
    //   261: arraylength
    //   262: istore 11
    //   264: iconst_0
    //   265: istore 12
    //   267: iload 12
    //   269: iload 11
    //   271: if_icmpge +137 -> 408
    //   274: aload 9
    //   276: iload 12
    //   278: aaload
    //   279: astore 13
    //   281: getstatic 33	com/nianticproject/ingress/common/o/c:b	Lorg/codehaus/jackson/JsonFactory;
    //   284: ldc 148
    //   286: invokevirtual 152	org/codehaus/jackson/JsonFactory:createJsonParser	(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    //   289: astore 17
    //   291: ldc 154
    //   293: aload 13
    //   295: invokevirtual 160	java/lang/Object:getClass	()Ljava/lang/Class;
    //   298: invokevirtual 165	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   301: invokestatic 168	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   304: aload 17
    //   306: aload 13
    //   308: invokevirtual 160	java/lang/Object:getClass	()Ljava/lang/Class;
    //   311: invokevirtual 174	org/codehaus/jackson/JsonParser:readValueAs	(Ljava/lang/Class;)Ljava/lang/Object;
    //   314: checkcast 117	com/nianticproject/ingress/knobs/g
    //   317: invokevirtual 175	java/lang/Object:hashCode	()I
    //   320: istore 18
    //   322: iload 18
    //   324: iload 10
    //   326: iadd
    //   327: istore 16
    //   329: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   332: goto +112 -> 444
    //   335: astore 4
    //   337: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   340: aload 4
    //   342: athrow
    //   343: astore_1
    //   344: getstatic 181	java/lang/System:out	Ljava/io/PrintStream;
    //   347: new 60	java/lang/StringBuilder
    //   350: dup
    //   351: ldc 183
    //   353: invokespecial 185	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   356: aload_1
    //   357: invokevirtual 186	java/lang/Exception:toString	()Ljava/lang/String;
    //   360: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   366: invokevirtual 191	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   369: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   372: aconst_null
    //   373: areturn
    //   374: astore 6
    //   376: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   379: aload 6
    //   381: athrow
    //   382: astore_0
    //   383: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   386: aload_0
    //   387: athrow
    //   388: astore 15
    //   390: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   393: iload 10
    //   395: istore 16
    //   397: goto +47 -> 444
    //   400: astore 14
    //   402: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   405: aload 14
    //   407: athrow
    //   408: new 60	java/lang/StringBuilder
    //   411: dup
    //   412: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   415: aload 8
    //   417: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: iload 10
    //   422: invokevirtual 80	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   425: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: astore 19
    //   430: getstatic 181	java/lang/System:out	Ljava/io/PrintStream;
    //   433: aload 19
    //   435: invokevirtual 191	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   438: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   441: goto -69 -> 372
    //   444: iinc 12 1
    //   447: iload 16
    //   449: istore 10
    //   451: goto -184 -> 267
    //
    // Exception table:
    //   from	to	target	type
    //   21	86	335	finally
    //   0	21	343	java/lang/Exception
    //   86	89	343	java/lang/Exception
    //   143	256	343	java/lang/Exception
    //   259	264	343	java/lang/Exception
    //   274	281	343	java/lang/Exception
    //   329	332	343	java/lang/Exception
    //   337	343	343	java/lang/Exception
    //   376	382	343	java/lang/Exception
    //   390	393	343	java/lang/Exception
    //   402	408	343	java/lang/Exception
    //   408	438	343	java/lang/Exception
    //   89	143	374	finally
    //   0	21	382	finally
    //   86	89	382	finally
    //   143	256	382	finally
    //   259	264	382	finally
    //   274	281	382	finally
    //   329	332	382	finally
    //   337	343	382	finally
    //   344	369	382	finally
    //   376	382	382	finally
    //   390	393	382	finally
    //   402	408	382	finally
    //   408	438	382	finally
    //   281	322	388	java/lang/Exception
    //   281	322	400	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ch
 * JD-Core Version:    0.6.2
 */