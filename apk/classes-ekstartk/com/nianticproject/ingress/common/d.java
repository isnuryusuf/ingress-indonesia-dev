package com.nianticproject.ingress.common;

import com.google.a.a.br;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.f;
import com.nianticproject.ingress.shared.model.ApGain;
import com.nianticproject.ingress.shared.plext.PlayerMarkupArgSet;
import com.nianticproject.ingress.shared.plext.TextMarkupArgSet;
import com.nianticproject.ingress.shared.plext.c;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class d extends n
  implements aa
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(d.class);
  private final a b;
  private final k c;

  public d(a parama, k paramk)
  {
    this.b = parama;
    this.c = paramk;
    paramk.a(this);
  }

  public final String a()
  {
    return "CommPlayerListener";
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a locala = this.b;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      locala.a(TextMarkupArgSet.a(String.format("Level up! You are now level %d.", arrayOfObject)));
    }
  }

  public final void a(long paramLong1, long paramLong2, long paramLong3, z paramz)
  {
    if (z.c == paramz)
    {
      a locala = this.b;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(0L - paramLong3);
      locala.a(TextMarkupArgSet.a(String.format("You've been hit and lost %,d XM!", arrayOfObject)));
    }
  }

  public final void a(long paramLong, List<ApGain> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      if (localIterator.hasNext())
      {
        ApGain localApGain = (ApGain)localIterator.next();
        a locala = this.b;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Long.valueOf(localApGain.b());
        com.nianticproject.ingress.shared.model.a locala1 = localApGain.a();
        String str;
        switch (e.a[locala1.ordinal()])
        {
        default:
          str = "doing something really awesome! (" + locala1.name() + ")";
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        }
        while (true)
        {
          arrayOfObject[1] = str;
          locala.a(TextMarkupArgSet.a(String.format("Gained %,d AP for %s.", arrayOfObject)));
          break;
          str = "deploying a Resonator";
          continue;
          str = "capturing a Portal";
          continue;
          str = "creating a Link";
          continue;
          str = "creating a Control Field";
          continue;
          str = "destroying a Resonator";
          continue;
          str = "destroying a Link";
          continue;
          str = "destroying a Control Field";
          continue;
          str = "creating a Resonator Mod";
          continue;
          str = "fully powering a Portal";
          continue;
          str = "hacking an enemy Portal";
          continue;
          str = "passcode redemption";
          continue;
          str = "recharging a Resonator";
          continue;
          str = "remote recharging a Resonator";
          continue;
          str = "upgrading a Resonator";
        }
      }
    }
  }

  public final void a(f paramf1, f paramf2)
  {
  }

  public final void a(String paramString)
  {
    new Object[] { paramString };
    if (!br.b(paramString))
    {
      ai localai = this.c.h();
      if (localai == null)
        localai = ai.c;
      a locala = this.b;
      c[] arrayOfc = new c[2];
      arrayOfc[0] = TextMarkupArgSet.a("Agent ID Confirmed. Welcome ");
      arrayOfc[1] = PlayerMarkupArgSet.a(paramString, this.c.k(), localai);
      locala.a(Arrays.asList(arrayOfc));
    }
  }

  public final void b()
  {
    this.c.b(this);
  }

  public final void c()
  {
  }

  public final void f_()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.d
 * JD-Core Version:    0.6.2
 */