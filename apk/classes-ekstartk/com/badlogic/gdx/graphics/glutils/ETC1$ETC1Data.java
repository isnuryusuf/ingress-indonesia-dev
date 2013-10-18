package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import java.nio.ByteBuffer;

public final class ETC1$ETC1Data
  implements Disposable
{
  public final ByteBuffer compressedData;
  public final int dataOffset;
  public final int height;
  public final int width;

  ETC1$ETC1Data(int paramInt1, int paramInt2, ByteBuffer paramByteBuffer, int paramInt3)
  {
    this.width = paramInt1;
    this.height = paramInt2;
    this.compressedData = paramByteBuffer;
    this.dataOffset = paramInt3;
  }

  // ERROR //
  public ETC1$ETC1Data(com.badlogic.gdx.files.FileHandle paramFileHandle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 17	java/lang/Object:<init>	()V
    //   4: sipush 10240
    //   7: newarray byte
    //   9: astore_2
    //   10: new 30	java/io/DataInputStream
    //   13: dup
    //   14: new 32	java/io/BufferedInputStream
    //   17: dup
    //   18: new 34	java/util/zip/GZIPInputStream
    //   21: dup
    //   22: aload_1
    //   23: invokevirtual 40	com/badlogic/gdx/files/FileHandle:read	()Ljava/io/InputStream;
    //   26: invokespecial 43	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   29: invokespecial 44	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   32: invokespecial 45	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   35: astore_3
    //   36: aload_0
    //   37: aload_3
    //   38: invokevirtual 49	java/io/DataInputStream:readInt	()I
    //   41: invokestatic 55	com/badlogic/gdx/utils/BufferUtils:newUnsafeByteBuffer	(I)Ljava/nio/ByteBuffer;
    //   44: putfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   47: aload_3
    //   48: aload_2
    //   49: invokevirtual 58	java/io/DataInputStream:read	([B)I
    //   52: istore 7
    //   54: iload 7
    //   56: iconst_m1
    //   57: if_icmpeq +64 -> 121
    //   60: aload_0
    //   61: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   64: aload_2
    //   65: iconst_0
    //   66: iload 7
    //   68: invokevirtual 64	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   71: pop
    //   72: goto -25 -> 47
    //   75: astore 6
    //   77: new 66	com/badlogic/gdx/utils/GdxRuntimeException
    //   80: dup
    //   81: new 68	java/lang/StringBuilder
    //   84: dup
    //   85: ldc 70
    //   87: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload_1
    //   91: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   94: ldc 79
    //   96: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: aload 6
    //   104: invokespecial 89	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   107: athrow
    //   108: astore 4
    //   110: aload_3
    //   111: ifnull +7 -> 118
    //   114: aload_3
    //   115: invokevirtual 92	java/io/DataInputStream:close	()V
    //   118: aload 4
    //   120: athrow
    //   121: aload_0
    //   122: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   125: iconst_0
    //   126: invokevirtual 96	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   129: pop
    //   130: aload_0
    //   131: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   134: aload_0
    //   135: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   138: invokevirtual 99	java/nio/ByteBuffer:capacity	()I
    //   141: invokevirtual 102	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   144: pop
    //   145: aload_3
    //   146: invokevirtual 92	java/io/DataInputStream:close	()V
    //   149: aload_0
    //   150: aload_0
    //   151: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   154: iconst_0
    //   155: invokestatic 108	com/badlogic/gdx/graphics/glutils/ETC1:getWidthPKM	(Ljava/nio/ByteBuffer;I)I
    //   158: putfield 19	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:width	I
    //   161: aload_0
    //   162: aload_0
    //   163: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   166: iconst_0
    //   167: invokestatic 111	com/badlogic/gdx/graphics/glutils/ETC1:getHeightPKM	(Ljava/nio/ByteBuffer;I)I
    //   170: putfield 21	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:height	I
    //   173: aload_0
    //   174: getstatic 114	com/badlogic/gdx/graphics/glutils/ETC1:PKM_HEADER_SIZE	I
    //   177: putfield 25	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:dataOffset	I
    //   180: aload_0
    //   181: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   184: aload_0
    //   185: getfield 25	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:dataOffset	I
    //   188: invokevirtual 96	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   191: pop
    //   192: return
    //   193: astore 11
    //   195: goto -46 -> 149
    //   198: astore 5
    //   200: goto -82 -> 118
    //   203: astore 4
    //   205: aconst_null
    //   206: astore_3
    //   207: goto -97 -> 110
    //   210: astore 6
    //   212: aconst_null
    //   213: astore_3
    //   214: goto -137 -> 77
    //
    // Exception table:
    //   from	to	target	type
    //   36	47	75	java/lang/Exception
    //   47	54	75	java/lang/Exception
    //   60	72	75	java/lang/Exception
    //   121	145	75	java/lang/Exception
    //   36	47	108	finally
    //   47	54	108	finally
    //   60	72	108	finally
    //   77	108	108	finally
    //   121	145	108	finally
    //   145	149	193	java/lang/Exception
    //   114	118	198	java/lang/Exception
    //   10	36	203	finally
    //   10	36	210	java/lang/Exception
  }

  public final void dispose()
  {
    BufferUtils.disposeUnsafeByteBuffer(this.compressedData);
  }

  public final boolean hasPKMHeader()
  {
    return this.dataOffset == 16;
  }

  public final String toString()
  {
    if (hasPKMHeader())
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if (ETC1.isValidPKM(this.compressedData, 0));
      for (String str = "valid"; ; str = "invalid")
        return str + " pkm [" + ETC1.getWidthPKM(this.compressedData, 0) + "x" + ETC1.getHeightPKM(this.compressedData, 0) + "], compressed: " + (this.compressedData.capacity() - ETC1.PKM_HEADER_SIZE);
    }
    return "raw [" + this.width + "x" + this.height + "], compressed: " + (this.compressedData.capacity() - ETC1.PKM_HEADER_SIZE);
  }

  // ERROR //
  public final void write(com.badlogic.gdx.files.FileHandle paramFileHandle)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: sipush 10240
    //   5: newarray byte
    //   7: astore_3
    //   8: aload_0
    //   9: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   12: iconst_0
    //   13: invokevirtual 96	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   16: pop
    //   17: aload_0
    //   18: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   21: aload_0
    //   22: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   25: invokevirtual 99	java/nio/ByteBuffer:capacity	()I
    //   28: invokevirtual 102	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   31: pop
    //   32: new 146	java/io/DataOutputStream
    //   35: dup
    //   36: new 148	java/util/zip/GZIPOutputStream
    //   39: dup
    //   40: aload_1
    //   41: iconst_0
    //   42: invokevirtual 151	com/badlogic/gdx/files/FileHandle:write	(Z)Ljava/io/OutputStream;
    //   45: invokespecial 154	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   48: invokespecial 155	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   51: astore 6
    //   53: aload 6
    //   55: aload_0
    //   56: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   59: invokevirtual 99	java/nio/ByteBuffer:capacity	()I
    //   62: invokevirtual 159	java/io/DataOutputStream:writeInt	(I)V
    //   65: iload_2
    //   66: aload_0
    //   67: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   70: invokevirtual 99	java/nio/ByteBuffer:capacity	()I
    //   73: if_icmpeq +46 -> 119
    //   76: aload_0
    //   77: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   80: invokevirtual 162	java/nio/ByteBuffer:remaining	()I
    //   83: aload_3
    //   84: arraylength
    //   85: invokestatic 168	java/lang/Math:min	(II)I
    //   88: istore 13
    //   90: aload_0
    //   91: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   94: aload_3
    //   95: iconst_0
    //   96: iload 13
    //   98: invokevirtual 171	java/nio/ByteBuffer:get	([BII)Ljava/nio/ByteBuffer;
    //   101: pop
    //   102: aload 6
    //   104: aload_3
    //   105: iconst_0
    //   106: iload 13
    //   108: invokevirtual 174	java/io/DataOutputStream:write	([BII)V
    //   111: iload_2
    //   112: iload 13
    //   114: iadd
    //   115: istore_2
    //   116: goto -51 -> 65
    //   119: aload 6
    //   121: invokevirtual 175	java/io/DataOutputStream:close	()V
    //   124: aload_0
    //   125: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   128: aload_0
    //   129: getfield 25	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:dataOffset	I
    //   132: invokevirtual 96	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   135: pop
    //   136: aload_0
    //   137: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   140: aload_0
    //   141: getfield 23	com/badlogic/gdx/graphics/glutils/ETC1$ETC1Data:compressedData	Ljava/nio/ByteBuffer;
    //   144: invokevirtual 99	java/nio/ByteBuffer:capacity	()I
    //   147: invokevirtual 102	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   150: pop
    //   151: return
    //   152: astore 7
    //   154: aconst_null
    //   155: astore 6
    //   157: new 66	com/badlogic/gdx/utils/GdxRuntimeException
    //   160: dup
    //   161: new 68	java/lang/StringBuilder
    //   164: dup
    //   165: ldc 177
    //   167: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   170: aload_1
    //   171: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   174: ldc 79
    //   176: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: aload 7
    //   184: invokespecial 89	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   187: athrow
    //   188: astore 8
    //   190: aload 6
    //   192: ifnull +8 -> 200
    //   195: aload 6
    //   197: invokevirtual 175	java/io/DataOutputStream:close	()V
    //   200: aload 8
    //   202: athrow
    //   203: astore 10
    //   205: goto -81 -> 124
    //   208: astore 9
    //   210: goto -10 -> 200
    //   213: astore 8
    //   215: aconst_null
    //   216: astore 6
    //   218: goto -28 -> 190
    //   221: astore 7
    //   223: goto -66 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   32	53	152	java/lang/Exception
    //   53	65	188	finally
    //   65	111	188	finally
    //   157	188	188	finally
    //   119	124	203	java/lang/Exception
    //   195	200	208	java/lang/Exception
    //   32	53	213	finally
    //   53	65	221	java/lang/Exception
    //   65	111	221	java/lang/Exception
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ETC1.ETC1Data
 * JD-Core Version:    0.6.2
 */