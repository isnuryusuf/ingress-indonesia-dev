package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.f;
import android.support.v4.c.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class z
  implements f<Object>
{
  final int a = 0;
  final Bundle b = null;
  x<Object> c;
  android.support.v4.a.d<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  z n;

  public z(int paramInt)
  {
    Object localObject;
    this.c = localObject;
  }

  final void a()
  {
    if ((this.i) && (this.j))
      this.h = true;
    do
    {
      do
        return;
      while (this.h);
      this.h = true;
      if (y.a)
        new StringBuilder("  Starting: ").append(this).toString();
      if ((this.d == null) && (this.c != null))
      {
        x localx = this.c;
        this.d = localx.a();
      }
    }
    while (this.d == null);
    if ((this.d.getClass().isMemberClass()) && (!Modifier.isStatic(this.d.getClass().getModifiers())))
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
    if (!this.m)
    {
      this.d.a(this.a, this);
      this.m = true;
    }
    this.d.j();
  }

  public final void a(android.support.v4.a.d<Object> paramd, Object paramObject)
  {
    if (y.a)
      new StringBuilder("onLoadComplete: ").append(this).toString();
    if (this.l);
    do
    {
      return;
      if (this.o.b.a(this.a) != this)
        return;
      z localz1 = this.n;
      if (localz1 != null)
      {
        if (y.a)
          new StringBuilder("  Switching to pending loader: ").append(localz1).toString();
        this.n = null;
        this.o.b.a(this.a, null);
        c();
        this.o.a(localz1);
        return;
      }
      if ((this.g != paramObject) || (!this.e))
      {
        this.g = paramObject;
        this.e = true;
        if (this.h)
          b(paramd, paramObject);
      }
      z localz2 = (z)this.o.c.a(this.a);
      if ((localz2 != null) && (localz2 != this))
      {
        localz2.f = false;
        localz2.c();
        this.o.c.b(this.a);
      }
    }
    while ((this.o.d == null) || (this.o.b()));
    this.o.d.mFragments.d();
  }

  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    while (true)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(this.a);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(this.b);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCallbacks=");
      paramPrintWriter.println(this.c);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(this.d);
      if (this.d != null)
        this.d.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      if ((this.e) || (this.f))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mHaveData=");
        paramPrintWriter.print(this.e);
        paramPrintWriter.print("  mDeliveredData=");
        paramPrintWriter.println(this.f);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mData=");
        paramPrintWriter.println(this.g);
      }
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(this.h);
      paramPrintWriter.print(" mReportNextStart=");
      paramPrintWriter.print(this.k);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(this.l);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mRetaining=");
      paramPrintWriter.print(this.i);
      paramPrintWriter.print(" mRetainingStarted=");
      paramPrintWriter.print(this.j);
      paramPrintWriter.print(" mListenerRegistered=");
      paramPrintWriter.println(this.m);
      if (this.n == null)
        break;
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.n);
      paramPrintWriter.println(":");
      this = this.n;
      paramString = paramString + "  ";
    }
  }

  final void b()
  {
    if (y.a)
      new StringBuilder("  Stopping: ").append(this).toString();
    this.h = false;
    if ((!this.i) && (this.d != null) && (this.m))
    {
      this.m = false;
      this.d.a(this);
      this.d.l();
    }
  }

  final void b(android.support.v4.a.d<Object> paramd, Object paramObject)
  {
    String str2;
    if (this.c != null)
    {
      if (this.o.d == null)
        break label184;
      str2 = this.o.d.mFragments.s;
      this.o.d.mFragments.s = "onLoadFinished";
    }
    label184: for (String str1 = str2; ; str1 = null)
      try
      {
        if (y.a)
        {
          StringBuilder localStringBuilder1 = new StringBuilder("  onLoadFinished in ").append(paramd).append(": ");
          StringBuilder localStringBuilder2 = new StringBuilder(64);
          a.a(paramObject, localStringBuilder2);
          localStringBuilder2.append("}");
          localStringBuilder1.append(localStringBuilder2.toString()).toString();
        }
        this.c.a(paramObject);
        if (this.o.d != null)
          this.o.d.mFragments.s = str1;
        this.f = true;
        return;
      }
      finally
      {
        if (this.o.d != null)
          this.o.d.mFragments.s = str1;
      }
  }

  final void c()
  {
    if (y.a)
      new StringBuilder("  Destroying: ").append(this).toString();
    this.l = true;
    boolean bool = this.f;
    this.f = false;
    String str1;
    if ((this.c != null) && (this.d != null) && (this.e) && (bool))
    {
      if (y.a)
        new StringBuilder("  Reseting: ").append(this).toString();
      if (this.o.d == null)
        break label265;
      String str2 = this.o.d.mFragments.s;
      this.o.d.mFragments.s = "onLoaderReset";
      str1 = str2;
    }
    while (true)
      label265: 
      try
      {
        x localx = this.c;
        localx.A_();
        if (this.o.d != null)
          this.o.d.mFragments.s = str1;
        this.c = null;
        this.g = null;
        this.e = false;
        if (this.d != null)
        {
          if (this.m)
          {
            this.m = false;
            this.d.a(this);
          }
          this.d.n();
        }
        if (this.n != null)
          this = this.n;
      }
      finally
      {
        if (this.o.d != null)
          this.o.d.mFragments.s = str1;
      }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.a);
    localStringBuilder.append(" : ");
    a.a(this.d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.z
 * JD-Core Version:    0.6.2
 */