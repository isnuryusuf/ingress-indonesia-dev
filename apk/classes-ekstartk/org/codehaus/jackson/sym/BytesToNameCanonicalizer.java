package org.codehaus.jackson.sym;

import java.util.Arrays;
import org.codehaus.jackson.util.InternCache;

public final class BytesToNameCanonicalizer
{
  private int _collCount;
  private int _collEnd;
  private BytesToNameCanonicalizer.Bucket[] _collList;
  private boolean _collListShared;
  private int _count;
  final boolean _intern;
  private int[] _mainHash;
  private int _mainHashMask;
  private boolean _mainHashShared;
  private Name[] _mainNames;
  private boolean _mainNamesShared;
  private transient boolean _needRehash;
  final BytesToNameCanonicalizer _parent;

  private BytesToNameCanonicalizer(int paramInt, boolean paramBoolean)
  {
    this._parent = null;
    this._intern = paramBoolean;
    if (paramInt < i)
      paramInt = i;
    while (true)
    {
      initTables(paramInt);
      return;
      if ((paramInt & paramInt - 1) != 0)
      {
        while (i < paramInt)
          i += i;
        paramInt = i;
      }
    }
  }

  private BytesToNameCanonicalizer(BytesToNameCanonicalizer paramBytesToNameCanonicalizer, boolean paramBoolean)
  {
    this._parent = paramBytesToNameCanonicalizer;
    this._intern = paramBoolean;
    this._count = paramBytesToNameCanonicalizer._count;
    this._mainHashMask = paramBytesToNameCanonicalizer._mainHashMask;
    this._mainHash = paramBytesToNameCanonicalizer._mainHash;
    this._mainNames = paramBytesToNameCanonicalizer._mainNames;
    this._collList = paramBytesToNameCanonicalizer._collList;
    this._collCount = paramBytesToNameCanonicalizer._collCount;
    this._collEnd = paramBytesToNameCanonicalizer._collEnd;
    this._needRehash = false;
    this._mainHashShared = true;
    this._mainNamesShared = true;
    this._collListShared = true;
  }

  private void _addSymbol(int paramInt, Name paramName)
  {
    if (this._mainHashShared)
      unshareMain();
    if (this._needRehash)
      rehash();
    this._count = (1 + this._count);
    int i = paramInt & this._mainHashMask;
    int i1;
    if (this._mainNames[i] == null)
    {
      this._mainHash[i] = (paramInt << 8);
      if (this._mainNamesShared)
        unshareNames();
      this._mainNames[i] = paramName;
      int n = this._mainHash.length;
      if (this._count > n >> 1)
      {
        i1 = n >> 2;
        if (this._count <= n - i1)
          break label260;
        this._needRehash = true;
      }
    }
    label200: 
    while (this._collCount < i1)
    {
      return;
      if (this._collListShared)
        unshareCollision();
      this._collCount = (1 + this._collCount);
      int j = this._mainHash[i];
      int k = j & 0xFF;
      int m;
      if (k == 0)
        if (this._collEnd <= 254)
        {
          m = this._collEnd;
          this._collEnd = (1 + this._collEnd);
          if (m >= this._collList.length)
            expandCollision();
          this._mainHash[i] = (j & 0xFFFFFF00 | m + 1);
        }
      while (true)
      {
        this._collList[m] = new BytesToNameCanonicalizer.Bucket(paramName, this._collList[m]);
        break;
        m = findBestBucket();
        break label200;
        m = k - 1;
      }
    }
    label260: this._needRehash = true;
  }

  public static final int calcHash(int paramInt)
  {
    int i = paramInt ^ paramInt >>> 16;
    return i ^ i >>> 8;
  }

  public static final int calcHash(int paramInt1, int paramInt2)
  {
    int i = paramInt2 + paramInt1 * 31;
    int j = i ^ i >>> 16;
    return j ^ j >>> 8;
  }

  public static final int calcHash(int[] paramArrayOfInt, int paramInt)
  {
    int i = paramArrayOfInt[0];
    for (int j = 1; j < paramInt; j++)
      i = i * 31 + paramArrayOfInt[j];
    int k = i ^ i >>> 16;
    return k ^ k >>> 8;
  }

  private static Name constructName(int paramInt1, String paramString, int[] paramArrayOfInt, int paramInt2)
  {
    if (paramInt2 < 4);
    int[] arrayOfInt;
    int i;
    switch (paramInt2)
    {
    default:
      arrayOfInt = new int[paramInt2];
      i = 0;
    case 1:
    case 2:
    case 3:
    }
    while (i < paramInt2)
    {
      arrayOfInt[i] = paramArrayOfInt[i];
      i++;
      continue;
      return new Name1(paramString, paramInt1, paramArrayOfInt[0]);
      return new Name2(paramString, paramInt1, paramArrayOfInt[0], paramArrayOfInt[1]);
      return new Name3(paramString, paramInt1, paramArrayOfInt[0], paramArrayOfInt[1], paramArrayOfInt[2]);
    }
    return new NameN(paramString, paramInt1, arrayOfInt, paramInt2);
  }

  public static BytesToNameCanonicalizer createRoot()
  {
    return new BytesToNameCanonicalizer(64, true);
  }

  private void expandCollision()
  {
    BytesToNameCanonicalizer.Bucket[] arrayOfBucket = this._collList;
    int i = arrayOfBucket.length;
    this._collList = new BytesToNameCanonicalizer.Bucket[i + i];
    System.arraycopy(arrayOfBucket, 0, this._collList, 0, i);
  }

  private int findBestBucket()
  {
    BytesToNameCanonicalizer.Bucket[] arrayOfBucket = this._collList;
    int i = 2147483647;
    int j = -1;
    int k = 0;
    int m = this._collEnd;
    int n;
    if (k < m)
    {
      n = arrayOfBucket[k].length();
      if (n >= i)
        break label64;
      if (n == 1)
        return k;
      j = k;
    }
    while (true)
    {
      k++;
      i = n;
      break;
      return j;
      label64: n = i;
    }
  }

  public static Name getEmptyName()
  {
    return Name1.getEmptyName();
  }

  private void initTables(int paramInt)
  {
    this._count = 0;
    this._mainHash = new int[paramInt];
    this._mainNames = new Name[paramInt];
    this._mainHashShared = false;
    this._mainNamesShared = false;
    this._mainHashMask = (paramInt - 1);
    this._collListShared = true;
    this._collList = null;
    this._collEnd = 0;
    this._needRehash = false;
  }

  private void markAsShared()
  {
    this._mainHashShared = true;
    this._mainNamesShared = true;
    this._collListShared = true;
  }

  private void mergeChild(BytesToNameCanonicalizer paramBytesToNameCanonicalizer)
  {
    while (true)
    {
      try
      {
        int i = paramBytesToNameCanonicalizer._count;
        int j = this._count;
        if (i <= j)
          return;
        if (paramBytesToNameCanonicalizer.size() > 6000)
        {
          initTables(64);
          continue;
        }
      }
      finally
      {
      }
      this._count = paramBytesToNameCanonicalizer._count;
      this._mainHash = paramBytesToNameCanonicalizer._mainHash;
      this._mainNames = paramBytesToNameCanonicalizer._mainNames;
      this._mainHashShared = true;
      this._mainNamesShared = true;
      this._mainHashMask = paramBytesToNameCanonicalizer._mainHashMask;
      this._collList = paramBytesToNameCanonicalizer._collList;
      this._collCount = paramBytesToNameCanonicalizer._collCount;
      this._collEnd = paramBytesToNameCanonicalizer._collEnd;
    }
  }

  private void nukeSymbols()
  {
    this._count = 0;
    Arrays.fill(this._mainHash, 0);
    Arrays.fill(this._mainNames, null);
    Arrays.fill(this._collList, null);
    this._collCount = 0;
    this._collEnd = 0;
  }

  private void rehash()
  {
    this._needRehash = false;
    this._mainNamesShared = false;
    int i = this._mainHash.length;
    int j = i + i;
    if (j > 65536)
      nukeSymbols();
    int i2;
    label349: 
    do
    {
      int m;
      int n;
      do
      {
        return;
        this._mainHash = new int[j];
        this._mainHashMask = (j - 1);
        Name[] arrayOfName = this._mainNames;
        this._mainNames = new Name[j];
        int k = 0;
        m = 0;
        while (k < i)
        {
          Name localName2 = arrayOfName[k];
          if (localName2 != null)
          {
            m++;
            int i10 = localName2.hashCode();
            int i11 = i10 & this._mainHashMask;
            this._mainNames[i11] = localName2;
            this._mainHash[i11] = (i10 << 8);
          }
          k++;
        }
        n = this._collEnd;
      }
      while (n == 0);
      this._collCount = 0;
      this._collEnd = 0;
      this._collListShared = false;
      BytesToNameCanonicalizer.Bucket[] arrayOfBucket = this._collList;
      this._collList = new BytesToNameCanonicalizer.Bucket[arrayOfBucket.length];
      int i1 = 0;
      int i3;
      for (i2 = m; i1 < n; i2 = i3)
      {
        BytesToNameCanonicalizer.Bucket localBucket1 = arrayOfBucket[i1];
        i3 = i2;
        BytesToNameCanonicalizer.Bucket localBucket2 = localBucket1;
        while (localBucket2 != null)
        {
          int i4 = i3 + 1;
          Name localName1 = localBucket2._name;
          int i5 = localName1.hashCode();
          int i6 = i5 & this._mainHashMask;
          int i7 = this._mainHash[i6];
          if (this._mainNames[i6] == null)
          {
            this._mainHash[i6] = (i5 << 8);
            this._mainNames[i6] = localName1;
            localBucket2 = localBucket2._next;
            i3 = i4;
          }
          else
          {
            this._collCount = (1 + this._collCount);
            int i8 = i7 & 0xFF;
            int i9;
            if (i8 == 0)
              if (this._collEnd <= 254)
              {
                i9 = this._collEnd;
                this._collEnd = (1 + this._collEnd);
                if (i9 >= this._collList.length)
                  expandCollision();
                this._mainHash[i6] = (i7 & 0xFFFFFF00 | i9 + 1);
              }
            while (true)
            {
              this._collList[i9] = new BytesToNameCanonicalizer.Bucket(localName1, this._collList[i9]);
              break;
              i9 = findBestBucket();
              break label349;
              i9 = i8 - 1;
            }
          }
        }
        i1++;
      }
    }
    while (i2 == this._count);
    throw new RuntimeException("Internal error: count after rehash " + i2 + "; should be " + this._count);
  }

  private void unshareCollision()
  {
    BytesToNameCanonicalizer.Bucket[] arrayOfBucket = this._collList;
    if (arrayOfBucket == null)
      this._collList = new BytesToNameCanonicalizer.Bucket[32];
    while (true)
    {
      this._collListShared = false;
      return;
      int i = arrayOfBucket.length;
      this._collList = new BytesToNameCanonicalizer.Bucket[i];
      System.arraycopy(arrayOfBucket, 0, this._collList, 0, i);
    }
  }

  private void unshareMain()
  {
    int[] arrayOfInt = this._mainHash;
    int i = this._mainHash.length;
    this._mainHash = new int[i];
    System.arraycopy(arrayOfInt, 0, this._mainHash, 0, i);
    this._mainHashShared = false;
  }

  private void unshareNames()
  {
    Name[] arrayOfName = this._mainNames;
    int i = arrayOfName.length;
    this._mainNames = new Name[i];
    System.arraycopy(arrayOfName, 0, this._mainNames, 0, i);
    this._mainNamesShared = false;
  }

  public final Name addName(String paramString, int[] paramArrayOfInt, int paramInt)
  {
    if (this._intern)
      paramString = InternCache.instance.intern(paramString);
    int i = calcHash(paramArrayOfInt, paramInt);
    Name localName = constructName(i, paramString, paramArrayOfInt, paramInt);
    _addSymbol(i, localName);
    return localName;
  }

  public final Name findName(int paramInt)
  {
    int i = calcHash(paramInt);
    int j = i & this._mainHashMask;
    int k = this._mainHash[j];
    Name localName;
    if ((i ^ k >> 8) << 8 == 0)
    {
      localName = this._mainNames[j];
      if (localName != null);
    }
    BytesToNameCanonicalizer.Bucket localBucket;
    do
    {
      int m;
      do
      {
        do
        {
          return null;
          if (!localName.equals(paramInt))
            break;
          return localName;
        }
        while (k == 0);
        m = k & 0xFF;
      }
      while (m <= 0);
      int n = m - 1;
      localBucket = this._collList[n];
    }
    while (localBucket == null);
    return localBucket.find(i, paramInt, 0);
  }

  public final Name findName(int paramInt1, int paramInt2)
  {
    int i = calcHash(paramInt1, paramInt2);
    int j = i & this._mainHashMask;
    int k = this._mainHash[j];
    Name localName;
    if ((i ^ k >> 8) << 8 == 0)
    {
      localName = this._mainNames[j];
      if (localName != null);
    }
    BytesToNameCanonicalizer.Bucket localBucket;
    do
    {
      int m;
      do
      {
        do
        {
          return null;
          if (!localName.equals(paramInt1, paramInt2))
            break;
          return localName;
        }
        while (k == 0);
        m = k & 0xFF;
      }
      while (m <= 0);
      int n = m - 1;
      localBucket = this._collList[n];
    }
    while (localBucket == null);
    return localBucket.find(i, paramInt1, paramInt2);
  }

  public final Name findName(int[] paramArrayOfInt, int paramInt)
  {
    int i = calcHash(paramArrayOfInt, paramInt);
    int j = i & this._mainHashMask;
    int k = this._mainHash[j];
    if ((i ^ k >> 8) << 8 == 0)
    {
      Name localName = this._mainNames[j];
      if ((localName == null) || (localName.equals(paramArrayOfInt, paramInt)))
        return localName;
    }
    else if (k == 0)
    {
      return null;
    }
    int m = k & 0xFF;
    if (m > 0)
    {
      int n = m - 1;
      BytesToNameCanonicalizer.Bucket localBucket = this._collList[n];
      if (localBucket != null)
        return localBucket.find(i, paramArrayOfInt, paramInt);
    }
    return null;
  }

  public final BytesToNameCanonicalizer makeChild(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      BytesToNameCanonicalizer localBytesToNameCanonicalizer = new BytesToNameCanonicalizer(this, paramBoolean2);
      return localBytesToNameCanonicalizer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean maybeDirty()
  {
    return !this._mainHashShared;
  }

  public final void release()
  {
    if ((maybeDirty()) && (this._parent != null))
    {
      this._parent.mergeChild(this);
      markAsShared();
    }
  }

  public final int size()
  {
    return this._count;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.sym.BytesToNameCanonicalizer
 * JD-Core Version:    0.6.2
 */