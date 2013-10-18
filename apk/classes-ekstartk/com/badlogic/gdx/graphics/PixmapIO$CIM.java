package com.badlogic.gdx.graphics;

class PixmapIO$CIM
{
  private static final int BUFFER_SIZE = 32000;
  private static final byte[] readBuffer = new byte[32000];
  private static final byte[] writeBuffer = new byte[32000];

  // ERROR //
  public static Pixmap read(com.badlogic.gdx.files.FileHandle paramFileHandle)
  {
    // Byte code:
    //   0: new 25	java/io/DataInputStream
    //   3: dup
    //   4: new 27	java/util/zip/InflaterInputStream
    //   7: dup
    //   8: new 29	java/io/BufferedInputStream
    //   11: dup
    //   12: aload_0
    //   13: invokevirtual 34	com/badlogic/gdx/files/FileHandle:read	()Ljava/io/InputStream;
    //   16: invokespecial 37	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   19: invokespecial 38	java/util/zip/InflaterInputStream:<init>	(Ljava/io/InputStream;)V
    //   22: invokespecial 39	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   25: astore_1
    //   26: new 41	com/badlogic/gdx/graphics/Pixmap
    //   29: dup
    //   30: aload_1
    //   31: invokevirtual 45	java/io/DataInputStream:readInt	()I
    //   34: aload_1
    //   35: invokevirtual 45	java/io/DataInputStream:readInt	()I
    //   38: aload_1
    //   39: invokevirtual 45	java/io/DataInputStream:readInt	()I
    //   42: invokestatic 51	com/badlogic/gdx/graphics/Pixmap$Format:fromGdx2DPixmapFormat	(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;
    //   45: invokespecial 54	com/badlogic/gdx/graphics/Pixmap:<init>	(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    //   48: astore_2
    //   49: aload_2
    //   50: invokevirtual 58	com/badlogic/gdx/graphics/Pixmap:getPixels	()Ljava/nio/ByteBuffer;
    //   53: astore 6
    //   55: aload 6
    //   57: iconst_0
    //   58: invokevirtual 64	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   61: pop
    //   62: aload 6
    //   64: aload 6
    //   66: invokevirtual 67	java/nio/ByteBuffer:capacity	()I
    //   69: invokevirtual 70	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   72: pop
    //   73: getstatic 16	com/badlogic/gdx/graphics/PixmapIO$CIM:readBuffer	[B
    //   76: astore 9
    //   78: aload 9
    //   80: monitorenter
    //   81: aload_1
    //   82: getstatic 16	com/badlogic/gdx/graphics/PixmapIO$CIM:readBuffer	[B
    //   85: invokevirtual 73	java/io/DataInputStream:read	([B)I
    //   88: istore 11
    //   90: iload 11
    //   92: ifle +70 -> 162
    //   95: aload 6
    //   97: getstatic 16	com/badlogic/gdx/graphics/PixmapIO$CIM:readBuffer	[B
    //   100: iconst_0
    //   101: iload 11
    //   103: invokevirtual 77	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   106: pop
    //   107: goto -26 -> 81
    //   110: astore 10
    //   112: aload 9
    //   114: monitorexit
    //   115: aload 10
    //   117: athrow
    //   118: astore 5
    //   120: new 79	com/badlogic/gdx/utils/GdxRuntimeException
    //   123: dup
    //   124: new 81	java/lang/StringBuilder
    //   127: dup
    //   128: ldc 83
    //   130: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   133: aload_0
    //   134: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   137: ldc 92
    //   139: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: aload 5
    //   147: invokespecial 102	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   150: athrow
    //   151: astore_3
    //   152: aload_1
    //   153: ifnull +7 -> 160
    //   156: aload_1
    //   157: invokevirtual 105	java/io/DataInputStream:close	()V
    //   160: aload_3
    //   161: athrow
    //   162: aload 9
    //   164: monitorexit
    //   165: aload 6
    //   167: iconst_0
    //   168: invokevirtual 64	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   171: pop
    //   172: aload 6
    //   174: aload 6
    //   176: invokevirtual 67	java/nio/ByteBuffer:capacity	()I
    //   179: invokevirtual 70	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   182: pop
    //   183: aload_1
    //   184: invokevirtual 105	java/io/DataInputStream:close	()V
    //   187: aload_2
    //   188: areturn
    //   189: astore 15
    //   191: aload_2
    //   192: areturn
    //   193: astore 4
    //   195: goto -35 -> 160
    //   198: astore_3
    //   199: aconst_null
    //   200: astore_1
    //   201: goto -49 -> 152
    //   204: astore 5
    //   206: aconst_null
    //   207: astore_1
    //   208: goto -88 -> 120
    //
    // Exception table:
    //   from	to	target	type
    //   81	90	110	finally
    //   95	107	110	finally
    //   162	165	110	finally
    //   26	81	118	java/lang/Exception
    //   112	118	118	java/lang/Exception
    //   165	183	118	java/lang/Exception
    //   26	81	151	finally
    //   112	118	151	finally
    //   120	151	151	finally
    //   165	183	151	finally
    //   183	187	189	java/lang/Exception
    //   156	160	193	java/lang/Exception
    //   0	26	198	finally
    //   0	26	204	java/lang/Exception
  }

  // ERROR //
  public static void write(com.badlogic.gdx.files.FileHandle paramFileHandle, Pixmap paramPixmap)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: new 109	java/io/DataOutputStream
    //   5: dup
    //   6: new 111	java/util/zip/DeflaterOutputStream
    //   9: dup
    //   10: aload_0
    //   11: iconst_0
    //   12: invokevirtual 114	com/badlogic/gdx/files/FileHandle:write	(Z)Ljava/io/OutputStream;
    //   15: invokespecial 117	java/util/zip/DeflaterOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: invokespecial 118	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: astore_3
    //   22: aload_3
    //   23: aload_1
    //   24: invokevirtual 121	com/badlogic/gdx/graphics/Pixmap:getWidth	()I
    //   27: invokevirtual 125	java/io/DataOutputStream:writeInt	(I)V
    //   30: aload_3
    //   31: aload_1
    //   32: invokevirtual 128	com/badlogic/gdx/graphics/Pixmap:getHeight	()I
    //   35: invokevirtual 125	java/io/DataOutputStream:writeInt	(I)V
    //   38: aload_3
    //   39: aload_1
    //   40: invokevirtual 132	com/badlogic/gdx/graphics/Pixmap:getFormat	()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    //   43: invokestatic 136	com/badlogic/gdx/graphics/Pixmap$Format:toGdx2DPixmapFormat	(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    //   46: invokevirtual 125	java/io/DataOutputStream:writeInt	(I)V
    //   49: aload_1
    //   50: invokevirtual 58	com/badlogic/gdx/graphics/Pixmap:getPixels	()Ljava/nio/ByteBuffer;
    //   53: astore 7
    //   55: aload 7
    //   57: iconst_0
    //   58: invokevirtual 64	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   61: pop
    //   62: aload 7
    //   64: aload 7
    //   66: invokevirtual 67	java/nio/ByteBuffer:capacity	()I
    //   69: invokevirtual 70	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   72: pop
    //   73: aload 7
    //   75: invokevirtual 67	java/nio/ByteBuffer:capacity	()I
    //   78: sipush 32000
    //   81: irem
    //   82: istore 10
    //   84: aload 7
    //   86: invokevirtual 67	java/nio/ByteBuffer:capacity	()I
    //   89: sipush 32000
    //   92: idiv
    //   93: istore 11
    //   95: getstatic 14	com/badlogic/gdx/graphics/PixmapIO$CIM:writeBuffer	[B
    //   98: astore 12
    //   100: aload 12
    //   102: monitorenter
    //   103: iload_2
    //   104: iload 11
    //   106: if_icmpge +25 -> 131
    //   109: aload 7
    //   111: getstatic 14	com/badlogic/gdx/graphics/PixmapIO$CIM:writeBuffer	[B
    //   114: invokevirtual 140	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   117: pop
    //   118: aload_3
    //   119: getstatic 14	com/badlogic/gdx/graphics/PixmapIO$CIM:writeBuffer	[B
    //   122: invokevirtual 143	java/io/DataOutputStream:write	([B)V
    //   125: iinc 2 1
    //   128: goto -25 -> 103
    //   131: aload 7
    //   133: getstatic 14	com/badlogic/gdx/graphics/PixmapIO$CIM:writeBuffer	[B
    //   136: iconst_0
    //   137: iload 10
    //   139: invokevirtual 145	java/nio/ByteBuffer:get	([BII)Ljava/nio/ByteBuffer;
    //   142: pop
    //   143: aload_3
    //   144: getstatic 14	com/badlogic/gdx/graphics/PixmapIO$CIM:writeBuffer	[B
    //   147: iconst_0
    //   148: iload 10
    //   150: invokevirtual 148	java/io/DataOutputStream:write	([BII)V
    //   153: aload 12
    //   155: monitorexit
    //   156: aload 7
    //   158: iconst_0
    //   159: invokevirtual 64	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   162: pop
    //   163: aload 7
    //   165: aload 7
    //   167: invokevirtual 67	java/nio/ByteBuffer:capacity	()I
    //   170: invokevirtual 70	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   173: pop
    //   174: aload_3
    //   175: invokevirtual 149	java/io/DataOutputStream:close	()V
    //   178: return
    //   179: astore 13
    //   181: aload 12
    //   183: monitorexit
    //   184: aload 13
    //   186: athrow
    //   187: astore 6
    //   189: new 79	com/badlogic/gdx/utils/GdxRuntimeException
    //   192: dup
    //   193: new 81	java/lang/StringBuilder
    //   196: dup
    //   197: ldc 151
    //   199: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   202: aload_0
    //   203: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   206: ldc 92
    //   208: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: aload 6
    //   216: invokespecial 102	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   219: athrow
    //   220: astore 4
    //   222: aload_3
    //   223: ifnull +7 -> 230
    //   226: aload_3
    //   227: invokevirtual 149	java/io/DataOutputStream:close	()V
    //   230: aload 4
    //   232: athrow
    //   233: astore 17
    //   235: return
    //   236: astore 5
    //   238: goto -8 -> 230
    //   241: astore 4
    //   243: aconst_null
    //   244: astore_3
    //   245: goto -23 -> 222
    //   248: astore 6
    //   250: aconst_null
    //   251: astore_3
    //   252: goto -63 -> 189
    //
    // Exception table:
    //   from	to	target	type
    //   109	125	179	finally
    //   131	156	179	finally
    //   22	103	187	java/lang/Exception
    //   156	174	187	java/lang/Exception
    //   181	187	187	java/lang/Exception
    //   22	103	220	finally
    //   156	174	220	finally
    //   181	187	220	finally
    //   189	220	220	finally
    //   174	178	233	java/lang/Exception
    //   226	230	236	java/lang/Exception
    //   2	22	241	finally
    //   2	22	248	java/lang/Exception
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.PixmapIO.CIM
 * JD-Core Version:    0.6.2
 */