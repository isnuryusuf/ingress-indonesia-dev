package android.support.v4.a;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.c.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class a<D> extends d<D>
{
  volatile a<D>.b a;
  volatile a<D>.b b;
  long c;
  long d = -10000L;
  Handler e;

  public a(Context paramContext)
  {
    super(paramContext);
  }

  protected final void a()
  {
    super.a();
    b();
    this.a = new b(this);
    c();
  }

  final void a(a<D>.b parama, D paramD)
  {
    a(paramD);
    if (this.b == parama)
    {
      this.d = SystemClock.uptimeMillis();
      this.b = null;
      c();
    }
  }

  public void a(D paramD)
  {
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (this.a != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(this.a);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.a.b);
    }
    if (this.b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(this.b);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.b.b);
    }
    if (this.c != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      e.a(this.c, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      e.a(this.d, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }

  public final boolean b()
  {
    if (this.a != null)
    {
      if (this.b != null)
      {
        if (this.a.b)
        {
          this.a.b = false;
          this.e.removeCallbacks(this.a);
        }
        this.a = null;
      }
    }
    else
      return false;
    if (this.a.b)
    {
      this.a.b = false;
      this.e.removeCallbacks(this.a);
      this.a = null;
      return false;
    }
    boolean bool = this.a.d();
    if (bool)
      this.b = this.a;
    this.a = null;
    return bool;
  }

  final void c()
  {
    if ((this.b == null) && (this.a != null))
    {
      if (this.a.b)
      {
        this.a.b = false;
        this.e.removeCallbacks(this.a);
      }
      if ((this.c > 0L) && (SystemClock.uptimeMillis() < this.d + this.c))
      {
        this.a.b = true;
        this.e.postAtTime(this.a, this.d + this.c);
      }
    }
    else
    {
      return;
    }
    this.a.a(g.d);
  }

  public abstract D d();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.a
 * JD-Core Version:    0.6.2
 */