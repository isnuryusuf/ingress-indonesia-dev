package android.support.v4.a;

import android.content.Context;
import android.support.v4.c.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class d<D>
{
  int m;
  f<D> n;
  Context o;
  boolean p = false;
  boolean q = false;
  boolean r = true;
  boolean s = false;

  public d(Context paramContext)
  {
    this.o = paramContext.getApplicationContext();
  }

  protected void a()
  {
  }

  public final void a(int paramInt, f<D> paramf)
  {
    if (this.n != null)
      throw new IllegalStateException("There is already a listener registered");
    this.n = paramf;
    this.m = paramInt;
  }

  public final void a(f<D> paramf)
  {
    if (this.n == null)
      throw new IllegalStateException("No listener register");
    if (this.n != paramf)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.n = null;
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.m);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.n);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.p);
    paramPrintWriter.print(" mContentChanged=");
    paramPrintWriter.print(this.s);
    paramPrintWriter.print(" mAbandoned=");
    paramPrintWriter.print(this.q);
    paramPrintWriter.print(" mReset=");
    paramPrintWriter.println(this.r);
  }

  public void b(D paramD)
  {
    if (this.n != null)
      this.n.a(this, paramD);
  }

  protected void f()
  {
  }

  protected void g()
  {
  }

  protected void h()
  {
  }

  public final Context i()
  {
    return this.o;
  }

  public final void j()
  {
    this.p = true;
    this.r = false;
    this.q = false;
    f();
  }

  public final void k()
  {
    a();
  }

  public final void l()
  {
    this.p = false;
    g();
  }

  public final void m()
  {
    this.q = true;
  }

  public final void n()
  {
    h();
    this.r = true;
    this.p = false;
    this.q = false;
    this.s = false;
  }

  public final void o()
  {
    if (this.p)
    {
      a();
      return;
    }
    this.s = true;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    a.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.m);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.d
 * JD-Core Version:    0.6.2
 */