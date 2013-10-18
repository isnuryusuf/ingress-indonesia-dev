package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.VertexAttribute;

public final class a
{
  // ERROR //
  public static c a(java.lang.String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 16	com/nianticproject/ingress/common/b/c:d	(Ljava/lang/String;)Ljava/io/InputStream;
    //   4: astore_1
    //   5: ldc 18
    //   7: invokestatic 23	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   10: new 25	java/io/ObjectInputStream
    //   13: dup
    //   14: new 27	java/io/BufferedInputStream
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 31	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   22: invokespecial 32	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   25: astore 8
    //   27: aload 8
    //   29: invokevirtual 36	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   32: checkcast 38	[F
    //   35: astore 9
    //   37: aload 8
    //   39: invokevirtual 36	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   42: checkcast 40	[S
    //   45: astore 10
    //   47: aload 8
    //   49: invokevirtual 36	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   52: checkcast 40	[S
    //   55: astore 11
    //   57: aload 8
    //   59: invokevirtual 44	java/io/ObjectInputStream:readInt	()I
    //   62: anewarray 46	com/badlogic/gdx/graphics/VertexAttribute
    //   65: astore 12
    //   67: iconst_0
    //   68: istore 13
    //   70: iload 13
    //   72: aload 12
    //   74: arraylength
    //   75: if_icmpge +36 -> 111
    //   78: aload 12
    //   80: iload 13
    //   82: new 46	com/badlogic/gdx/graphics/VertexAttribute
    //   85: dup
    //   86: aload 8
    //   88: invokevirtual 44	java/io/ObjectInputStream:readInt	()I
    //   91: aload 8
    //   93: invokevirtual 44	java/io/ObjectInputStream:readInt	()I
    //   96: aload 8
    //   98: invokevirtual 50	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   101: invokespecial 53	com/badlogic/gdx/graphics/VertexAttribute:<init>	(IILjava/lang/String;)V
    //   104: aastore
    //   105: iinc 13 1
    //   108: goto -38 -> 70
    //   111: aload 8
    //   113: invokevirtual 57	java/io/ObjectInputStream:readBoolean	()Z
    //   116: ifeq +130 -> 246
    //   119: new 59	com/nianticproject/ingress/common/j/b
    //   122: dup
    //   123: invokespecial 62	com/nianticproject/ingress/common/j/b:<init>	()V
    //   126: astore 14
    //   128: aload 14
    //   130: aload 8
    //   132: invokevirtual 50	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   135: putfield 65	com/nianticproject/ingress/common/j/b:a	Ljava/lang/String;
    //   138: aload 14
    //   140: aload 8
    //   142: invokevirtual 50	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   145: putfield 68	com/nianticproject/ingress/common/j/b:b	Ljava/lang/String;
    //   148: aload 14
    //   150: aload 8
    //   152: invokevirtual 36	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   155: checkcast 70	[Ljava/lang/String;
    //   158: putfield 73	com/nianticproject/ingress/common/j/b:c	[Ljava/lang/String;
    //   161: aload 8
    //   163: invokevirtual 76	java/io/ObjectInputStream:close	()V
    //   166: new 78	com/nianticproject/ingress/common/j/c
    //   169: dup
    //   170: aload 9
    //   172: aload 10
    //   174: aload 11
    //   176: aload 12
    //   178: aload 14
    //   180: invokespecial 81	com/nianticproject/ingress/common/j/c:<init>	([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;Lcom/nianticproject/ingress/common/j/b;)V
    //   183: astore 15
    //   185: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   188: aload_1
    //   189: invokevirtual 86	java/io/InputStream:close	()V
    //   192: aload 15
    //   194: areturn
    //   195: astore 6
    //   197: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   200: aload_1
    //   201: invokevirtual 86	java/io/InputStream:close	()V
    //   204: aconst_null
    //   205: areturn
    //   206: astore 4
    //   208: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   211: aload_1
    //   212: invokevirtual 86	java/io/InputStream:close	()V
    //   215: aconst_null
    //   216: areturn
    //   217: astore_2
    //   218: invokestatic 83	com/nianticproject/ingress/shared/aj:b	()V
    //   221: aload_1
    //   222: invokevirtual 86	java/io/InputStream:close	()V
    //   225: aload_2
    //   226: athrow
    //   227: astore 16
    //   229: aload 15
    //   231: areturn
    //   232: astore 7
    //   234: goto -30 -> 204
    //   237: astore 5
    //   239: goto -24 -> 215
    //   242: astore_3
    //   243: goto -18 -> 225
    //   246: aconst_null
    //   247: astore 14
    //   249: goto -88 -> 161
    //
    // Exception table:
    //   from	to	target	type
    //   5	67	195	java/io/IOException
    //   70	105	195	java/io/IOException
    //   111	161	195	java/io/IOException
    //   161	185	195	java/io/IOException
    //   5	67	206	java/lang/ClassNotFoundException
    //   70	105	206	java/lang/ClassNotFoundException
    //   111	161	206	java/lang/ClassNotFoundException
    //   161	185	206	java/lang/ClassNotFoundException
    //   5	67	217	finally
    //   70	105	217	finally
    //   111	161	217	finally
    //   161	185	217	finally
    //   188	192	227	java/io/IOException
    //   200	204	232	java/io/IOException
    //   211	215	237	java/io/IOException
    //   221	225	242	java/io/IOException
  }

  public static c a(float[] paramArrayOfFloat, short[] paramArrayOfShort1, short[] paramArrayOfShort2, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    return new c(paramArrayOfFloat, paramArrayOfShort1, paramArrayOfShort2, paramArrayOfVertexAttribute, null);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.a
 * JD-Core Version:    0.6.2
 */