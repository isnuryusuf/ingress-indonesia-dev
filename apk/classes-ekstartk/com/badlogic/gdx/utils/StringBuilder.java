package com.badlogic.gdx.utils;

import java.util.Arrays;

public class StringBuilder
  implements Appendable, CharSequence
{
  static final int INITIAL_CAPACITY = 16;
  public char[] chars;
  public int length;

  public StringBuilder()
  {
    this.chars = new char[16];
  }

  public StringBuilder(int paramInt)
  {
    if (paramInt < 0)
      throw new NegativeArraySizeException();
    this.chars = new char[paramInt];
  }

  public StringBuilder(StringBuilder paramStringBuilder)
  {
    this.length = paramStringBuilder.length;
    this.chars = new char[16 + this.length];
    System.arraycopy(paramStringBuilder.chars, 0, this.chars, 0, this.length);
  }

  public StringBuilder(CharSequence paramCharSequence)
  {
    this(paramCharSequence.toString());
  }

  public StringBuilder(String paramString)
  {
    this.length = paramString.length();
    this.chars = new char[16 + this.length];
    paramString.getChars(0, this.length, this.chars, 0);
  }

  private void enlargeBuffer(int paramInt)
  {
    int i = 2 + ((this.chars.length >> 1) + this.chars.length);
    if (paramInt > i);
    while (true)
    {
      char[] arrayOfChar = new char[paramInt];
      System.arraycopy(this.chars, 0, arrayOfChar, 0, this.length);
      this.chars = arrayOfChar;
      return;
      paramInt = i;
    }
  }

  private void move(int paramInt1, int paramInt2)
  {
    if (this.chars.length - this.length >= paramInt1)
    {
      System.arraycopy(this.chars, paramInt2, this.chars, paramInt2 + paramInt1, this.length - paramInt2);
      return;
    }
    int i = paramInt1 + this.length;
    int j = 2 + (this.chars.length << 1);
    if (i > j);
    while (true)
    {
      char[] arrayOfChar = new char[i];
      System.arraycopy(this.chars, 0, arrayOfChar, 0, paramInt2);
      System.arraycopy(this.chars, paramInt2, arrayOfChar, paramInt2 + paramInt1, this.length - paramInt2);
      this.chars = arrayOfChar;
      return;
      i = j;
    }
  }

  public StringBuilder append(char paramChar)
  {
    append0(paramChar);
    return this;
  }

  public StringBuilder append(double paramDouble)
  {
    append0(Double.toString(paramDouble));
    return this;
  }

  public StringBuilder append(float paramFloat)
  {
    append0(Float.toString(paramFloat));
    return this;
  }

  public StringBuilder append(int paramInt)
  {
    append0(Integer.toString(paramInt));
    return this;
  }

  public StringBuilder append(long paramLong)
  {
    append0(Long.toString(paramLong));
    return this;
  }

  public StringBuilder append(StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null)
    {
      appendNull();
      return this;
    }
    append0(paramStringBuilder.chars, 0, paramStringBuilder.length);
    return this;
  }

  public StringBuilder append(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    if (paramStringBuilder == null)
    {
      appendNull();
      return this;
    }
    append0(paramStringBuilder.chars, paramInt1, paramInt2);
    return this;
  }

  public StringBuilder append(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
    {
      appendNull();
      return this;
    }
    append0(paramCharSequence.toString());
    return this;
  }

  public StringBuilder append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    append0(paramCharSequence, paramInt1, paramInt2);
    return this;
  }

  public StringBuilder append(Object paramObject)
  {
    if (paramObject == null)
    {
      appendNull();
      return this;
    }
    append0(paramObject.toString());
    return this;
  }

  public StringBuilder append(String paramString)
  {
    append0(paramString);
    return this;
  }

  public StringBuilder append(boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "true"; ; str = "false")
    {
      append0(str);
      return this;
    }
  }

  public StringBuilder append(char[] paramArrayOfChar)
  {
    append0(paramArrayOfChar);
    return this;
  }

  public StringBuilder append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    append0(paramArrayOfChar, paramInt1, paramInt2);
    return this;
  }

  final void append0(char paramChar)
  {
    if (this.length == this.chars.length)
      enlargeBuffer(1 + this.length);
    char[] arrayOfChar = this.chars;
    int i = this.length;
    this.length = (i + 1);
    arrayOfChar[i] = paramChar;
  }

  final void append0(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null)
      paramCharSequence = "null";
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 > paramInt2) || (paramInt2 > paramCharSequence.length()))
      throw new IndexOutOfBoundsException();
    append0(paramCharSequence.subSequence(paramInt1, paramInt2).toString());
  }

  final void append0(String paramString)
  {
    if (paramString == null)
    {
      appendNull();
      return;
    }
    int i = paramString.length();
    int j = i + this.length;
    if (j > this.chars.length)
      enlargeBuffer(j);
    paramString.getChars(0, i, this.chars, this.length);
    this.length = j;
  }

  final void append0(char[] paramArrayOfChar)
  {
    int i = this.length + paramArrayOfChar.length;
    if (i > paramArrayOfChar.length)
      enlargeBuffer(i);
    System.arraycopy(paramArrayOfChar, 0, paramArrayOfChar, this.length, paramArrayOfChar.length);
    this.length = i;
  }

  final void append0(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if ((paramInt1 > paramArrayOfChar.length) || (paramInt1 < 0))
      throw new ArrayIndexOutOfBoundsException("Offset out of bounds: " + paramInt1);
    if ((paramInt2 < 0) || (paramArrayOfChar.length - paramInt1 < paramInt2))
      throw new ArrayIndexOutOfBoundsException("Length out of bounds: " + paramInt2);
    int i = paramInt2 + paramInt2;
    if (i > paramArrayOfChar.length)
      enlargeBuffer(i);
    System.arraycopy(paramArrayOfChar, paramInt1, paramArrayOfChar, paramInt2, paramInt2);
  }

  public StringBuilder appendCodePoint(int paramInt)
  {
    append0(Character.toChars(paramInt));
    return this;
  }

  final void appendNull()
  {
    int i = 4 + this.length;
    if (i > this.chars.length)
      enlargeBuffer(i);
    char[] arrayOfChar1 = this.chars;
    int j = this.length;
    this.length = (j + 1);
    arrayOfChar1[j] = 'n';
    char[] arrayOfChar2 = this.chars;
    int k = this.length;
    this.length = (k + 1);
    arrayOfChar2[k] = 'u';
    char[] arrayOfChar3 = this.chars;
    int m = this.length;
    this.length = (m + 1);
    arrayOfChar3[m] = 'l';
    char[] arrayOfChar4 = this.chars;
    int n = this.length;
    this.length = (n + 1);
    arrayOfChar4[n] = 'l';
  }

  public int capacity()
  {
    return this.chars.length;
  }

  public char charAt(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.length))
      throw new StringIndexOutOfBoundsException(paramInt);
    return this.chars[paramInt];
  }

  public int codePointAt(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.length))
      throw new StringIndexOutOfBoundsException(paramInt);
    return Character.codePointAt(this.chars, paramInt, this.length);
  }

  public int codePointBefore(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > this.length))
      throw new StringIndexOutOfBoundsException(paramInt);
    return Character.codePointBefore(this.chars, paramInt);
  }

  public int codePointCount(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 > this.length) || (paramInt1 > paramInt2))
      throw new StringIndexOutOfBoundsException();
    return Character.codePointCount(this.chars, paramInt1, paramInt2 - paramInt1);
  }

  public StringBuilder delete(int paramInt1, int paramInt2)
  {
    delete0(paramInt1, paramInt2);
    return this;
  }

  final void delete0(int paramInt1, int paramInt2)
  {
    if (paramInt1 >= 0)
    {
      if (paramInt2 > this.length)
        paramInt2 = this.length;
      if (paramInt2 == paramInt1)
        return;
      if (paramInt2 > paramInt1)
      {
        int i = this.length - paramInt2;
        if (i >= 0)
          System.arraycopy(this.chars, paramInt2, this.chars, paramInt1, i);
        this.length -= paramInt2 - paramInt1;
        return;
      }
    }
    throw new StringIndexOutOfBoundsException();
  }

  public StringBuilder deleteCharAt(int paramInt)
  {
    deleteCharAt0(paramInt);
    return this;
  }

  final void deleteCharAt0(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.length))
      throw new StringIndexOutOfBoundsException(paramInt);
    int i = -1 + (this.length - paramInt);
    if (i > 0)
      System.arraycopy(this.chars, paramInt + 1, this.chars, paramInt, i);
    this.length = (-1 + this.length);
  }

  public void ensureCapacity(int paramInt)
  {
    if (paramInt > this.chars.length)
    {
      int i = 2 + (this.chars.length << 1);
      if (i > paramInt)
        paramInt = i;
      enlargeBuffer(paramInt);
    }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    while (true)
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      StringBuilder localStringBuilder = (StringBuilder)paramObject;
      int i = this.length;
      if (i != localStringBuilder.length)
        return false;
      char[] arrayOfChar1 = this.chars;
      char[] arrayOfChar2 = localStringBuilder.chars;
      if (arrayOfChar1 != arrayOfChar2)
      {
        if ((arrayOfChar1 == null) || (arrayOfChar2 == null))
          return false;
        for (int j = 0; j < i; j++)
          if (arrayOfChar1[j] != arrayOfChar2[j])
            return false;
      }
    }
  }

  public void getChars(int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3)
  {
    if ((paramInt1 > this.length) || (paramInt2 > this.length) || (paramInt1 > paramInt2))
      throw new StringIndexOutOfBoundsException();
    System.arraycopy(this.chars, paramInt1, paramArrayOfChar, paramInt3, paramInt2 - paramInt1);
  }

  final char[] getValue()
  {
    return this.chars;
  }

  public int hashCode()
  {
    return 31 * (31 + this.length) + Arrays.hashCode(this.chars);
  }

  public int indexOf(String paramString)
  {
    return indexOf(paramString, 0);
  }

  public int indexOf(String paramString, int paramInt)
  {
    if (paramInt < 0)
      paramInt = 0;
    int i = paramString.length();
    if (i > 0)
    {
      if (i + paramInt > this.length)
      {
        paramInt = -1;
        return paramInt;
      }
      int j = paramString.charAt(0);
      label36: if (paramInt >= this.length)
        break label148;
      if (this.chars[paramInt] != j);
    }
    label148: for (int k = 1; ; k = 0)
    {
      if ((k == 0) || (i + paramInt > this.length))
      {
        return -1;
        paramInt++;
        break label36;
      }
      int m = 0;
      int n = paramInt;
      char[] arrayOfChar;
      do
      {
        m++;
        if (m >= i)
          break;
        arrayOfChar = this.chars;
        n++;
      }
      while (arrayOfChar[n] == paramString.charAt(m));
      if (m == i)
        break;
      paramInt++;
      break label36;
      if ((paramInt < this.length) || (paramInt == 0))
        break;
      return this.length;
    }
  }

  public StringBuilder insert(int paramInt, char paramChar)
  {
    insert0(paramInt, paramChar);
    return this;
  }

  public StringBuilder insert(int paramInt, double paramDouble)
  {
    insert0(paramInt, Double.toString(paramDouble));
    return this;
  }

  public StringBuilder insert(int paramInt, float paramFloat)
  {
    insert0(paramInt, Float.toString(paramFloat));
    return this;
  }

  public StringBuilder insert(int paramInt1, int paramInt2)
  {
    insert0(paramInt1, Integer.toString(paramInt2));
    return this;
  }

  public StringBuilder insert(int paramInt, long paramLong)
  {
    insert0(paramInt, Long.toString(paramLong));
    return this;
  }

  public StringBuilder insert(int paramInt, CharSequence paramCharSequence)
  {
    if (paramCharSequence == null);
    for (String str = "null"; ; str = paramCharSequence.toString())
    {
      insert0(paramInt, str);
      return this;
    }
  }

  public StringBuilder insert(int paramInt1, CharSequence paramCharSequence, int paramInt2, int paramInt3)
  {
    insert0(paramInt1, paramCharSequence, paramInt2, paramInt3);
    return this;
  }

  public StringBuilder insert(int paramInt, Object paramObject)
  {
    if (paramObject == null);
    for (String str = "null"; ; str = paramObject.toString())
    {
      insert0(paramInt, str);
      return this;
    }
  }

  public StringBuilder insert(int paramInt, String paramString)
  {
    insert0(paramInt, paramString);
    return this;
  }

  public StringBuilder insert(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = "true"; ; str = "false")
    {
      insert0(paramInt, str);
      return this;
    }
  }

  public StringBuilder insert(int paramInt, char[] paramArrayOfChar)
  {
    insert0(paramInt, paramArrayOfChar);
    return this;
  }

  public StringBuilder insert(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    insert0(paramInt1, paramArrayOfChar, paramInt2, paramInt3);
    return this;
  }

  final void insert0(int paramInt, char paramChar)
  {
    if ((paramInt < 0) || (paramInt > this.length))
      throw new ArrayIndexOutOfBoundsException(paramInt);
    move(1, paramInt);
    this.chars[paramInt] = paramChar;
    this.length = (1 + this.length);
  }

  final void insert0(int paramInt1, CharSequence paramCharSequence, int paramInt2, int paramInt3)
  {
    if (paramCharSequence == null)
      paramCharSequence = "null";
    if ((paramInt1 < 0) || (paramInt1 > this.length) || (paramInt2 < 0) || (paramInt3 < 0) || (paramInt2 > paramInt3) || (paramInt3 > paramCharSequence.length()))
      throw new IndexOutOfBoundsException();
    insert0(paramInt1, paramCharSequence.subSequence(paramInt2, paramInt3).toString());
  }

  final void insert0(int paramInt, String paramString)
  {
    if ((paramInt >= 0) && (paramInt <= this.length))
    {
      if (paramString == null)
        paramString = "null";
      int i = paramString.length();
      if (i != 0)
      {
        move(i, paramInt);
        paramString.getChars(0, i, this.chars, paramInt);
        this.length = (i + this.length);
      }
      return;
    }
    throw new StringIndexOutOfBoundsException(paramInt);
  }

  final void insert0(int paramInt, char[] paramArrayOfChar)
  {
    if ((paramInt < 0) || (paramInt > this.length))
      throw new StringIndexOutOfBoundsException(paramInt);
    if (paramArrayOfChar.length != 0)
    {
      move(paramArrayOfChar.length, paramInt);
      System.arraycopy(paramArrayOfChar, 0, paramArrayOfChar, paramInt, paramArrayOfChar.length);
      this.length += paramArrayOfChar.length;
    }
  }

  final void insert0(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    if ((paramInt1 >= 0) && (paramInt1 <= paramInt3))
    {
      if ((paramInt2 >= 0) && (paramInt3 >= 0) && (paramInt3 <= paramArrayOfChar.length - paramInt2))
      {
        if (paramInt3 != 0)
        {
          move(paramInt3, paramInt1);
          System.arraycopy(paramArrayOfChar, paramInt2, paramArrayOfChar, paramInt1, paramInt3);
        }
        return;
      }
      throw new StringIndexOutOfBoundsException("offset " + paramInt2 + ", length " + paramInt3 + ", char[].length " + paramArrayOfChar.length);
    }
    throw new StringIndexOutOfBoundsException(paramInt1);
  }

  public int lastIndexOf(String paramString)
  {
    return lastIndexOf(paramString, this.length);
  }

  public int lastIndexOf(String paramString, int paramInt)
  {
    int i = paramString.length();
    if ((i <= this.length) && (paramInt >= 0))
      if (i > 0)
      {
        if (paramInt > this.length - i)
          paramInt = this.length - i;
        int j = paramString.charAt(0);
        if (paramInt < 0)
          break label143;
        if (this.chars[paramInt] != j);
      }
    label143: for (int k = 1; ; k = 0)
    {
      if (k == 0)
        paramInt = -1;
      do
      {
        int m;
        do
        {
          return paramInt;
          paramInt--;
          break;
          m = 0;
          int n = paramInt;
          char[] arrayOfChar;
          do
          {
            m++;
            if (m >= i)
              break;
            arrayOfChar = this.chars;
            n++;
          }
          while (arrayOfChar[n] == paramString.charAt(m));
        }
        while (m == i);
        paramInt--;
        break;
      }
      while (paramInt < this.length);
      return this.length;
      return -1;
    }
  }

  public int length()
  {
    return this.length;
  }

  public int offsetByCodePoints(int paramInt1, int paramInt2)
  {
    return Character.offsetByCodePoints(this.chars, 0, this.length, paramInt1, paramInt2);
  }

  public StringBuilder replace(int paramInt1, int paramInt2, String paramString)
  {
    replace0(paramInt1, paramInt2, paramString);
    return this;
  }

  final void replace0(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt1 >= 0)
    {
      if (paramInt2 > this.length)
        paramInt2 = this.length;
      if (paramInt2 > paramInt1)
      {
        int i = paramString.length();
        int j = paramInt2 - paramInt1 - i;
        if (j > 0)
          System.arraycopy(this.chars, paramInt2, this.chars, paramInt1 + i, this.length - paramInt2);
        while (true)
        {
          paramString.getChars(0, i, this.chars, paramInt1);
          this.length -= j;
          return;
          if (j < 0)
            move(-j, paramInt2);
        }
      }
      if (paramInt1 == paramInt2)
      {
        if (paramString == null)
          throw new NullPointerException();
        insert0(paramInt1, paramString);
        return;
      }
    }
    throw new StringIndexOutOfBoundsException();
  }

  public StringBuilder reverse()
  {
    reverse0();
    return this;
  }

  final void reverse0()
  {
    if (this.length < 2);
    int i;
    int j;
    int k;
    int i1;
    int i2;
    label47: label113: 
    do
    {
      return;
      i = -1 + this.length;
      j = this.chars[0];
      k = this.chars[i];
      int m = 0;
      int n = this.length / 2;
      i1 = 1;
      i2 = 1;
      if (m < n)
      {
        int i3 = this.chars[(m + 1)];
        int i4 = this.chars[(i - 1)];
        int i5;
        int i6;
        int i7;
        int i9;
        int i8;
        int i10;
        if ((i1 != 0) && (i3 >= 56320) && (i3 <= 57343) && (j >= 55296) && (j <= 56319))
        {
          i5 = 1;
          if ((i5 != 0) && (this.length < 3))
            break label289;
          if ((i2 == 0) || (i4 < 55296) || (i4 > 56319) || (k < 56320) || (k > 57343))
            break label291;
          i6 = 1;
          i7 = 1;
          if (i5 != i6)
            break label326;
          if (i5 == 0)
            break label297;
          this.chars[i] = i3;
          this.chars[(i - 1)] = j;
          this.chars[m] = i4;
          this.chars[(m + 1)] = k;
          int i12 = this.chars[(m + 2)];
          int i13 = this.chars[(i - 2)];
          m++;
          i9 = i - 1;
          i8 = i12;
          i4 = i13;
          i10 = i7;
        }
        while (true)
        {
          m++;
          i = i9 - 1;
          j = i8;
          k = i4;
          int i11 = i10;
          i2 = i7;
          i1 = i11;
          break label47;
          i5 = 0;
          break label113;
          break;
          i6 = 0;
          break label164;
          this.chars[i] = j;
          this.chars[m] = k;
          i10 = i7;
          i8 = i3;
          i9 = i;
          continue;
          if (i5 != 0)
          {
            this.chars[i] = i3;
            this.chars[m] = k;
            i8 = j;
            i9 = i;
            i10 = 0;
          }
          else
          {
            this.chars[i] = j;
            this.chars[m] = i4;
            i4 = k;
            i8 = i3;
            i9 = i;
            i10 = i7;
            i7 = 0;
          }
        }
      }
    }
    while (((0x1 & this.length) != 1) || ((i1 != 0) && (i2 != 0)));
    label164: label297: label326: char[] arrayOfChar = this.chars;
    label289: label291: if (i1 != 0);
    while (true)
    {
      arrayOfChar[i] = k;
      return;
      k = j;
    }
  }

  public void setCharAt(int paramInt, char paramChar)
  {
    if ((paramInt < 0) || (paramInt >= this.length))
      throw new StringIndexOutOfBoundsException(paramInt);
    this.chars[paramInt] = paramChar;
  }

  public void setLength(int paramInt)
  {
    if (paramInt < 0)
      throw new StringIndexOutOfBoundsException(paramInt);
    if (paramInt > this.chars.length)
      enlargeBuffer(paramInt);
    while (true)
    {
      this.length = paramInt;
      return;
      if (this.length < paramInt)
        Arrays.fill(this.chars, this.length, paramInt, '\000');
    }
  }

  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return substring(paramInt1, paramInt2);
  }

  public String substring(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= this.length))
    {
      if (paramInt == this.length)
        return "";
      return new String(this.chars, paramInt, this.length - paramInt);
    }
    throw new StringIndexOutOfBoundsException(paramInt);
  }

  public String substring(int paramInt1, int paramInt2)
  {
    if ((paramInt1 >= 0) && (paramInt1 <= paramInt2) && (paramInt2 <= this.length))
    {
      if (paramInt1 == paramInt2)
        return "";
      return new String(this.chars, paramInt1, paramInt2 - paramInt1);
    }
    throw new StringIndexOutOfBoundsException();
  }

  public String toString()
  {
    if (this.length == 0)
      return "";
    return new String(this.chars, 0, this.length);
  }

  public void trimToSize()
  {
    if (this.length < this.chars.length)
    {
      char[] arrayOfChar = new char[this.length];
      System.arraycopy(this.chars, 0, arrayOfChar, 0, this.length);
      this.chars = arrayOfChar;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.StringBuilder
 * JD-Core Version:    0.6.2
 */