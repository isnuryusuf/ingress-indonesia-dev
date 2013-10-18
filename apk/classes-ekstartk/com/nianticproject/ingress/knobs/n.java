package com.nianticproject.ingress.knobs;

import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;

public final class n
{
  public static boolean a(b paramb, int paramInt)
  {
    if (paramInt == -1);
    do
    {
      return true;
      if (paramInt == 0)
        return false;
      if (paramInt < 10350)
      {
        if (ag.a == ah.a)
          throw new IllegalArgumentException("Knob value is way too low.");
        return false;
      }
    }
    while (paramInt <= paramb.a());
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.n
 * JD-Core Version:    0.6.2
 */