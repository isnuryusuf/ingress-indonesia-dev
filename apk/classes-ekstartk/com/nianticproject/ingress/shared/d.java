package com.nianticproject.ingress.shared;

final class d extends b
{
  private static final byte[] h;
  private static final byte[] i;
  int c = 0;
  public final boolean d = false;
  public final boolean e = false;
  public final boolean f = false;
  private final byte[] j = new byte[2];
  private int k;
  private final byte[] l = h;

  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
      h = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }

  public d()
  {
    this.a = null;
    if (this.e);
    for (int m = 19; ; m = -1)
    {
      this.k = m;
      return;
    }
  }

  public final boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte1 = this.l;
    byte[] arrayOfByte2 = this.a;
    int m = this.k;
    int n = paramInt + 0;
    int i2;
    int i3;
    label58: int i36;
    int i37;
    int i5;
    int i4;
    switch (this.c)
    {
    default:
      i2 = -1;
      i3 = 0;
      if (i2 != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(0x3F & i2 >> 18)];
        arrayOfByte2[1] = arrayOfByte1[(0x3F & i2 >> 12)];
        arrayOfByte2[2] = arrayOfByte1[(0x3F & i2 >> 6)];
        i36 = 4;
        arrayOfByte2[3] = arrayOfByte1[(i2 & 0x3F)];
        i37 = m - 1;
        if (i37 == 0)
        {
          if (this.f)
          {
            i36 = 5;
            arrayOfByte2[4] = 13;
          }
          i5 = i36 + 1;
          arrayOfByte2[i36] = 10;
          i4 = 19;
        }
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      label164: int i32;
      int i33;
      int i34;
      int i35;
      if (i3 + 3 <= n)
      {
        int i31 = (0xFF & paramArrayOfByte[i3]) << 16 | (0xFF & paramArrayOfByte[(i3 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i3 + 2)];
        arrayOfByte2[i5] = arrayOfByte1[(0x3F & i31 >> 18)];
        arrayOfByte2[(i5 + 1)] = arrayOfByte1[(0x3F & i31 >> 12)];
        arrayOfByte2[(i5 + 2)] = arrayOfByte1[(0x3F & i31 >> 6)];
        arrayOfByte2[(i5 + 3)] = arrayOfByte1[(i31 & 0x3F)];
        i32 = i3 + 3;
        i33 = i5 + 4;
        i34 = i4 - 1;
        if (i34 != 0)
          break label1075;
        if (!this.f)
          break label1068;
        i35 = i33 + 1;
        arrayOfByte2[i33] = 13;
      }
      while (true)
      {
        i5 = i35 + 1;
        arrayOfByte2[i35] = 10;
        i3 = i32;
        i4 = 19;
        break label164;
        i2 = -1;
        i3 = 0;
        break label58;
        if (2 > n)
          break;
        int i38 = (0xFF & this.j[0]) << 16 | (0xFF & paramArrayOfByte[0]) << 8 | 0xFF & paramArrayOfByte[1];
        this.c = 0;
        i2 = i38;
        i3 = 2;
        break label58;
        if (n <= 0)
          break;
        int i1 = (0xFF & this.j[0]) << 16 | (0xFF & this.j[1]) << 8 | 0xFF & paramArrayOfByte[0];
        this.c = 0;
        i2 = i1;
        i3 = 1;
        break label58;
        if (i3 - this.c == n - 1)
        {
          int i22;
          int i23;
          if (this.c > 0)
          {
            i22 = this.j[0];
            i23 = i3;
          }
          for (int i24 = 1; ; i24 = 0)
          {
            int i25 = (i22 & 0xFF) << 4;
            this.c -= i24;
            int i26 = i5 + 1;
            arrayOfByte2[i5] = arrayOfByte1[(0x3F & i25 >> 6)];
            int i27 = i26 + 1;
            arrayOfByte2[i26] = arrayOfByte1[(i25 & 0x3F)];
            if (this.d)
            {
              int i30 = i27 + 1;
              arrayOfByte2[i27] = 61;
              i27 = i30 + 1;
              arrayOfByte2[i30] = 61;
            }
            if (this.e)
            {
              if (this.f)
              {
                int i29 = i27 + 1;
                arrayOfByte2[i27] = 13;
                i27 = i29;
              }
              int i28 = i27 + 1;
              arrayOfByte2[i27] = 10;
              i27 = i28;
            }
            i3 = i23;
            i5 = i27;
            if ((g) || (this.c == 0))
              break;
            throw new AssertionError();
            int i21 = i3 + 1;
            i22 = paramArrayOfByte[i3];
            i23 = i21;
          }
        }
        int i8;
        int i9;
        label723: int i12;
        label764: int i16;
        int i17;
        if (i3 - this.c == n - 2)
          if (this.c > 1)
          {
            i8 = this.j[0];
            i9 = 1;
            int i10 = (i8 & 0xFF) << 10;
            if (this.c <= 0)
              break label945;
            byte[] arrayOfByte3 = this.j;
            int i20 = i9 + 1;
            i12 = arrayOfByte3[i9];
            i9 = i20;
            int i13 = i10 | (i12 & 0xFF) << 2;
            this.c -= i9;
            int i14 = i5 + 1;
            arrayOfByte2[i5] = arrayOfByte1[(0x3F & i13 >> 12)];
            int i15 = i14 + 1;
            arrayOfByte2[i14] = arrayOfByte1[(0x3F & i13 >> 6)];
            i16 = i15 + 1;
            arrayOfByte2[i15] = arrayOfByte1[(i13 & 0x3F)];
            if (!this.d)
              break label1061;
            i17 = i16 + 1;
            arrayOfByte2[i16] = 61;
          }
        while (true)
        {
          if (this.e)
          {
            if (this.f)
            {
              int i19 = i17 + 1;
              arrayOfByte2[i17] = 13;
              i17 = i19;
            }
            int i18 = i17 + 1;
            arrayOfByte2[i17] = 10;
            i17 = i18;
          }
          i5 = i17;
          break;
          int i7 = i3 + 1;
          i8 = paramArrayOfByte[i3];
          i3 = i7;
          i9 = 0;
          break label723;
          label945: int i11 = i3 + 1;
          i12 = paramArrayOfByte[i3];
          i3 = i11;
          break label764;
          if ((!this.e) || (i5 <= 0) || (i4 == 19))
            break;
          int i6;
          if (this.f)
          {
            i6 = i5 + 1;
            arrayOfByte2[i5] = 13;
          }
          while (true)
          {
            i5 = i6 + 1;
            arrayOfByte2[i6] = 10;
            break;
            if ((!g) && (i3 != n))
              throw new AssertionError();
            this.b = i5;
            this.k = i4;
            return true;
            i6 = i5;
          }
          label1061: i17 = i16;
        }
        label1068: i35 = i33;
      }
      label1075: i4 = i34;
      i5 = i33;
      i3 = i32;
      continue;
      i4 = i37;
      i5 = i36;
      continue;
      i4 = m;
      i5 = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.d
 * JD-Core Version:    0.6.2
 */