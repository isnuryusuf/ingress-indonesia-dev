package com.badlogic.gdx.graphics;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;

class PixmapIO$PNG
{
  static final int ZLIB_BLOCK_SIZE = 32000;
  static int[] crcTable;

  private static int calcADLER32(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = 1;
    int k = 0;
    if (i < paramArrayOfByte.length)
    {
      if (paramArrayOfByte[i] >= 0);
      for (int m = paramArrayOfByte[i]; ; m = 256 + paramArrayOfByte[i])
      {
        j = (j + m) % 65521;
        k = (k + j) % 65521;
        i++;
        break;
      }
    }
    return j + (k << 16);
  }

  private static void createCRCTable()
  {
    crcTable = new int[256];
    for (int i = 0; i < 256; i++)
    {
      int j = 0;
      int k = i;
      if (j < 8)
      {
        if ((k & 0x1) > 0)
          k = 0xEDB88320 ^ k >>> 1;
        while (true)
        {
          j++;
          break;
          k >>>= 1;
        }
      }
      crcTable[i] = k;
    }
  }

  private static byte[] createDataChunk(Pixmap paramPixmap)
  {
    int i = paramPixmap.getWidth();
    int j = paramPixmap.getHeight();
    byte[] arrayOfByte = new byte[j + j * (i * 4)];
    int k = 0;
    int m = 0;
    while (k < j)
    {
      int n = m + 1;
      arrayOfByte[m] = 0;
      m = n;
      for (int i1 = 0; i1 < i; i1++)
      {
        int i2 = 0xFFFFFFFF & paramPixmap.getPixel(i1, k);
        int i3 = 0xFF & i2 >> 24;
        int i4 = 0xFF & i2 >> 16;
        int i5 = 0xFF & i2 >> 8;
        int i6 = i2 & 0xFF;
        int i7 = m + 1;
        arrayOfByte[m] = ((byte)i3);
        int i8 = i7 + 1;
        arrayOfByte[i7] = ((byte)i4);
        int i9 = i8 + 1;
        arrayOfByte[i8] = ((byte)i5);
        m = i9 + 1;
        arrayOfByte[i9] = ((byte)i6);
      }
      k++;
    }
    return toChunk("IDAT", toZLIB(arrayOfByte));
  }

  private static byte[] createHeaderChunk(int paramInt1, int paramInt2)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(13);
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeInt(paramInt1);
    localDataOutputStream.writeInt(paramInt2);
    localDataOutputStream.writeByte(8);
    localDataOutputStream.writeByte(6);
    localDataOutputStream.writeByte(0);
    localDataOutputStream.writeByte(0);
    localDataOutputStream.writeByte(0);
    return toChunk("IHDR", localByteArrayOutputStream.toByteArray());
  }

  private static byte[] createTrailerChunk()
  {
    return toChunk("IEND", new byte[0]);
  }

  private static byte[] toChunk(String paramString, byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(12 + paramArrayOfByte.length);
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeInt(paramArrayOfByte.length);
    byte[] arrayOfByte = new byte[4];
    for (int i = 0; i < 4; i++)
      arrayOfByte[i] = ((byte)paramString.charAt(i));
    localDataOutputStream.write(arrayOfByte);
    localDataOutputStream.write(paramArrayOfByte);
    localDataOutputStream.writeInt(0xFFFFFFFF ^ updateCRC(updateCRC(-1, arrayOfByte), paramArrayOfByte));
    return localByteArrayOutputStream.toByteArray();
  }

  private static byte[] toZLIB(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(6 + paramArrayOfByte.length + 5 * (paramArrayOfByte.length / 32000));
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    localDataOutputStream.writeByte(8);
    localDataOutputStream.writeByte(29);
    for (int i = 0; paramArrayOfByte.length - i > 32000; i += 32000)
      writeUncompressedDeflateBlock(localDataOutputStream, false, paramArrayOfByte, i, '紀');
    writeUncompressedDeflateBlock(localDataOutputStream, true, paramArrayOfByte, i, (char)(paramArrayOfByte.length - i));
    localDataOutputStream.writeInt(calcADLER32(paramArrayOfByte));
    return localByteArrayOutputStream.toByteArray();
  }

  private static int updateCRC(int paramInt, byte[] paramArrayOfByte)
  {
    if (crcTable == null)
      createCRCTable();
    int i = paramArrayOfByte.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfByte[j];
      paramInt = crcTable[(0xFF & (k ^ paramInt))] ^ paramInt >>> 8;
    }
    return paramInt;
  }

  static byte[] write(Pixmap paramPixmap)
  {
    byte[] arrayOfByte1 = { -119, 80, 78, 71, 13, 10, 26, 10 };
    byte[] arrayOfByte2 = createHeaderChunk(paramPixmap.getWidth(), paramPixmap.getHeight());
    byte[] arrayOfByte3 = createDataChunk(paramPixmap);
    byte[] arrayOfByte4 = createTrailerChunk();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(arrayOfByte1.length + arrayOfByte2.length + arrayOfByte3.length + arrayOfByte4.length);
    localByteArrayOutputStream.write(arrayOfByte1);
    localByteArrayOutputStream.write(arrayOfByte2);
    localByteArrayOutputStream.write(arrayOfByte3);
    localByteArrayOutputStream.write(arrayOfByte4);
    return localByteArrayOutputStream.toByteArray();
  }

  private static void writeUncompressedDeflateBlock(DataOutputStream paramDataOutputStream, boolean paramBoolean, byte[] paramArrayOfByte, int paramInt, char paramChar)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      paramDataOutputStream.writeByte((byte)i);
      paramDataOutputStream.writeByte((byte)(paramChar & 0xFF));
      paramDataOutputStream.writeByte((byte)((paramChar & 0xFF00) >> '\b'));
      paramDataOutputStream.writeByte((byte)(0xFF & (paramChar ^ 0xFFFFFFFF)));
      paramDataOutputStream.writeByte((byte)((0xFF00 & (paramChar ^ 0xFFFFFFFF)) >> 8));
      paramDataOutputStream.write(paramArrayOfByte, paramInt, paramChar);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.PixmapIO.PNG
 * JD-Core Version:    0.6.2
 */