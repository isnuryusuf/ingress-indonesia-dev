package org.codehaus.jackson.io;

import java.lang.ref.SoftReference;
import org.codehaus.jackson.util.CharTypes;
import org.codehaus.jackson.util.TextBuffer;

public final class JsonStringEncoder
{
  private static final byte[] HEX_BYTES = CharTypes.copyHexBytes();
  private static final char[] HEX_CHARS = CharTypes.copyHexChars();
  protected static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder = new ThreadLocal();
  protected final char[] _quoteBuffer = new char[6];
  protected TextBuffer _textBuffer;

  public JsonStringEncoder()
  {
    this._quoteBuffer[0] = '\\';
    this._quoteBuffer[2] = '0';
    this._quoteBuffer[3] = '0';
  }

  private int _appendSingleEscape(int paramInt, char[] paramArrayOfChar)
  {
    if (paramInt < 0)
    {
      int i = -(paramInt + 1);
      paramArrayOfChar[1] = 'u';
      paramArrayOfChar[4] = HEX_CHARS[(i >> 4)];
      paramArrayOfChar[5] = HEX_CHARS[(i & 0xF)];
      return 6;
    }
    paramArrayOfChar[1] = ((char)paramInt);
    return 2;
  }

  public static JsonStringEncoder getInstance()
  {
    SoftReference localSoftReference = (SoftReference)_threadEncoder.get();
    if (localSoftReference == null);
    for (JsonStringEncoder localJsonStringEncoder = null; ; localJsonStringEncoder = (JsonStringEncoder)localSoftReference.get())
    {
      if (localJsonStringEncoder == null)
      {
        localJsonStringEncoder = new JsonStringEncoder();
        _threadEncoder.set(new SoftReference(localJsonStringEncoder));
      }
      return localJsonStringEncoder;
    }
  }

  public final char[] quoteAsString(String paramString)
  {
    TextBuffer localTextBuffer = this._textBuffer;
    if (localTextBuffer == null)
    {
      localTextBuffer = new TextBuffer(null);
      this._textBuffer = localTextBuffer;
    }
    char[] arrayOfChar = localTextBuffer.emptyAndGetCurrentSegment();
    int[] arrayOfInt = CharTypes.get7BitOutputEscapes();
    int i = arrayOfInt.length;
    int j = paramString.length();
    int k = 0;
    int m = 0;
    label57: int n;
    if (m < j)
    {
      n = paramString.charAt(m);
      if ((n < i) && (arrayOfInt[n] != 0))
        break label128;
      if (k < arrayOfChar.length)
        break label255;
      arrayOfChar = localTextBuffer.finishCurrentSegment();
    }
    label128: label255: for (int i1 = 0; ; i1 = k)
    {
      k = i1 + 1;
      arrayOfChar[i1] = n;
      m++;
      if (m < j)
        break label57;
      localTextBuffer.setCurrentLength(k);
      return localTextBuffer.contentsAsArray();
      int i2 = m + 1;
      int i3 = _appendSingleEscape(arrayOfInt[paramString.charAt(m)], this._quoteBuffer);
      if (k + i3 > arrayOfChar.length)
      {
        int i4 = arrayOfChar.length - k;
        if (i4 > 0)
          System.arraycopy(this._quoteBuffer, 0, arrayOfChar, k, i4);
        arrayOfChar = localTextBuffer.finishCurrentSegment();
        int i5 = i3 - i4;
        System.arraycopy(this._quoteBuffer, i4, arrayOfChar, k, i5);
        k += i5;
        m = i2;
        break;
      }
      System.arraycopy(this._quoteBuffer, 0, arrayOfChar, k, i3);
      k += i3;
      m = i2;
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.io.JsonStringEncoder
 * JD-Core Version:    0.6.2
 */