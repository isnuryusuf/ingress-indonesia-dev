package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Comparator;

class TimSort<T>
{
  private static final boolean DEBUG = false;
  private static final int INITIAL_TMP_STORAGE_LENGTH = 256;
  private static final int MIN_GALLOP = 7;
  private static final int MIN_MERGE = 32;
  private T[] a;
  private Comparator<? super T> c;
  private int minGallop = 7;
  private final int[] runBase;
  private final int[] runLen;
  private int stackSize = 0;
  private T[] tmp;

  TimSort()
  {
    this.tmp = ((Object[])new Object[256]);
    this.runBase = new int[40];
    this.runLen = new int[40];
  }

  private TimSort(T[] paramArrayOfT, Comparator<? super T> paramComparator)
  {
    this.a = paramArrayOfT;
    this.c = paramComparator;
    int i = paramArrayOfT.length;
    int j;
    int k;
    if (i < 512)
    {
      j = i >>> 1;
      this.tmp = ((Object[])new Object[j]);
      if (i >= 120)
        break label86;
      k = 5;
    }
    while (true)
    {
      this.runBase = new int[k];
      this.runLen = new int[k];
      return;
      j = 256;
      break;
      label86: if (i < 1542)
        k = 10;
      else if (i < 119151)
        k = 19;
      else
        k = 40;
    }
  }

  private static <T> void binarySort(T[] paramArrayOfT, int paramInt1, int paramInt2, int paramInt3, Comparator<? super T> paramComparator)
  {
    int i;
    if (paramInt3 == paramInt1)
      i = paramInt3 + 1;
    while (true)
    {
      if (i < paramInt2)
      {
        T ? = paramArrayOfT[i];
        int j = i;
        int k = paramInt1;
        while (k < j)
        {
          int n = k + j >>> 1;
          if (paramComparator.compare(?, paramArrayOfT[n]) < 0)
            j = n;
          else
            k = n + 1;
        }
        int m = i - k;
        switch (m)
        {
        default:
          System.arraycopy(paramArrayOfT, k, paramArrayOfT, k + 1, m);
        case 2:
        case 1:
        }
        while (true)
        {
          paramArrayOfT[k] = ?;
          i++;
          break;
          paramArrayOfT[(k + 2)] = paramArrayOfT[(k + 1)];
          paramArrayOfT[(k + 1)] = paramArrayOfT[k];
        }
      }
      return;
      i = paramInt3;
    }
  }

  private static <T> int countRunAndMakeAscending(T[] paramArrayOfT, int paramInt1, int paramInt2, Comparator<? super T> paramComparator)
  {
    int i = paramInt1 + 1;
    if (i == paramInt2)
      return 1;
    int j = i + 1;
    if (paramComparator.compare(paramArrayOfT[i], paramArrayOfT[paramInt1]) < 0)
    {
      while ((j < paramInt2) && (paramComparator.compare(paramArrayOfT[j], paramArrayOfT[(j - 1)]) < 0))
        j++;
      reverseRange(paramArrayOfT, paramInt1, j);
    }
    while (true)
    {
      return j - paramInt1;
      while ((j < paramInt2) && (paramComparator.compare(paramArrayOfT[j], paramArrayOfT[(j - 1)]) >= 0))
        j++;
    }
  }

  private T[] ensureCapacity(int paramInt)
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
        break label71;
    }
    while (true)
    {
      this.tmp = ((Object[])new Object[paramInt]);
      return this.tmp;
      label71: paramInt = Math.min(n, this.a.length >>> 1);
    }
  }

  private static <T> int gallopLeft(T paramT, T[] paramArrayOfT, int paramInt1, int paramInt2, int paramInt3, Comparator<? super T> paramComparator)
  {
    int i = 0;
    int j = 1;
    int i4;
    if (paramComparator.compare(paramT, paramArrayOfT[(paramInt1 + paramInt3)]) > 0)
      i4 = paramInt2 - paramInt3;
    while (true)
    {
      int i5;
      if ((j < i4) && (paramComparator.compare(paramT, paramArrayOfT[(j + (paramInt1 + paramInt3))]) > 0))
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
          label107: int i2;
          int k;
          while (true)
            if (i1 < n)
            {
              i2 = i1 + (n - i1 >>> 1);
              if (paramComparator.compare(paramT, paramArrayOfT[(paramInt1 + i2)]) > 0)
              {
                i1 = i2 + 1;
                continue;
                k = paramInt3 + 1;
              }
            }
          while (true)
          {
            int i3;
            if ((j < k) && (paramComparator.compare(paramT, paramArrayOfT[(paramInt1 + paramInt3 - j)]) <= 0))
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
                break label107;
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

  private static <T> int gallopRight(T paramT, T[] paramArrayOfT, int paramInt1, int paramInt2, int paramInt3, Comparator<? super T> paramComparator)
  {
    int i6;
    int i7;
    int i8;
    if (paramComparator.compare(paramT, paramArrayOfT[(paramInt1 + paramInt3)]) < 0)
    {
      i6 = paramInt3 + 1;
      i7 = 1;
      i8 = 0;
    }
    while (true)
    {
      int i9;
      if ((i7 < i6) && (paramComparator.compare(paramT, paramArrayOfT[(paramInt1 + paramInt3 - i7)]) < 0))
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
          label107: int i3;
          int i;
          int j;
          int k;
          while (true)
            if (i2 < n)
            {
              i3 = i2 + (n - i2 >>> 1);
              if (paramComparator.compare(paramT, paramArrayOfT[(paramInt1 + i3)]) < 0)
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
            if ((j < i) && (paramComparator.compare(paramT, paramArrayOfT[(j + (paramInt1 + paramInt3))]) >= 0))
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
                break label107;
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
    int n = gallopRight(this.a[k], this.a, i, j, 0, this.c);
    int i1 = i + n;
    int i2 = j - n;
    if (i2 == 0);
    int i3;
    do
    {
      return;
      i3 = gallopLeft(this.a[(-1 + (i1 + i2))], this.a, k, m, m - 1, this.c);
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
      int i30 = m - i1;
      System.arraycopy(arrayOfObject1, 1 + (n - i1), arrayOfObject1, i30 + 1, i1);
      arrayOfObject1[i30] = arrayOfObject2[j];
      return;
    }
    Comparator localComparator = this.c;
    int i2 = this.minGallop;
    int i3 = n;
    int i4 = m;
    int i5 = 0;
    int i6 = j;
    int i7 = 0;
    int i8 = i1;
    int i9 = i6;
    label657: label794: label809: label833: 
    while (true)
    {
      int i27;
      int i28;
      int i12;
      label243: int i10;
      int i11;
      if (localComparator.compare(arrayOfObject2[i9], arrayOfObject1[i3]) < 0)
      {
        m = i4 - 1;
        i27 = i3 - 1;
        arrayOfObject1[i4] = arrayOfObject1[i3];
        i28 = i7 + 1;
        i12 = i8 - 1;
        if (i12 != 0)
          break label809;
        j = i9;
        i3 = i27;
        if (i2 <= 0)
          i2 = 1;
        this.minGallop = i2;
        if (paramInt4 == 1)
        {
          int i13 = m - i12;
          System.arraycopy(arrayOfObject1, 1 + (i3 - i12), arrayOfObject1, i13 + 1, i12);
          arrayOfObject1[i13] = arrayOfObject2[j];
        }
      }
      else
      {
        i10 = i4 - 1;
        i11 = i9 - 1;
        arrayOfObject1[i4] = arrayOfObject2[i9];
        i5++;
        paramInt4--;
        if (paramInt4 == 1)
          break label794;
        i9 = i11;
        i7 = 0;
        i4 = i10;
      }
      while (true)
      {
        if ((i7 | i5) < i2)
          break label833;
        int i14 = i2;
        int i15 = i8;
        int i16 = i3;
        int i17 = i9;
        int i18 = i4;
        label376: int i19 = i15 - gallopRight(arrayOfObject2[i17], arrayOfObject1, paramInt1, i15, i15 - 1, localComparator);
        if (i19 != 0)
        {
          i18 -= i19;
          i16 -= i19;
          i15 -= i19;
          System.arraycopy(arrayOfObject1, i16 + 1, arrayOfObject1, i18 + 1, i19);
          if (i15 == 0);
        }
        else
        {
          int i20 = i16;
          i12 = i15;
          m = i18 - 1;
          j = i17 - 1;
          arrayOfObject1[i18] = arrayOfObject2[i17];
          int i21 = paramInt4 - 1;
          if (i21 != 1)
          {
            int i22 = i21 - gallopLeft(arrayOfObject1[i20], arrayOfObject2, 0, i21, i21 - 1, localComparator);
            int i23;
            if (i22 != 0)
            {
              m -= i22;
              j -= i22;
              paramInt4 = i21 - i22;
              System.arraycopy(arrayOfObject2, j + 1, arrayOfObject1, m + 1, i22);
              if (paramInt4 > 1)
                i23 = m;
            }
            while (true)
            {
              m = i23 - 1;
              n = i20 - 1;
              arrayOfObject1[i23] = arrayOfObject1[i20];
              i1 = i12 - 1;
              if (i1 != 0)
              {
                int i24 = i14 - 1;
                int i25;
                label616: int i26;
                if (i19 >= 7)
                {
                  i25 = 1;
                  if (i22 < 7)
                    break label657;
                  i26 = 1;
                }
                while (true)
                  if ((i26 | i25) == 0)
                  {
                    if (i24 < 0)
                      i24 = 0;
                    i2 = i24 + 2;
                    break;
                    i25 = 0;
                    break label616;
                    i26 = 0;
                    continue;
                    if (paramInt4 == 0)
                      throw new IllegalArgumentException("Comparison method violates its general contract!");
                    System.arraycopy(arrayOfObject2, 0, arrayOfObject1, m - (paramInt4 - 1), paramInt4);
                    return;
                  }
                i14 = i24;
                i17 = j;
                i16 = n;
                i15 = i1;
                i18 = m;
                break label376;
              }
              i2 = i14;
              i3 = n;
              i12 = i1;
              break label243;
              i3 = i20;
              i2 = i14;
              break label243;
              i23 = m;
              paramInt4 = i21;
            }
          }
          i3 = i20;
          paramInt4 = i21;
          i2 = i14;
          break label243;
        }
        i2 = i14;
        m = i18;
        i12 = i15;
        j = i17;
        i3 = i16;
        break label243;
        m = i10;
        i12 = i8;
        j = i11;
        break label243;
        i3 = i27;
        i8 = i12;
        int i29 = m;
        i7 = i28;
        i4 = i29;
        i5 = 0;
      }
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
    Comparator localComparator = this.c;
    int n = this.minGallop;
    int i1 = i;
    int i2 = j;
    int i3 = 0;
    int i4 = k;
    int i5 = 0;
    int i6 = m;
    int i7 = i4;
    label197: label327: label588: label739: label750: label762: 
    while (true)
    {
      int i25;
      int i26;
      int i8;
      int i9;
      if (localComparator.compare(arrayOfObject1[i7], arrayOfObject2[i1]) < 0)
      {
        i25 = i2 + 1;
        i26 = i7 + 1;
        arrayOfObject1[i2] = arrayOfObject1[i7];
        i3++;
        i6--;
        if (i6 != 0)
          break label750;
        j = i25;
        k = i26;
        if (n <= 0)
          n = 1;
        this.minGallop = n;
        if (paramInt2 == 1)
        {
          System.arraycopy(arrayOfObject1, k, arrayOfObject1, j, i6);
          arrayOfObject1[(j + i6)] = arrayOfObject2[i1];
        }
      }
      else
      {
        j = i2 + 1;
        i8 = i1 + 1;
        arrayOfObject1[i2] = arrayOfObject2[i1];
        i9 = i5 + 1;
        paramInt2--;
        if (paramInt2 == 1)
          break label739;
        i1 = i8;
        i2 = j;
        i3 = 0;
      }
      for (i5 = i9; ; i5 = 0)
      {
        if ((i5 | i3) < n)
          break label762;
        int i10 = n;
        int i11 = i1;
        int i12 = i6;
        int i13 = paramInt2;
        int i14 = i7;
        int i15 = i2;
        int i16 = gallopRight(arrayOfObject1[i14], arrayOfObject2, i11, i13, 0, localComparator);
        if (i16 != 0)
        {
          System.arraycopy(arrayOfObject2, i11, arrayOfObject1, i15, i16);
          i15 += i16;
          i11 += i16;
          i13 -= i16;
          if (i13 <= 1);
        }
        else
        {
          int i17 = i11;
          int i18 = i13;
          j = i15 + 1;
          int i19 = i14 + 1;
          arrayOfObject1[i15] = arrayOfObject1[i14];
          i6 = i12 - 1;
          if (i6 != 0)
          {
            int i20 = gallopLeft(arrayOfObject2[i17], arrayOfObject1, i19, i6, 0, localComparator);
            if (i20 != 0)
            {
              System.arraycopy(arrayOfObject1, i19, arrayOfObject1, j, i20);
              j += i20;
              k = i19 + i20;
              m = i6 - i20;
              if (m == 0);
            }
            for (int i21 = j; ; i21 = j)
            {
              j = i21 + 1;
              i = i17 + 1;
              arrayOfObject1[i21] = arrayOfObject2[i17];
              paramInt2 = i18 - 1;
              if (paramInt2 != 1)
              {
                int i22 = i10 - 1;
                int i23;
                int i24;
                if (i16 >= 7)
                {
                  i23 = 1;
                  if (i20 < 7)
                    break label588;
                  i24 = 1;
                }
                while (true)
                  if ((i24 | i23) == 0)
                  {
                    if (i22 < 0)
                      i22 = 0;
                    n = i22 + 2;
                    break;
                    i23 = 0;
                    break label547;
                    i24 = 0;
                    continue;
                    if (paramInt2 == 0)
                      throw new IllegalArgumentException("Comparison method violates its general contract!");
                    System.arraycopy(arrayOfObject2, i1, arrayOfObject1, j, paramInt2);
                    return;
                  }
                i10 = i22;
                i14 = k;
                i12 = m;
                i15 = j;
                i13 = paramInt2;
                i11 = i;
                break label327;
              }
              n = i10;
              i1 = i;
              i6 = m;
              break label197;
              i1 = i17;
              i6 = m;
              paramInt2 = i18;
              n = i10;
              break label197;
              k = i19;
              m = i6;
            }
          }
          k = i19;
          paramInt2 = i18;
          i1 = i17;
          n = i10;
          break label197;
        }
        n = i10;
        i1 = i11;
        paramInt2 = i13;
        j = i15;
        k = i14;
        i6 = i12;
        break label197;
        k = i7;
        i1 = i8;
        break label197;
        i7 = i26;
        i2 = i25;
      }
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

  static <T> void sort(T[] paramArrayOfT, int paramInt1, int paramInt2, Comparator<? super T> paramComparator)
  {
    if (paramComparator == null)
      Arrays.sort(paramArrayOfT, paramInt1, paramInt2);
    int i;
    do
    {
      return;
      rangeCheck(paramArrayOfT.length, paramInt1, paramInt2);
      i = paramInt2 - paramInt1;
    }
    while (i < 2);
    if (i < 32)
    {
      binarySort(paramArrayOfT, paramInt1, paramInt2, paramInt1 + countRunAndMakeAscending(paramArrayOfT, paramInt1, paramInt2, paramComparator), paramComparator);
      return;
    }
    TimSort localTimSort = new TimSort(paramArrayOfT, paramComparator);
    int j = minRunLength(i);
    int k = countRunAndMakeAscending(paramArrayOfT, paramInt1, paramInt2, paramComparator);
    int m;
    if (k < j)
      if (i <= j)
      {
        m = i;
        label98: binarySort(paramArrayOfT, paramInt1, paramInt1 + m, k + paramInt1, paramComparator);
      }
    while (true)
    {
      localTimSort.pushRun(paramInt1, m);
      localTimSort.mergeCollapse();
      paramInt1 += m;
      i -= m;
      if (i != 0)
        break;
      localTimSort.mergeForceCollapse();
      return;
      m = j;
      break label98;
      m = k;
    }
  }

  static <T> void sort(T[] paramArrayOfT, Comparator<? super T> paramComparator)
  {
    sort(paramArrayOfT, 0, paramArrayOfT.length, paramComparator);
  }

  public void doSort(T[] paramArrayOfT, Comparator<T> paramComparator, int paramInt1, int paramInt2)
  {
    this.stackSize = 0;
    rangeCheck(paramArrayOfT.length, paramInt1, paramInt2);
    int i = paramInt2 - paramInt1;
    if (i < 2)
      return;
    if (i < 32)
    {
      binarySort(paramArrayOfT, paramInt1, paramInt2, paramInt1 + countRunAndMakeAscending(paramArrayOfT, paramInt1, paramInt2, paramComparator), paramComparator);
      return;
    }
    this.a = paramArrayOfT;
    this.c = paramComparator;
    int j = minRunLength(i);
    int k = countRunAndMakeAscending(paramArrayOfT, paramInt1, paramInt2, paramComparator);
    int m;
    if (k < j)
      if (i <= j)
      {
        m = i;
        label97: binarySort(paramArrayOfT, paramInt1, paramInt1 + m, k + paramInt1, paramComparator);
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
      break label97;
      m = k;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.TimSort
 * JD-Core Version:    0.6.2
 */