package android.support.v4.app;

import java.io.PrintWriter;
import java.util.ArrayList;

final class a extends s
  implements Runnable
{
  final k a;
  b b;
  b c;
  int d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  boolean k;
  boolean l = true;
  String m;
  boolean n;
  int o;
  int p;
  CharSequence q;
  int r;
  CharSequence s;

  public a(k paramk)
  {
    this.a = paramk;
  }

  private void a(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    paramFragment.B = this.a;
    if (paramString != null)
    {
      if ((paramFragment.F != null) && (!paramString.equals(paramFragment.F)))
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + paramFragment.F + " now " + paramString);
      paramFragment.F = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((paramFragment.D != 0) && (paramFragment.D != paramInt1))
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + paramFragment.D + " now " + paramInt1);
      paramFragment.D = paramInt1;
      paramFragment.E = paramInt1;
    }
    b localb = new b();
    localb.c = paramInt2;
    localb.d = paramFragment;
    a(localb);
  }

  private int b(boolean paramBoolean)
  {
    if (this.n)
      throw new IllegalStateException("commit already called");
    if (k.a)
      new StringBuilder("Commit: ").append(this).toString();
    this.n = true;
    if (this.k);
    for (this.o = this.a.a(this); ; this.o = -1)
    {
      this.a.a(this, paramBoolean);
      return this.o;
    }
  }

  public final int a()
  {
    return b(false);
  }

  public final s a(int paramInt, Fragment paramFragment)
  {
    a(paramInt, paramFragment, null, 1);
    return this;
  }

  public final s a(int paramInt, Fragment paramFragment, String paramString)
  {
    a(paramInt, paramFragment, paramString, 1);
    return this;
  }

  public final s a(Fragment paramFragment)
  {
    a(2131230838, paramFragment, null, 2);
    return this;
  }

  public final s a(Fragment paramFragment, String paramString)
  {
    a(0, paramFragment, paramString, 1);
    return this;
  }

  final void a(int paramInt)
  {
    if (!this.k);
    while (true)
    {
      return;
      if (k.a)
        new StringBuilder("Bump nesting in ").append(this).append(" by ").append(paramInt).toString();
      for (b localb = this.b; localb != null; localb = localb.a)
      {
        if (localb.d != null)
        {
          Fragment localFragment2 = localb.d;
          localFragment2.A = (paramInt + localFragment2.A);
          if (k.a)
            new StringBuilder("Bump nesting of ").append(localb.d).append(" to ").append(localb.d.A).toString();
        }
        if (localb.i != null)
          for (int i1 = -1 + localb.i.size(); i1 >= 0; i1--)
          {
            Fragment localFragment1 = (Fragment)localb.i.get(i1);
            localFragment1.A = (paramInt + localFragment1.A);
            if (k.a)
              new StringBuilder("Bump nesting of ").append(localFragment1).append(" to ").append(localFragment1.A).toString();
          }
      }
    }
  }

  final void a(b paramb)
  {
    if (this.b == null)
    {
      this.c = paramb;
      this.b = paramb;
    }
    while (true)
    {
      paramb.e = this.e;
      paramb.f = this.f;
      paramb.g = this.g;
      paramb.h = this.h;
      this.d = (1 + this.d);
      return;
      paramb.b = this.c;
      this.c.a = paramb;
      this.c = paramb;
    }
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mName=");
    paramPrintWriter.print(this.m);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.o);
    paramPrintWriter.print(" mCommitted=");
    paramPrintWriter.println(this.n);
    if (this.i != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTransition=#");
      paramPrintWriter.print(Integer.toHexString(this.i));
      paramPrintWriter.print(" mTransitionStyle=#");
      paramPrintWriter.println(Integer.toHexString(this.j));
    }
    if ((this.e != 0) || (this.f != 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mEnterAnim=#");
      paramPrintWriter.print(Integer.toHexString(this.e));
      paramPrintWriter.print(" mExitAnim=#");
      paramPrintWriter.println(Integer.toHexString(this.f));
    }
    if ((this.g != 0) || (this.h != 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mPopEnterAnim=#");
      paramPrintWriter.print(Integer.toHexString(this.g));
      paramPrintWriter.print(" mPopExitAnim=#");
      paramPrintWriter.println(Integer.toHexString(this.h));
    }
    if ((this.p != 0) || (this.q != null))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mBreadCrumbTitleRes=#");
      paramPrintWriter.print(Integer.toHexString(this.p));
      paramPrintWriter.print(" mBreadCrumbTitleText=");
      paramPrintWriter.println(this.q);
    }
    if ((this.r != 0) || (this.s != null))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
      paramPrintWriter.print(Integer.toHexString(this.r));
      paramPrintWriter.print(" mBreadCrumbShortTitleText=");
      paramPrintWriter.println(this.s);
    }
    if (this.b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str = paramString + "    ";
      for (b localb = this.b; localb != null; localb = localb.a)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  Op #");
        paramPrintWriter.print(0);
        paramPrintWriter.println(":");
        paramPrintWriter.print(str);
        paramPrintWriter.print("cmd=");
        paramPrintWriter.print(localb.c);
        paramPrintWriter.print(" fragment=");
        paramPrintWriter.println(localb.d);
        if ((localb.e != 0) || (localb.f != 0))
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("enterAnim=#");
          paramPrintWriter.print(Integer.toHexString(localb.e));
          paramPrintWriter.print(" exitAnim=#");
          paramPrintWriter.println(Integer.toHexString(localb.f));
        }
        if ((localb.g != 0) || (localb.h != 0))
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("popEnterAnim=#");
          paramPrintWriter.print(Integer.toHexString(localb.g));
          paramPrintWriter.print(" popExitAnim=#");
          paramPrintWriter.println(Integer.toHexString(localb.h));
        }
        if ((localb.i != null) && (localb.i.size() > 0))
        {
          int i1 = 0;
          if (i1 < localb.i.size())
          {
            paramPrintWriter.print(str);
            if (localb.i.size() == 1)
              paramPrintWriter.print("Removed: ");
            while (true)
            {
              paramPrintWriter.println(localb.i.get(i1));
              i1++;
              break;
              paramPrintWriter.println("Removed:");
              paramPrintWriter.print(str);
              paramPrintWriter.print("  #");
              paramPrintWriter.print(0);
              paramPrintWriter.print(": ");
            }
          }
        }
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (k.a)
      new StringBuilder("popFromBackStack: ").append(this).toString();
    a(-1);
    b localb = this.c;
    if (localb != null)
    {
      switch (localb.c)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localb.c);
      case 1:
        Fragment localFragment8 = localb.d;
        localFragment8.N = localb.h;
        this.a.a(localFragment8, k.d(this.i), this.j);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localb = localb.b;
        break;
        Fragment localFragment6 = localb.d;
        if (localFragment6 != null)
        {
          localFragment6.N = localb.h;
          this.a.a(localFragment6, k.d(this.i), this.j);
        }
        if (localb.i != null)
        {
          for (int i1 = 0; i1 < localb.i.size(); i1++)
          {
            Fragment localFragment7 = (Fragment)localb.i.get(i1);
            localFragment7.N = localb.g;
            this.a.a(localFragment7, false);
          }
          Fragment localFragment5 = localb.d;
          localFragment5.N = localb.g;
          this.a.a(localFragment5, false);
          continue;
          Fragment localFragment4 = localb.d;
          localFragment4.N = localb.g;
          this.a.c(localFragment4, k.d(this.i), this.j);
          continue;
          Fragment localFragment3 = localb.d;
          localFragment3.N = localb.h;
          this.a.b(localFragment3, k.d(this.i), this.j);
          continue;
          Fragment localFragment2 = localb.d;
          localFragment2.N = localb.g;
          this.a.e(localFragment2, k.d(this.i), this.j);
          continue;
          Fragment localFragment1 = localb.d;
          localFragment1.N = localb.g;
          this.a.d(localFragment1, k.d(this.i), this.j);
        }
      }
    }
    if (paramBoolean)
      this.a.a(this.a.n, k.d(this.i), this.j, true);
    if (this.o >= 0)
    {
      this.a.c(this.o);
      this.o = -1;
    }
  }

  public final int b()
  {
    return b(true);
  }

  public final s b(Fragment paramFragment)
  {
    b localb = new b();
    localb.c = 3;
    localb.d = paramFragment;
    a(localb);
    return this;
  }

  public final s c(Fragment paramFragment)
  {
    b localb = new b();
    localb.c = 6;
    localb.d = paramFragment;
    a(localb);
    return this;
  }

  public final s d(Fragment paramFragment)
  {
    b localb = new b();
    localb.c = 7;
    localb.d = paramFragment;
    a(localb);
    return this;
  }

  public final void run()
  {
    if (k.a)
      new StringBuilder("Run: ").append(this).toString();
    if ((this.k) && (this.o < 0))
      throw new IllegalStateException("addToBackStack() called after commit()");
    a(1);
    b localb = this.b;
    if (localb != null)
    {
      switch (localb.c)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localb.c);
      case 1:
        Fragment localFragment9 = localb.d;
        localFragment9.N = localb.e;
        this.a.a(localFragment9, false);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localb = localb.a;
        break;
        Fragment localFragment6 = localb.d;
        Fragment localFragment7;
        if (this.a.g != null)
        {
          int i1 = 0;
          localFragment7 = localFragment6;
          if (i1 < this.a.g.size())
          {
            Fragment localFragment8 = (Fragment)this.a.g.get(i1);
            if (k.a)
              new StringBuilder("OP_REPLACE: adding=").append(localFragment7).append(" old=").append(localFragment8).toString();
            if ((localFragment7 == null) || (localFragment8.E == localFragment7.E))
            {
              if (localFragment8 != localFragment7)
                break label299;
              localFragment7 = null;
              localb.d = null;
            }
            while (true)
            {
              i1++;
              break;
              label299: if (localb.i == null)
                localb.i = new ArrayList();
              localb.i.add(localFragment8);
              localFragment8.N = localb.f;
              if (this.k)
              {
                localFragment8.A = (1 + localFragment8.A);
                if (k.a)
                  new StringBuilder("Bump nesting of ").append(localFragment8).append(" to ").append(localFragment8.A).toString();
              }
              this.a.a(localFragment8, this.i, this.j);
            }
          }
        }
        else
        {
          localFragment7 = localFragment6;
        }
        if (localFragment7 != null)
        {
          localFragment7.N = localb.e;
          this.a.a(localFragment7, false);
          continue;
          Fragment localFragment5 = localb.d;
          localFragment5.N = localb.f;
          this.a.a(localFragment5, this.i, this.j);
          continue;
          Fragment localFragment4 = localb.d;
          localFragment4.N = localb.f;
          this.a.b(localFragment4, this.i, this.j);
          continue;
          Fragment localFragment3 = localb.d;
          localFragment3.N = localb.e;
          this.a.c(localFragment3, this.i, this.j);
          continue;
          Fragment localFragment2 = localb.d;
          localFragment2.N = localb.f;
          this.a.d(localFragment2, this.i, this.j);
          continue;
          Fragment localFragment1 = localb.d;
          localFragment1.N = localb.e;
          this.a.e(localFragment1, this.i, this.j);
        }
      }
    }
    this.a.a(this.a.n, this.i, this.j, true);
    if (this.k)
      this.a.b(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.a
 * JD-Core Version:    0.6.2
 */