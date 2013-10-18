package com.nianticproject.ingress;

import android.support.v4.app.Fragment;
import android.support.v4.app.j;
import android.support.v4.app.p;
import com.nianticproject.ingress.common.b;
import com.nianticproject.ingress.shared.rpc.s;
import com.nianticproject.ingress.ui.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public final class ak extends p
{
  public static final int a = s.a(new s[0]);
  public static final int b;
  public static final int c;
  private static final int[] d = arrayOfInt;
  private int[] e;
  private int[] f;
  private final ArrayList<WeakReference<k>> g = new ArrayList();
  private b h = b.a;
  private boolean i;

  static
  {
    s[] arrayOfs1 = new s[1];
    arrayOfs1[0] = s.c;
    b = s.a(arrayOfs1);
    s[] arrayOfs2 = new s[1];
    arrayOfs2[0] = s.b;
    c = s.a(arrayOfs2);
    int[] arrayOfInt = new int[3];
    arrayOfInt[0] = a;
    arrayOfInt[1] = b;
    arrayOfInt[2] = c;
  }

  public ak(j paramj, boolean paramBoolean)
  {
    super(paramj);
    a(paramBoolean);
  }

  private void a(ao paramao)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.g.iterator();
    while (localIterator1.hasNext())
    {
      WeakReference localWeakReference2 = (WeakReference)localIterator1.next();
      k localk = (k)localWeakReference2.get();
      if (localk != null)
        paramao.a(localk);
      else
        localArrayList.add(localWeakReference2);
    }
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      WeakReference localWeakReference1 = (WeakReference)localIterator2.next();
      this.g.remove(localWeakReference1);
    }
  }

  private void b(k paramk)
  {
    WeakReference localWeakReference = new WeakReference(paramk);
    this.g.add(localWeakReference);
  }

  public final Fragment a(int paramInt)
  {
    k localk = k.a(b(d(paramInt)), this.i);
    b(localk);
    return localk;
  }

  public final void a(b paramb)
  {
    ec.a("setChannel");
    this.h = paramb;
    a(new al(this, paramb));
    d();
  }

  public final void a(k paramk)
  {
    ec.a("maybeAddCommFragmentRef");
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext())
      if (paramk == ((WeakReference)localIterator.next()).get())
        return;
    b(paramk);
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.e = new int[] { 0, 2, 1 };
      this.f = new int[] { 0, 2, 1 };
      return;
    }
    this.e = new int[] { 0, -2, 1 };
    this.f = new int[] { 0, 2 };
  }

  public final int b(int paramInt)
  {
    if (this.h == b.a)
      return d[paramInt];
    return a;
  }

  public final void b(boolean paramBoolean)
  {
    ec.a("setActive");
    if (this.i != paramBoolean)
    {
      this.i = paramBoolean;
      a(new an(this, paramBoolean));
    }
  }

  public final int c()
  {
    if (this.h == b.a)
      return this.f.length;
    return 1;
  }

  public final int c(int paramInt)
  {
    return this.e[paramInt];
  }

  public final int d(int paramInt)
  {
    if (this.h == b.a)
      return this.f[paramInt];
    return 0;
  }

  public final void e()
  {
    ec.a("scrollToBottom");
    a(new am(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ak
 * JD-Core Version:    0.6.2
 */