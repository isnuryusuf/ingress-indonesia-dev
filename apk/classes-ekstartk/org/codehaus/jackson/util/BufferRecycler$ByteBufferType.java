package org.codehaus.jackson.util;

public enum BufferRecycler$ByteBufferType
{
  private final int size;

  static
  {
    WRITE_CONCAT_BUFFER = new ByteBufferType("WRITE_CONCAT_BUFFER", 2, 2000);
    ByteBufferType[] arrayOfByteBufferType = new ByteBufferType[3];
    arrayOfByteBufferType[0] = READ_IO_BUFFER;
    arrayOfByteBufferType[1] = WRITE_ENCODING_BUFFER;
    arrayOfByteBufferType[2] = WRITE_CONCAT_BUFFER;
  }

  private BufferRecycler$ByteBufferType(int paramInt)
  {
    this.size = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.BufferRecycler.ByteBufferType
 * JD-Core Version:    0.6.2
 */