package com.badlogic.gdx.utils;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.FilterInputStream;
import java.io.InputStream;

public class LittleEndianInputStream extends FilterInputStream
  implements DataInput
{
  private DataInputStream din;

  public LittleEndianInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
    this.din = new DataInputStream(paramInputStream);
  }

  public boolean readBoolean()
  {
    return this.din.readBoolean();
  }

  public byte readByte()
  {
    return this.din.readByte();
  }

  public char readChar()
  {
    return this.din.readChar();
  }

  public double readDouble()
  {
    return Double.longBitsToDouble(readLong());
  }

  public float readFloat()
  {
    return Float.intBitsToFloat(readInt());
  }

  public void readFully(byte[] paramArrayOfByte)
  {
    this.din.readFully(paramArrayOfByte);
  }

  public void readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.din.readFully(paramArrayOfByte, paramInt1, paramInt2);
  }

  public int readInt()
  {
    int[] arrayOfInt = new int[4];
    for (int i = 3; i >= 0; i--)
      arrayOfInt[i] = this.din.read();
    return (0xFF & arrayOfInt[0]) << 24 | (0xFF & arrayOfInt[1]) << 16 | (0xFF & arrayOfInt[2]) << 8 | 0xFF & arrayOfInt[3];
  }

  public final String readLine()
  {
    return this.din.readLine();
  }

  public long readLong()
  {
    int[] arrayOfInt = new int[8];
    for (int i = 7; i >= 0; i--)
      arrayOfInt[i] = this.din.read();
    return (0xFF & arrayOfInt[0]) << 56 | (0xFF & arrayOfInt[1]) << 48 | (0xFF & arrayOfInt[2]) << 40 | (0xFF & arrayOfInt[3]) << 32 | (0xFF & arrayOfInt[4]) << 24 | (0xFF & arrayOfInt[5]) << 16 | (0xFF & arrayOfInt[6]) << 8 | 0xFF & arrayOfInt[7];
  }

  public short readShort()
  {
    int i = this.din.read();
    return (short)(this.din.read() << 8 | i & 0xFF);
  }

  public String readUTF()
  {
    return this.din.readUTF();
  }

  public int readUnsignedByte()
  {
    return this.din.readUnsignedByte();
  }

  public int readUnsignedShort()
  {
    int i = this.din.read();
    return (0xFF & this.din.read()) << 8 | i & 0xFF;
  }

  public int skipBytes(int paramInt)
  {
    return this.din.skipBytes(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.LittleEndianInputStream
 * JD-Core Version:    0.6.2
 */