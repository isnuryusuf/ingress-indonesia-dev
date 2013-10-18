package com.badlogic.gdx.utils.compression;

public class CRC
{
  public static int[] Table = new int[256];
  int _value = -1;

  static
  {
    for (int i = 0; i < 256; i++)
    {
      int j = 0;
      int k = i;
      if (j < 8)
      {
        if ((k & 0x1) != 0)
          k = 0xEDB88320 ^ k >>> 1;
        while (true)
        {
          j++;
          break;
          k >>>= 1;
        }
      }
      Table[i] = k;
    }
  }

  public int GetDigest()
  {
    return 0xFFFFFFFF ^ this._value;
  }

  public void Init()
  {
    this._value = -1;
  }

  public void Update(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    for (int j = 0; j < i; j++)
      this._value = (Table[(0xFF & (this._value ^ paramArrayOfByte[j]))] ^ this._value >>> 8);
  }

  public void Update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    for (int i = 0; i < paramInt2; i++)
      this._value = (Table[(0xFF & (this._value ^ paramArrayOfByte[(paramInt1 + i)]))] ^ this._value >>> 8);
  }

  public void UpdateByte(int paramInt)
  {
    this._value = (Table[(0xFF & (paramInt ^ this._value))] ^ this._value >>> 8);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.CRC
 * JD-Core Version:    0.6.2
 */