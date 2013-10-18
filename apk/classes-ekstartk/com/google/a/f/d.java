package com.google.a.f;

import com.google.a.a.an;
import java.nio.CharBuffer;

public final class d
{
  private static long a(Readable paramReadable, Appendable paramAppendable)
  {
    an.a(paramReadable);
    an.a(paramAppendable);
    CharBuffer localCharBuffer = CharBuffer.allocate(2048);
    long l = 0L;
    while (paramReadable.read(localCharBuffer) != -1)
    {
      localCharBuffer.flip();
      paramAppendable.append(localCharBuffer);
      l += localCharBuffer.remaining();
      localCharBuffer.clear();
    }
    return l;
  }

  public static String a(Readable paramReadable)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(paramReadable, localStringBuilder);
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.f.d
 * JD-Core Version:    0.6.2
 */