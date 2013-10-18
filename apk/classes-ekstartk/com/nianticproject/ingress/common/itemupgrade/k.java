package com.nianticproject.ingress.common.itemupgrade;

import com.google.a.a.an;
import com.google.a.c.dh;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.j;
import com.nianticproject.ingress.common.scanner.fu;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.r;
import java.io.PrintStream;

final class k
  implements j
{
  private boolean b = false;
  private boolean c = false;
  private fu d = null;
  private String e = null;
  private String f = null;
  private final String g = this.a.c.getGuid();
  private Portal h = (Portal)this.a.c.getComponent(Portal.class);
  private final boolean i = c.c(this.a);
  private int j = 8;

  public k(c paramc, String paramString)
  {
    if (paramString != null)
      a(paramString);
    c.d(paramc).a(this);
    c.a(paramc, true);
  }

  private void a()
  {
    if (this.d != null)
      this.d.b(this.i);
  }

  private void a(fu paramfu)
  {
    if (this.d != null)
    {
      c.a(this.a, this.d.a(paramfu));
      this.d = null;
    }
    c.a(this.a, false);
  }

  public final void a(String paramString)
  {
    this.e = ((String)an.a(paramString));
    this.d = ((fu)c.d(this.a).b(paramString));
    a();
  }

  public final void a(boolean paramBoolean)
  {
    this.b = true;
    this.c = paramBoolean;
    if (!paramBoolean)
      a(null);
  }

  public final boolean a(GameState paramGameState)
  {
    boolean bool = true;
    if ((this.b) && (!this.c))
    {
      a(null);
      bool = false;
    }
    label262: 
    do
    {
      Portal localPortal;
      do
      {
        return bool;
        if ((this.b) && (this.c))
        {
          int i2 = -1 + this.j;
          this.j = i2;
          if (i2 == 0)
          {
            a(null);
            return false;
          }
        }
        f localf = (f)paramGameState.gameEntities.get(this.g);
        if (localf != null)
        {
          localPortal = (Portal)localf.getComponent(Portal.class);
          if (localPortal != null);
        }
        else
        {
          a(null);
          return false;
        }
        if (this.d == null)
        {
          this.d = ((fu)c.d(this.a).b(this.e));
          a();
        }
        if (this.d != null)
          break;
      }
      while (!this.b);
      System.out.println("Error: rpc completed before finding startEntity");
      a(null);
      return false;
      r[] arrayOfr = r.values();
      int k = arrayOfr.length;
      int m = 0;
      int n = 0;
      int i1 = 0;
      if (m < k)
      {
        r localr = arrayOfr[m];
        String str1 = localPortal.getResonatorAtOctant(localr);
        String str2 = this.h.getResonatorAtOctant(localr);
        if (str2 == this.e)
          i1 = bool;
        if (str1 != null)
        {
          if (str1 != this.e)
            break label262;
          n = bool;
        }
        while (true)
        {
          m++;
          break;
          if (str2 == this.e)
          {
            a((fu)c.d(this.a).b(str1));
            return false;
          }
          if (str2 == null)
            this.f = str1;
        }
      }
      if ((i1 == 0) && (n != 0))
        this.h = localPortal;
    }
    while ((!this.b) || (this.f == null));
    a((fu)c.d(this.a).b(this.f));
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.k
 * JD-Core Version:    0.6.2
 */