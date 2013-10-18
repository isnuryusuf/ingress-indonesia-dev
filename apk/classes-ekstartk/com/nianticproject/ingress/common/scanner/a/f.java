package com.nianticproject.ingress.common.scanner.a;

import com.nianticproject.ingress.common.w.y;
import java.nio.ByteOrder;

final class f
{
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return 0.299F * paramFloat1 + 0.587F * paramFloat2 + 0.114F * paramFloat3;
  }

  static float a(int paramInt)
  {
    return a(0.003921569F * (0xFF & paramInt >>> 16), 0.003921569F * (0xFF & paramInt >>> 8), 0.003921569F * (paramInt & 0xFF));
  }

  static int b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = (int)(255.0F * y.b(paramFloat1));
    int j = (int)(255.0F * y.b(paramFloat2));
    int k = (int)(255.0F * y.b(paramFloat3));
    int m = (int)(255.0F * y.b(1.0F));
    if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN)
      return m | (i << 24 | j << 16 | k << 8);
    return i | (m << 24 | k << 16 | j << 8);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.f
 * JD-Core Version:    0.6.2
 */