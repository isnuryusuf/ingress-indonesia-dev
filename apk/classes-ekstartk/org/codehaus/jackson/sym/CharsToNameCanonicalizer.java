package org.codehaus.jackson.sym;

import java.util.Arrays;
import org.codehaus.jackson.util.InternCache;

public final class CharsToNameCanonicalizer
{
  static final CharsToNameCanonicalizer sBootstrapSymbolTable = new CharsToNameCanonicalizer();
  protected CharsToNameCanonicalizer.Bucket[] _buckets;
  protected final boolean _canonicalize;
  protected boolean _dirty;
  protected int _indexMask;
  protected final boolean _intern;
  protected CharsToNameCanonicalizer _parent;
  protected int _size;
  protected int _sizeThreshold;
  protected String[] _symbols;

  private CharsToNameCanonicalizer()
  {
    this._canonicalize = true;
    this._intern = true;
    this._dirty = true;
    initTables(64);
  }

  private CharsToNameCanonicalizer(CharsToNameCanonicalizer paramCharsToNameCanonicalizer, boolean paramBoolean1, boolean paramBoolean2, String[] paramArrayOfString, CharsToNameCanonicalizer.Bucket[] paramArrayOfBucket, int paramInt)
  {
    this._parent = paramCharsToNameCanonicalizer;
    this._canonicalize = paramBoolean1;
    this._intern = paramBoolean2;
    this._symbols = paramArrayOfString;
    this._buckets = paramArrayOfBucket;
    this._size = paramInt;
    int i = paramArrayOfString.length;
    this._sizeThreshold = (i - (i >> 2));
    this._indexMask = (i - 1);
    this._dirty = false;
  }

  public static int calcHash(String paramString)
  {
    int i = paramString.charAt(0);
    int j = 1;
    int k = paramString.length();
    while (j < k)
    {
      i = i * 31 + paramString.charAt(j);
      j++;
    }
    return i;
  }

  public static int calcHash(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfChar[0];
    for (int j = 1; j < paramInt2; j++)
      i = i * 31 + paramArrayOfChar[j];
    return i;
  }

  private void copyArrays()
  {
    String[] arrayOfString = this._symbols;
    int i = arrayOfString.length;
    this._symbols = new String[i];
    System.arraycopy(arrayOfString, 0, this._symbols, 0, i);
    CharsToNameCanonicalizer.Bucket[] arrayOfBucket = this._buckets;
    int j = arrayOfBucket.length;
    this._buckets = new CharsToNameCanonicalizer.Bucket[j];
    System.arraycopy(arrayOfBucket, 0, this._buckets, 0, j);
  }

  public static CharsToNameCanonicalizer createRoot()
  {
    return sBootstrapSymbolTable.makeOrphan();
  }

  private void initTables(int paramInt)
  {
    this._symbols = new String[paramInt];
    this._buckets = new CharsToNameCanonicalizer.Bucket[paramInt >> 1];
    this._indexMask = (paramInt - 1);
    this._size = 0;
    this._sizeThreshold = (paramInt - (paramInt >> 2));
  }

  private CharsToNameCanonicalizer makeOrphan()
  {
    return new CharsToNameCanonicalizer(null, true, true, this._symbols, this._buckets, this._size);
  }

  private void mergeChild(CharsToNameCanonicalizer paramCharsToNameCanonicalizer)
  {
    try
    {
      if (paramCharsToNameCanonicalizer.size() > 12000)
        initTables(64);
      while (true)
      {
        this._dirty = false;
        do
          return;
        while (paramCharsToNameCanonicalizer.size() <= size());
        this._symbols = paramCharsToNameCanonicalizer._symbols;
        this._buckets = paramCharsToNameCanonicalizer._buckets;
        this._size = paramCharsToNameCanonicalizer._size;
        this._sizeThreshold = paramCharsToNameCanonicalizer._sizeThreshold;
        this._indexMask = paramCharsToNameCanonicalizer._indexMask;
      }
    }
    finally
    {
    }
  }

  private void rehash()
  {
    int i = this._symbols.length;
    int j = i + i;
    if (j > 65536)
    {
      this._size = 0;
      Arrays.fill(this._symbols, null);
      Arrays.fill(this._buckets, null);
      this._dirty = true;
    }
    label155: int i2;
    do
    {
      return;
      String[] arrayOfString = this._symbols;
      CharsToNameCanonicalizer.Bucket[] arrayOfBucket = this._buckets;
      this._symbols = new String[j];
      this._buckets = new CharsToNameCanonicalizer.Bucket[j >> 1];
      this._indexMask = (j - 1);
      this._sizeThreshold += this._sizeThreshold;
      int k = 0;
      int m = 0;
      if (k < i)
      {
        String str2 = arrayOfString[k];
        int i5;
        if (str2 != null)
        {
          m++;
          i5 = calcHash(str2) & this._indexMask;
          if (this._symbols[i5] != null)
            break label155;
          this._symbols[i5] = str2;
        }
        while (true)
        {
          k++;
          break;
          int i6 = i5 >> 1;
          this._buckets[i6] = new CharsToNameCanonicalizer.Bucket(str2, this._buckets[i6]);
        }
      }
      int n = i >> 1;
      int i1 = 0;
      i2 = m;
      while (i1 < n)
      {
        CharsToNameCanonicalizer.Bucket localBucket = arrayOfBucket[i1];
        if (localBucket != null)
        {
          i2++;
          String str1 = localBucket.getSymbol();
          int i3 = calcHash(str1) & this._indexMask;
          if (this._symbols[i3] == null)
            this._symbols[i3] = str1;
          while (true)
          {
            localBucket = localBucket.getNext();
            break;
            int i4 = i3 >> 1;
            this._buckets[i4] = new CharsToNameCanonicalizer.Bucket(str1, this._buckets[i4]);
          }
        }
        i1++;
      }
    }
    while (i2 == this._size);
    throw new Error("Internal error on SymbolTable.rehash(): had " + this._size + " entries; now have " + i2 + ".");
  }

  public final String findSymbol(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 <= 0)
      return "";
    if (!this._canonicalize)
      return new String(paramArrayOfChar, paramInt1, paramInt2);
    int i = paramInt3 & this._indexMask;
    String str1 = this._symbols[i];
    if (str1 != null)
    {
      if (str1.length() == paramInt2)
      {
        int m = 0;
        do
        {
          if (str1.charAt(m) != paramArrayOfChar[(paramInt1 + m)])
            break;
          m++;
        }
        while (m < paramInt2);
        if (m == paramInt2)
          return str1;
      }
      CharsToNameCanonicalizer.Bucket localBucket = this._buckets[(i >> 1)];
      if (localBucket != null)
      {
        String str3 = localBucket.find(paramArrayOfChar, paramInt1, paramInt2);
        if (str3 != null)
          return str3;
      }
    }
    int j;
    if (!this._dirty)
    {
      copyArrays();
      this._dirty = true;
      j = i;
    }
    while (true)
    {
      this._size = (1 + this._size);
      String str2 = new String(paramArrayOfChar, paramInt1, paramInt2);
      if (this._intern)
        str2 = InternCache.instance.intern(str2);
      if (this._symbols[j] == null)
      {
        this._symbols[j] = str2;
        return str2;
        if (this._size >= this._sizeThreshold)
        {
          rehash();
          j = calcHash(paramArrayOfChar, paramInt1, paramInt2) & this._indexMask;
        }
      }
      else
      {
        int k = j >> 1;
        this._buckets[k] = new CharsToNameCanonicalizer.Bucket(str2, this._buckets[k]);
        return str2;
        j = i;
      }
    }
  }

  public final CharsToNameCanonicalizer makeChild(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      CharsToNameCanonicalizer localCharsToNameCanonicalizer = new CharsToNameCanonicalizer(this, paramBoolean1, paramBoolean2, this._symbols, this._buckets, this._size);
      return localCharsToNameCanonicalizer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean maybeDirty()
  {
    return this._dirty;
  }

  public final void release()
  {
    if (!maybeDirty());
    while (this._parent == null)
      return;
    this._parent.mergeChild(this);
    this._dirty = false;
  }

  public final int size()
  {
    return this._size;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.sym.CharsToNameCanonicalizer
 * JD-Core Version:    0.6.2
 */