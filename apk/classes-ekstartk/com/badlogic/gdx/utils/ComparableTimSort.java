package com.badlogic.gdx.utils;

class ComparableTimSort
{
  private static final boolean DEBUG = false;
  private static final int INITIAL_TMP_STORAGE_LENGTH = 256;
  private static final int MIN_GALLOP = 7;
  private static final int MIN_MERGE = 32;
  private Object[] a;
  private int minGallop = 7;
  private final int[] runBase;
  private final int[] runLen;
  private int stackSize = 0;
  private Object[] tmp;

  ComparableTimSort()
  {
    this.tmp = new Object[256];
    this.runBase = new int[40];
    this.runLen = new int[40];
  }

  private ComparableTimSort(Object[] paramArrayOfObject)
  {
    this.a = paramArrayOfObject;
    int i = paramArrayOfObject.length;
    int j;
    int k;
    if (i < 512)
    {
      j = i >>> 1;
      this.tmp = new Object[j];
      if (i >= 120)
        break label75;
      k = 5;
    }
    while (true)
    {
      this.runBase = new int[k];
      this.runLen = new int[k];
      return;
      j = 256;
      break;
      label75: if (i < 1542)
        k = 10;
      else if (i < 119151)
        k = 19;
      else
        k = 40;
    }
  }

  private static void binarySort(Object[] paramArrayOfObject, int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if (paramInt3 == paramInt1)
      i = paramInt3 + 1;
    while (true)
    {
      if (i < paramInt2)
      {
        Comparable localComparable = (Comparable)paramArrayOfObject[i];
        int j = i;
        int k = paramInt1;
        while (k < j)
        {
          int n = k + j >>> 1;
          if (localComparable.compareTo(paramArrayOfObject[n]) < 0)
            j = n;
          else
            k = n + 1;
        }
        int m = i - k;
        switch (m)
        {
        default:
          System.arraycopy(paramArrayOfObject, k, paramArrayOfObject, k + 1, m);
        case 2:
        case 1:
        }
        while (true)
        {
          paramArrayOfObject[k] = localComparable;
          i++;
          break;
          paramArrayOfObject[(k + 2)] = paramArrayOfObject[(k + 1)];
          paramArrayOfObject[(k + 1)] = paramArrayOfObject[k];
        }
      }
      return;
      i = paramInt3;
    }
  }

  private static int countRunAndMakeAscending(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + 1;
    if (i == paramInt2)
      return 1;
    int j = i + 1;
    if (((Comparable)paramArrayOfObject[i]).compareTo(paramArrayOfObject[paramInt1]) < 0)
    {
      while ((j < paramInt2) && (((Comparable)paramArrayOfObject[j]).compareTo(paramArrayOfObject[(j - 1)]) < 0))
        j++;
      reverseRange(paramArrayOfObject, paramInt1, j);
    }
    for (int k = j; ; k = j)
    {
      return k - paramInt1;
      while ((j < paramInt2) && (((Comparable)paramArrayOfObject[j]).compareTo(paramArrayOfObject[(j - 1)]) >= 0))
        j++;
    }
  }

  private Object[] ensureCapacity(int paramInt)
  {
    int n;
    if (this.tmp.length < paramInt)
    {
      int i = paramInt | paramInt >> 1;
      int j = i | i >> 2;
      int k = j | j >> 4;
      int m = k | k >> 8;
      n = 1 + (m | m >> 16);
      if (n >= 0)
        break label68;
    }
    while (true)
    {
      this.tmp = new Object[paramInt];
      return this.tmp;
      label68: paramInt = Math.min(n, this.a.length >>> 1);
    }
  }

  private static int gallopLeft(Comparable<Object> paramComparable, Object[] paramArrayOfObject, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    int j = 1;
    int i4;
    if (paramComparable.compareTo(paramArrayOfObject[(paramInt1 + paramInt3)]) > 0)
      i4 = paramInt2 - paramInt3;
    while (true)
    {
      int i5;
      if ((j < i4) && (paramComparable.compareTo(paramArrayOfObject[(j + (paramInt1 + paramInt3))]) > 0))
      {
        i5 = 1 + (j << 1);
        if (i5 <= 0)
        {
          i = j;
          j = i4;
        }
      }
      else
      {
        if (j > i4);
        while (true)
        {
          int m = i + paramInt3;
          int n = i4 + paramInt3;
          int i1 = m + 1;
          label103: int i2;
          int k;
          while (true)
            if (i1 < n)
            {
              i2 = i1 + (n - i1 >>> 1);
              if (paramComparable.compareTo(paramArrayOfObject[(paramInt1 + i2)]) > 0)
              {
                i1 = i2 + 1;
                continue;
                k = paramInt3 + 1;
              }
            }
          while (true)
          {
            int i3;
            if ((j < k) && (paramComparable.compareTo(paramArrayOfObject[(paramInt1 + paramInt3 - j)]) <= 0))
            {
              i3 = 1 + (j << 1);
              if (i3 <= 0)
              {
                i = j;
                j = k;
              }
            }
            else
            {
              if (j > k);
              while (true)
              {
                m = paramInt3 - k;
                n = paramInt3 - i;
                break;
                n = i2;
                break label103;
                return n;
                k = j;
              }
              i = j;
              j = i3;
            }
          }
          i4 = j;
        }
        i = j;
        j = i5;
      }
    }
  }

  private static int gallopRight(Comparable<Object> paramComparable, Object[] paramArrayOfObject, int paramInt1, int paramInt2, int paramInt3)
  {
    int i6;
    int i7;
    int i8;
    if (paramComparable.compareTo(paramArrayOfObject[(paramInt1 + paramInt3)]) < 0)
    {
      i6 = paramInt3 + 1;
      i7 = 1;
      i8 = 0;
    }
    while (true)
    {
      int i9;
      if ((i7 < i6) && (paramComparable.compareTo(paramArrayOfObject[(paramInt1 + paramInt3 - i7)]) < 0))
      {
        i9 = 1 + (i7 << 1);
        if (i9 <= 0)
        {
          i8 = i7;
          i7 = i6;
        }
      }
      else
      {
        if (i7 > i6);
        while (true)
        {
          int i1 = paramInt3 - i6;
          int n = paramInt3 - i8;
          int i2 = i1 + 1;
          label103: int i3;
          int i;
          int j;
          int k;
          while (true)
            if (i2 < n)
            {
              i3 = i2 + (n - i2 >>> 1);
              if (paramComparable.compareTo(paramArrayOfObject[(paramInt1 + i3)]) < 0)
              {
                n = i3;
                continue;
                i = paramInt2 - paramInt3;
                j = 1;
                k = 0;
              }
            }
          while (true)
          {
            int i4;
            if ((j < i) && (paramComparable.compareTo(paramArrayOfObject[(j + (paramInt1 + paramInt3))]) >= 0))
            {
              i4 = 1 + (j << 1);
              if (i4 <= 0)
              {
                k = j;
                j = i;
              }
            }
            else
            {
              if (j > i);
              while (true)
              {
                int m = k + paramInt3;
                n = i + paramInt3;
                i1 = m;
                break;
                i2 = i3 + 1;
                break label103;
                return n;
                i = j;
              }
              int i5 = j;
              j = i4;
              k = i5;
            }
          }
          i6 = i7;
        }
        int i10 = i7;
        i7 = i9;
        i8 = i10;
      }
    }
  }

  private void mergeAt(int paramInt)
  {
    int i = this.runBase[paramInt];
    int j = this.runLen[paramInt];
    int k = this.runBase[(paramInt + 1)];
    int m = this.runLen[(paramInt + 1)];
    this.runLen[paramInt] = (j + m);
    if (paramInt == -3 + this.stackSize)
    {
      this.runBase[(paramInt + 1)] = this.runBase[(paramInt + 2)];
      this.runLen[(paramInt + 1)] = this.runLen[(paramInt + 2)];
    }
    this.stackSize = (-1 + this.stackSize);
    int n = gallopRight((Comparable)this.a[k], this.a, i, j, 0);
    int i1 = i + n;
    int i2 = j - n;
    if (i2 == 0);
    int i3;
    do
    {
      return;
      i3 = gallopLeft((Comparable)this.a[(-1 + (i1 + i2))], this.a, k, m, m - 1);
    }
    while (i3 == 0);
    if (i2 <= i3)
    {
      mergeLo(i1, i2, k, i3);
      return;
    }
    mergeHi(i1, i2, k, i3);
  }

  private void mergeCollapse()
  {
    while (this.stackSize > 1)
    {
      int i = -2 + this.stackSize;
      if ((i > 0) && (this.runLen[(i - 1)] <= this.runLen[i] + this.runLen[(i + 1)]))
      {
        if (this.runLen[(i - 1)] < this.runLen[(i + 1)])
          i--;
        mergeAt(i);
      }
      else
      {
        if (this.runLen[i] > this.runLen[(i + 1)])
          break;
        mergeAt(i);
      }
    }
  }

  private void mergeForceCollapse()
  {
    while (this.stackSize > 1)
    {
      int i = -2 + this.stackSize;
      if ((i > 0) && (this.runLen[(i - 1)] < this.runLen[(i + 1)]))
        i--;
      mergeAt(i);
    }
  }

  private void mergeHi(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object[] arrayOfObject1 = this.a;
    Object[] arrayOfObject2 = ensureCapacity(paramInt4);
    System.arraycopy(arrayOfObject1, paramInt3, arrayOfObject2, 0, paramInt4);
    int i = -1 + (paramInt1 + paramInt2);
    int j = paramInt4 - 1;
    int k = -1 + (paramInt3 + paramInt4);
    int m = k - 1;
    int n = i - 1;
    arrayOfObject1[k] = arrayOfObject1[i];
    int i1 = paramInt2 - 1;
    if (i1 == 0)
    {
      System.arraycopy(arrayOfObject2, 0, arrayOfObject1, m - j, paramInt4);
      return;
    }
    if (paramInt4 == 1)
    {
      int i38 = m - i1;
      System.arraycopy(arrayOfObject1, 1 + (n - i1), arrayOfObject1, i38 + 1, i1);
      arrayOfObject1[i38] = arrayOfObject2[j];
      return;
    }
    int i2 = this.minGallop;
    int i3 = m;
    int i4 = i2;
    int i5 = i1;
    int i6 = i3;
    int i7 = n;
    int i8 = 0;
    int i9 = j;
    int i10 = 0;
    int i11 = i9;
    label178: int i35;
    int i36;
    int i37;
    int i15;
    int i16;
    label251: int i12;
    int i13;
    int i18;
    int i19;
    int i20;
    int i21;
    int i22;
    if (((Comparable)arrayOfObject2[i11]).compareTo(arrayOfObject1[i7]) < 0)
    {
      i35 = i6 - 1;
      i36 = i7 - 1;
      arrayOfObject1[i6] = arrayOfObject1[i7];
      i37 = i8 + 1;
      i5--;
      if (i5 != 0)
        break label850;
      i7 = i36;
      j = i11;
      i15 = i4;
      i16 = i35;
      if (i15 <= 0)
        i15 = 1;
      this.minGallop = i15;
      if (paramInt4 == 1)
      {
        int i17 = i16 - i5;
        System.arraycopy(arrayOfObject1, 1 + (i7 - i5), arrayOfObject1, i17 + 1, i5);
        arrayOfObject1[i17] = arrayOfObject2[j];
      }
    }
    else
    {
      i12 = i6 - 1;
      i13 = i11 - 1;
      arrayOfObject1[i6] = arrayOfObject2[i11];
      int i14 = i10 + 1;
      paramInt4--;
      if (paramInt4 == 1)
        break label835;
      i18 = i7;
      i19 = i5;
      i20 = i14;
      i21 = 0;
      i22 = i13;
    }
    while (true)
    {
      if ((i21 | i20) >= i4)
      {
        int i23 = i4;
        int i24 = i18;
        int i25 = i23;
        label387: int i26 = i19 - gallopRight((Comparable)arrayOfObject2[i22], arrayOfObject1, paramInt1, i19, i19 - 1);
        if (i26 != 0)
        {
          i12 -= i26;
          i24 -= i26;
          i19 -= i26;
          System.arraycopy(arrayOfObject1, i24 + 1, arrayOfObject1, i12 + 1, i26);
          if (i19 == 0);
        }
        else
        {
          i5 = i19;
          i7 = i24;
          i16 = i12 - 1;
          j = i22 - 1;
          arrayOfObject1[i12] = arrayOfObject2[i22];
          paramInt4--;
          if (paramInt4 != 1)
          {
            Comparable localComparable = (Comparable)arrayOfObject1[i7];
            int i27 = paramInt4 - 1;
            int i28 = paramInt4 - gallopLeft(localComparable, arrayOfObject2, 0, paramInt4, i27);
            int i29;
            if (i28 != 0)
            {
              i29 = i16 - i28;
              j -= i28;
              paramInt4 -= i28;
              System.arraycopy(arrayOfObject2, j + 1, arrayOfObject1, i29 + 1, i28);
              if (paramInt4 <= 1);
            }
            while (true)
            {
              i16 = i29 - 1;
              n = i7 - 1;
              arrayOfObject1[i29] = arrayOfObject1[i7];
              i1 = i5 - 1;
              if (i1 != 0)
              {
                int i30 = i25 - 1;
                int i31;
                label630: int i32;
                if (i26 >= 7)
                {
                  i31 = 1;
                  if (i28 < 7)
                    break label679;
                  i32 = 1;
                }
                while (true)
                  if ((i32 | i31) == 0)
                  {
                    if (i30 < 0)
                      i30 = 0;
                    int i34 = i30 + 2;
                    i3 = i16;
                    i4 = i34;
                    break;
                    i31 = 0;
                    break label630;
                    label679: i32 = 0;
                    continue;
                    if (paramInt4 == 0)
                      throw new IllegalArgumentException("Comparison method violates its general contract!");
                    System.arraycopy(arrayOfObject2, 0, arrayOfObject1, i16 - (paramInt4 - 1), paramInt4);
                    return;
                  }
                i25 = i30;
                i19 = i1;
                i22 = j;
                int i33 = n;
                i12 = i16;
                i24 = i33;
                break label387;
              }
              i15 = i25;
              i7 = n;
              i5 = i1;
              break label251;
              i16 = i29;
              i15 = i25;
              break label251;
              i29 = i16;
            }
          }
          i15 = i25;
          break label251;
        }
        i15 = i25;
        j = i22;
        i5 = i19;
        i7 = i24;
        i16 = i12;
        break label251;
      }
      i5 = i19;
      i7 = i18;
      i11 = i22;
      i6 = i12;
      i8 = i21;
      i10 = i20;
      break label178;
      label835: j = i13;
      i15 = i4;
      i16 = i12;
      break label251;
      label850: i19 = i5;
      i22 = i11;
      i18 = i36;
      i21 = i37;
      i12 = i35;
      i20 = 0;
    }
  }

  private void mergeLo(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object[] arrayOfObject1 = this.a;
    Object[] arrayOfObject2 = ensureCapacity(paramInt2);
    System.arraycopy(arrayOfObject1, paramInt1, arrayOfObject2, 0, paramInt2);
    int i = 0;
    int j = paramInt1 + 1;
    int k = paramInt3 + 1;
    arrayOfObject1[paramInt1] = arrayOfObject1[paramInt3];
    int m = paramInt4 - 1;
    if (m == 0)
    {
      System.arraycopy(arrayOfObject2, 0, arrayOfObject1, j, paramInt2);
      return;
    }
    if (paramInt2 == 1)
    {
      System.arraycopy(arrayOfObject1, k, arrayOfObject1, j, m);
      arrayOfObject1[(j + m)] = arrayOfObject2[0];
      return;
    }
    int n = this.minGallop;
    int i1 = j;
    int i2 = n;
    int i3 = m;
    int i4 = i1;
    int i5 = i;
    int i6 = 0;
    int i7 = k;
    int i8 = 0;
    int i9 = i7;
    label138: int i21;
    int i33;
    int i34;
    int i13;
    int i14;
    int i15;
    label214: int i10;
    int i11;
    int i16;
    int i17;
    int i18;
    int i19;
    int i20;
    if (((Comparable)arrayOfObject1[i9]).compareTo(arrayOfObject2[i5]) < 0)
    {
      i21 = i4 + 1;
      i33 = i9 + 1;
      arrayOfObject1[i4] = arrayOfObject1[i9];
      i34 = i8 + 1;
      m = i3 - 1;
      if (m != 0)
        break label767;
      k = i33;
      i13 = i5;
      i14 = i2;
      i15 = i21;
      if (i14 <= 0)
        i14 = 1;
      this.minGallop = i14;
      if (paramInt2 == 1)
      {
        System.arraycopy(arrayOfObject1, k, arrayOfObject1, i15, m);
        arrayOfObject1[(i15 + m)] = arrayOfObject2[i13];
      }
    }
    else
    {
      i10 = i4 + 1;
      i11 = i5 + 1;
      arrayOfObject1[i4] = arrayOfObject2[i5];
      int i12 = i6 + 1;
      paramInt2--;
      if (paramInt2 == 1)
        break label744;
      i16 = i3;
      i17 = i9;
      i18 = i11;
      i19 = i12;
      i20 = 0;
      i21 = i10;
    }
    while (true)
    {
      if ((i19 | i20) >= i2)
      {
        int i22 = i2;
        int i23 = i18;
        int i24 = i22;
        label341: int i25 = gallopRight((Comparable)arrayOfObject1[i17], arrayOfObject2, i23, paramInt2, 0);
        if (i25 != 0)
        {
          System.arraycopy(arrayOfObject2, i23, arrayOfObject1, i21, i25);
          i21 += i25;
          i23 += i25;
          paramInt2 -= i25;
          if (paramInt2 <= 1);
        }
        else
        {
          i13 = i23;
          i15 = i21 + 1;
          k = i17 + 1;
          arrayOfObject1[i21] = arrayOfObject1[i17];
          m = i16 - 1;
          if (m != 0)
          {
            int i26 = gallopLeft((Comparable)arrayOfObject2[i13], arrayOfObject1, k, m, 0);
            int i27;
            if (i26 != 0)
            {
              System.arraycopy(arrayOfObject1, k, arrayOfObject1, i15, i26);
              i27 = i15 + i26;
              k += i26;
              m -= i26;
              if (m == 0);
            }
            while (true)
            {
              i15 = i27 + 1;
              i = i13 + 1;
              arrayOfObject1[i27] = arrayOfObject2[i13];
              paramInt2--;
              if (paramInt2 != 1)
              {
                int i28 = i24 - 1;
                int i29;
                label549: int i30;
                if (i25 >= 7)
                {
                  i29 = 1;
                  if (i26 < 7)
                    break label598;
                  i30 = 1;
                }
                while (true)
                  if ((i30 | i29) == 0)
                  {
                    if (i28 < 0)
                      i28 = 0;
                    int i32 = i28 + 2;
                    i1 = i15;
                    i2 = i32;
                    break;
                    i29 = 0;
                    break label549;
                    label598: i30 = 0;
                    continue;
                    if (paramInt2 == 0)
                      throw new IllegalArgumentException("Comparison method violates its general contract!");
                    System.arraycopy(arrayOfObject2, i13, arrayOfObject1, i15, paramInt2);
                    return;
                  }
                i24 = i28;
                i16 = m;
                i17 = k;
                int i31 = i;
                i21 = i15;
                i23 = i31;
                break label341;
              }
              i14 = i24;
              i13 = i;
              break label214;
              i15 = i27;
              i14 = i24;
              break label214;
              i27 = i15;
            }
          }
          i14 = i24;
          break label214;
        }
        i14 = i24;
        k = i17;
        i13 = i23;
        i15 = i21;
        m = i16;
        break label214;
      }
      i3 = i16;
      i5 = i18;
      i9 = i17;
      i4 = i21;
      i6 = i19;
      i8 = i20;
      break label138;
      label744: m = i3;
      i13 = i11;
      k = i9;
      i14 = i2;
      i15 = i10;
      break label214;
      label767: i18 = i5;
      i16 = m;
      i17 = i33;
      i20 = i34;
      i19 = 0;
    }
  }

  private static int minRunLength(int paramInt)
  {
    int i = 0;
    while (paramInt >= 32)
    {
      i |= paramInt & 0x1;
      paramInt >>= 1;
    }
    return i + paramInt;
  }

  private void pushRun(int paramInt1, int paramInt2)
  {
    this.runBase[this.stackSize] = paramInt1;
    this.runLen[this.stackSize] = paramInt2;
    this.stackSize = (1 + this.stackSize);
  }

  private static void rangeCheck(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 > paramInt3)
      throw new IllegalArgumentException("fromIndex(" + paramInt2 + ") > toIndex(" + paramInt3 + ")");
    if (paramInt2 < 0)
      throw new ArrayIndexOutOfBoundsException(paramInt2);
    if (paramInt3 > paramInt1)
      throw new ArrayIndexOutOfBoundsException(paramInt3);
  }

  private static void reverseRange(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    int i = paramInt2 - 1;
    while (paramInt1 < i)
    {
      Object localObject = paramArrayOfObject[paramInt1];
      int j = paramInt1 + 1;
      paramArrayOfObject[paramInt1] = paramArrayOfObject[i];
      int k = i - 1;
      paramArrayOfObject[i] = localObject;
      i = k;
      paramInt1 = j;
    }
  }

  static void sort(Object[] paramArrayOfObject)
  {
    sort(paramArrayOfObject, 0, paramArrayOfObject.length);
  }

  static void sort(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    rangeCheck(paramArrayOfObject.length, paramInt1, paramInt2);
    int i = paramInt2 - paramInt1;
    if (i < 2)
      return;
    if (i < 32)
    {
      binarySort(paramArrayOfObject, paramInt1, paramInt2, paramInt1 + countRunAndMakeAscending(paramArrayOfObject, paramInt1, paramInt2));
      return;
    }
    ComparableTimSort localComparableTimSort = new ComparableTimSort(paramArrayOfObject);
    int j = minRunLength(i);
    int k = countRunAndMakeAscending(paramArrayOfObject, paramInt1, paramInt2);
    int m;
    if (k < j)
      if (i <= j)
      {
        m = i;
        label78: binarySort(paramArrayOfObject, paramInt1, paramInt1 + m, k + paramInt1);
      }
    while (true)
    {
      localComparableTimSort.pushRun(paramInt1, m);
      localComparableTimSort.mergeCollapse();
      paramInt1 += m;
      i -= m;
      if (i != 0)
        break;
      localComparableTimSort.mergeForceCollapse();
      return;
      m = j;
      break label78;
      m = k;
    }
  }

  public void doSort(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    this.stackSize = 0;
    rangeCheck(paramArrayOfObject.length, paramInt1, paramInt2);
    int i = paramInt2 - paramInt1;
    if (i < 2)
      return;
    if (i < 32)
    {
      binarySort(paramArrayOfObject, paramInt1, paramInt2, paramInt1 + countRunAndMakeAscending(paramArrayOfObject, paramInt1, paramInt2));
      return;
    }
    this.a = paramArrayOfObject;
    int j = minRunLength(i);
    int k = countRunAndMakeAscending(paramArrayOfObject, paramInt1, paramInt2);
    int m;
    if (k < j)
      if (i <= j)
      {
        m = i;
        label84: binarySort(paramArrayOfObject, paramInt1, paramInt1 + m, k + paramInt1);
      }
    while (true)
    {
      pushRun(paramInt1, m);
      mergeCollapse();
      paramInt1 += m;
      i -= m;
      if (i != 0)
        break;
      mergeForceCollapse();
      return;
      m = j;
      break label84;
      m = k;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.ComparableTimSort
 * JD-Core Version:    0.6.2
 */