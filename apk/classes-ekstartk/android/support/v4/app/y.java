package android.support.v4.app;

import android.support.v4.c.a;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

final class y extends w
{
  static boolean a = false;
  final android.support.v4.c.d<z> b = new android.support.v4.c.d();
  final android.support.v4.c.d<z> c = new android.support.v4.c.d();
  FragmentActivity d;
  boolean e;
  boolean f;
  boolean g;

  y(FragmentActivity paramFragmentActivity, boolean paramBoolean)
  {
    this.d = paramFragmentActivity;
    this.e = paramBoolean;
  }

  private z c(x<Object> paramx)
  {
    z localz = new z(this, paramx);
    localz.d = paramx.a();
    return localz;
  }

  private z d(x<Object> paramx)
  {
    try
    {
      this.g = true;
      z localz = c(paramx);
      a(localz);
      return localz;
    }
    finally
    {
      this.g = false;
    }
  }

  public final <D> android.support.v4.a.d<D> a(x<D> paramx)
  {
    if (this.g)
      throw new IllegalStateException("Called while creating a loader");
    z localz = (z)this.b.a(0);
    if (a)
      new StringBuilder("initLoader in ").append(this).append(": args=").append(null).toString();
    if (localz == null)
    {
      localz = d(paramx);
      if (a)
        new StringBuilder("  Created new loader ").append(localz).toString();
    }
    while (true)
    {
      if ((localz.e) && (this.e))
        localz.b(localz.d, localz.g);
      return localz.d;
      if (a)
        new StringBuilder("  Re-using existing loader ").append(localz).toString();
      localz.c = paramx;
    }
  }

  final void a(FragmentActivity paramFragmentActivity)
  {
    this.d = paramFragmentActivity;
  }

  final void a(z paramz)
  {
    this.b.a(paramz.a, paramz);
    if (this.e)
      paramz.a();
  }

  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = 0;
    if (this.b.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      String str2 = paramString + "    ";
      for (int j = 0; j < this.b.a(); j++)
      {
        z localz2 = (z)this.b.e(j);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.b.d(j));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localz2.toString());
        localz2.a(str2, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      }
    }
    if (this.c.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      String str1 = paramString + "    ";
      while (i < this.c.a())
      {
        z localz1 = (z)this.c.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.c.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localz1.toString());
        localz1.a(str1, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i++;
      }
    }
  }

  public final <D> android.support.v4.a.d<D> b(x<D> paramx)
  {
    if (this.g)
      throw new IllegalStateException("Called while creating a loader");
    z localz1 = (z)this.b.a(0);
    if (a)
      new StringBuilder("restartLoader in ").append(this).append(": args=").append(null).toString();
    if (localz1 != null)
    {
      z localz2 = (z)this.c.a(0);
      if (localz2 == null)
        break label238;
      if (!localz1.e)
        break label145;
      if (a)
        new StringBuilder("  Removing last inactive loader: ").append(localz1).toString();
      localz2.f = false;
      localz2.c();
    }
    while (true)
    {
      localz1.d.m();
      this.c.a(0, localz1);
      while (true)
      {
        return d(paramx).d;
        label145: if (localz1.h)
          break;
        this.b.a(0, null);
        localz1.c();
      }
      if (localz1.n != null)
      {
        if (a)
          new StringBuilder("  Removing pending loader: ").append(localz1.n).toString();
        localz1.n.c();
        localz1.n = null;
      }
      localz1.n = c(paramx);
      return localz1.n.d;
      label238: if (a)
        new StringBuilder("  Making last loader inactive: ").append(localz1).toString();
    }
  }

  public final boolean b()
  {
    int i = this.b.a();
    int j = 0;
    boolean bool1 = false;
    if (j < i)
    {
      z localz = (z)this.b.e(j);
      if ((localz.h) && (!localz.f));
      for (boolean bool2 = true; ; bool2 = false)
      {
        bool1 |= bool2;
        j++;
        break;
      }
    }
    return bool1;
  }

  final void c()
  {
    if (a)
      new StringBuilder("Starting in ").append(this).toString();
    if (this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.e = true;
      for (int i = -1 + this.b.a(); i >= 0; i--)
        ((z)this.b.e(i)).a();
    }
  }

  final void d()
  {
    if (a)
      new StringBuilder("Stopping in ").append(this).toString();
    if (!this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    for (int i = -1 + this.b.a(); i >= 0; i--)
      ((z)this.b.e(i)).b();
    this.e = false;
  }

  final void e()
  {
    if (a)
      new StringBuilder("Retaining in ").append(this).toString();
    if (!this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.f = true;
      this.e = false;
      for (int i = -1 + this.b.a(); i >= 0; i--)
      {
        z localz = (z)this.b.e(i);
        if (a)
          new StringBuilder("  Retaining: ").append(localz).toString();
        localz.i = true;
        localz.j = localz.h;
        localz.h = false;
        localz.c = null;
      }
    }
  }

  final void f()
  {
    if (this.f)
    {
      if (a)
        new StringBuilder("Finished Retaining in ").append(this).toString();
      this.f = false;
      for (int i = -1 + this.b.a(); i >= 0; i--)
      {
        z localz = (z)this.b.e(i);
        if (localz.i)
        {
          if (a)
            new StringBuilder("  Finished Retaining: ").append(localz).toString();
          localz.i = false;
          if ((localz.h != localz.j) && (!localz.h))
            localz.b();
        }
        if ((localz.h) && (localz.e) && (!localz.k))
          localz.b(localz.d, localz.g);
      }
    }
  }

  final void g()
  {
    for (int i = -1 + this.b.a(); i >= 0; i--)
      ((z)this.b.e(i)).k = true;
  }

  final void h()
  {
    for (int i = -1 + this.b.a(); i >= 0; i--)
    {
      z localz = (z)this.b.e(i);
      if ((localz.h) && (localz.k))
      {
        localz.k = false;
        if (localz.e)
          localz.b(localz.d, localz.g);
      }
    }
  }

  final void i()
  {
    if (!this.f)
    {
      if (a)
        new StringBuilder("Destroying Active in ").append(this).toString();
      for (int j = -1 + this.b.a(); j >= 0; j--)
        ((z)this.b.e(j)).c();
    }
    if (a)
      new StringBuilder("Destroying Inactive in ").append(this).toString();
    for (int i = -1 + this.c.a(); i >= 0; i--)
      ((z)this.c.e(i)).c();
    this.c.b();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    a.a(this.d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.y
 * JD-Core Version:    0.6.2
 */