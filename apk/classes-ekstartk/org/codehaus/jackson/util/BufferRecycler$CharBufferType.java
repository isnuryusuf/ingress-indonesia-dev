package org.codehaus.jackson.util;

public enum BufferRecycler$CharBufferType
{
  private final int size;

  static
  {
    CONCAT_BUFFER = new CharBufferType("CONCAT_BUFFER", 1, 2000);
    TEXT_BUFFER = new CharBufferType("TEXT_BUFFER", 2, 200);
    NAME_COPY_BUFFER = new CharBufferType("NAME_COPY_BUFFER", 3, 200);
    CharBufferType[] arrayOfCharBufferType = new CharBufferType[4];
    arrayOfCharBufferType[0] = TOKEN_BUFFER;
    arrayOfCharBufferType[1] = CONCAT_BUFFER;
    arrayOfCharBufferType[2] = TEXT_BUFFER;
    arrayOfCharBufferType[3] = NAME_COPY_BUFFER;
  }

  private BufferRecycler$CharBufferType(int paramInt)
  {
    this.size = paramInt;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.BufferRecycler.CharBufferType
 * JD-Core Version:    0.6.2
 */