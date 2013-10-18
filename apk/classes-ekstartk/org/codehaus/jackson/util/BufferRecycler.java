package org.codehaus.jackson.util;

public class BufferRecycler
{
  protected final byte[][] _byteBuffers = new byte[BufferRecycler.ByteBufferType.values().length][];
  protected final char[][] _charBuffers = new char[BufferRecycler.CharBufferType.values().length][];

  private final byte[] balloc(int paramInt)
  {
    return new byte[paramInt];
  }

  private final char[] calloc(int paramInt)
  {
    return new char[paramInt];
  }

  public final byte[] allocByteBuffer(BufferRecycler.ByteBufferType paramByteBufferType)
  {
    int i = paramByteBufferType.ordinal();
    byte[] arrayOfByte = this._byteBuffers[i];
    if (arrayOfByte == null)
      return balloc(BufferRecycler.ByteBufferType.access$000(paramByteBufferType));
    this._byteBuffers[i] = null;
    return arrayOfByte;
  }

  public final char[] allocCharBuffer(BufferRecycler.CharBufferType paramCharBufferType)
  {
    return allocCharBuffer(paramCharBufferType, 0);
  }

  public final char[] allocCharBuffer(BufferRecycler.CharBufferType paramCharBufferType, int paramInt)
  {
    if (BufferRecycler.CharBufferType.access$100(paramCharBufferType) > paramInt)
      paramInt = BufferRecycler.CharBufferType.access$100(paramCharBufferType);
    int i = paramCharBufferType.ordinal();
    char[] arrayOfChar = this._charBuffers[i];
    if ((arrayOfChar == null) || (arrayOfChar.length < paramInt))
      return calloc(paramInt);
    this._charBuffers[i] = null;
    return arrayOfChar;
  }

  public final void releaseByteBuffer(BufferRecycler.ByteBufferType paramByteBufferType, byte[] paramArrayOfByte)
  {
    this._byteBuffers[paramByteBufferType.ordinal()] = paramArrayOfByte;
  }

  public final void releaseCharBuffer(BufferRecycler.CharBufferType paramCharBufferType, char[] paramArrayOfChar)
  {
    this._charBuffers[paramCharBufferType.ordinal()] = paramArrayOfChar;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.BufferRecycler
 * JD-Core Version:    0.6.2
 */