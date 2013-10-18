package android.support.v4.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class c extends a<Cursor>
{
  final d<Cursor>.e f = new e(this);
  Uri g;
  String[] h;
  String i;
  String[] j;
  String k;
  Cursor l;

  public c(Context paramContext)
  {
    super(paramContext);
  }

  private void a(Cursor paramCursor)
  {
    if (this.r)
      if (paramCursor != null)
        paramCursor.close();
    Cursor localCursor;
    do
    {
      return;
      localCursor = this.l;
      this.l = paramCursor;
      if (this.p)
        super.b(paramCursor);
    }
    while ((localCursor == null) || (localCursor == paramCursor) || (localCursor.isClosed()));
    localCursor.close();
  }

  public final void a(Uri paramUri)
  {
    this.g = paramUri;
  }

  public final void a(String paramString)
  {
    this.i = paramString;
  }

  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mUri=");
    paramPrintWriter.println(this.g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mProjection=");
    paramPrintWriter.println(Arrays.toString(this.h));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelection=");
    paramPrintWriter.println(this.i);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelectionArgs=");
    paramPrintWriter.println(Arrays.toString(this.j));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSortOrder=");
    paramPrintWriter.println(this.k);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCursor=");
    paramPrintWriter.println(this.l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mContentChanged=");
    paramPrintWriter.println(this.s);
  }

  public final void a(String[] paramArrayOfString)
  {
    this.h = paramArrayOfString;
  }

  public final void b(String paramString)
  {
    this.k = paramString;
  }

  public final void b(String[] paramArrayOfString)
  {
    this.j = paramArrayOfString;
  }

  public Cursor e()
  {
    Cursor localCursor = this.o.getContentResolver().query(this.g, this.h, this.i, this.j, this.k);
    if (localCursor != null)
    {
      localCursor.getCount();
      localCursor.registerContentObserver(this.f);
    }
    return localCursor;
  }

  protected final void f()
  {
    if (this.l != null)
      a(this.l);
    boolean bool = this.s;
    this.s = false;
    if ((bool) || (this.l == null))
      k();
  }

  protected final void g()
  {
    b();
  }

  protected final void h()
  {
    super.h();
    b();
    if ((this.l != null) && (!this.l.isClosed()))
      this.l.close();
    this.l = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.c
 * JD-Core Version:    0.6.2
 */