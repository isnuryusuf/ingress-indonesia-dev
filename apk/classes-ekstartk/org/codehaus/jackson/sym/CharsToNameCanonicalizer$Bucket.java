package org.codehaus.jackson.sym;

final class CharsToNameCanonicalizer$Bucket
{
  private final String _symbol;
  private final Bucket mNext;

  public CharsToNameCanonicalizer$Bucket(String paramString, Bucket paramBucket)
  {
    this._symbol = paramString;
    this.mNext = paramBucket;
  }

  public final String find(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    String str = this._symbol;
    for (Bucket localBucket = this.mNext; ; localBucket = localBucket.getNext())
    {
      if (str.length() == paramInt2)
      {
        int i = 0;
        do
        {
          if (str.charAt(i) != paramArrayOfChar[(paramInt1 + i)])
            break;
          i++;
        }
        while (i < paramInt2);
        if (i == paramInt2)
          return str;
      }
      if (localBucket == null)
        break;
      str = localBucket.getSymbol();
    }
    return null;
  }

  public final Bucket getNext()
  {
    return this.mNext;
  }

  public final String getSymbol()
  {
    return this._symbol;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.sym.CharsToNameCanonicalizer.Bucket
 * JD-Core Version:    0.6.2
 */