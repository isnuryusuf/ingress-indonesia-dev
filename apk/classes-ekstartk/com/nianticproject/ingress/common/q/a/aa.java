package com.nianticproject.ingress.common.q.a;

import java.io.DataInput;

public final class aa
{
  public static int a(DataInput paramDataInput)
  {
    int i = paramDataInput.readUnsignedByte();
    if (i < 128);
    while (true)
    {
      return i;
      int j = i & 0x7F;
      int k = paramDataInput.readUnsignedByte();
      i = j | (k & 0x7F) << 7;
      if (k >= 128)
      {
        int m = paramDataInput.readUnsignedByte();
        i |= (m & 0x7F) << 14;
        if (m >= 128)
        {
          int n = paramDataInput.readUnsignedByte();
          i |= (n & 0x7F) << 21;
          if (n >= 128)
          {
            int i1 = paramDataInput.readUnsignedByte();
            i |= (i1 & 0x7F) << 28;
            if (i1 >= 128)
              while (i1 >= 128)
                i1 = paramDataInput.readUnsignedByte();
          }
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.a.aa
 * JD-Core Version:    0.6.2
 */