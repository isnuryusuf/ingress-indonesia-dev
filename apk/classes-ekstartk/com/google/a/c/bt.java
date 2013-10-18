package com.google.a.c;

import com.google.a.a.ag;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

final class bt<T>
  implements Serializable
{
  private final Comparator<? super T> a;
  private final boolean b;
  private final T c;
  private final an d;
  private final boolean e;
  private final T f;
  private final an g;

  private bt(Comparator<? super T> paramComparator, boolean paramBoolean1, T paramT1, an paraman1, boolean paramBoolean2, T paramT2, an paraman2)
  {
    this.a = ((Comparator)com.google.a.a.an.a(paramComparator));
    this.b = paramBoolean1;
    this.e = paramBoolean2;
    this.c = paramT1;
    this.d = ((an)com.google.a.a.an.a(paraman1));
    this.f = paramT2;
    this.g = ((an)com.google.a.a.an.a(paraman2));
    if (paramBoolean1)
      paramComparator.compare(paramT1, paramT1);
    if (paramBoolean2)
      paramComparator.compare(paramT2, paramT2);
    boolean bool2;
    int j;
    if ((paramBoolean1) && (paramBoolean2))
    {
      int i = paramComparator.compare(paramT1, paramT2);
      if (i > 0)
        break label183;
      bool2 = bool1;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramT1;
      arrayOfObject[bool1] = paramT2;
      com.google.a.a.an.a(bool2, "lowerEndpoint (%s) > upperEndpoint (%s)", arrayOfObject);
      if (i == 0)
      {
        if (paraman1 == an.a)
          break label189;
        j = bool1;
        label166: if (paraman2 == an.a)
          break label195;
      }
    }
    while (true)
    {
      com.google.a.a.an.a(j | bool1);
      return;
      label183: bool2 = false;
      break;
      label189: j = 0;
      break label166;
      label195: bool1 = false;
    }
  }

  static <T> bt<T> a(Comparator<? super T> paramComparator, T paramT, an paraman)
  {
    return new bt(paramComparator, true, paramT, paraman, false, null, an.a);
  }

  static <T> bt<T> b(Comparator<? super T> paramComparator, T paramT, an paraman)
  {
    return new bt(paramComparator, false, null, an.a, true, paramT, paraman);
  }

  final bt<T> a(bt<T> parambt)
  {
    com.google.a.a.an.a(parambt);
    com.google.a.a.an.a(this.a.equals(parambt.a));
    boolean bool1 = this.b;
    Object localObject1 = this.c;
    an localan1 = this.d;
    Object localObject2;
    boolean bool2;
    an localan2;
    label71: boolean bool3;
    Object localObject3;
    an localan3;
    label102: boolean bool4;
    label118: an localan4;
    if (!this.b)
    {
      bool1 = parambt.b;
      Object localObject5 = parambt.c;
      an localan6 = parambt.d;
      localObject2 = localObject5;
      bool2 = bool1;
      localan2 = localan6;
      bool3 = this.e;
      localObject3 = this.f;
      localan3 = this.g;
      if (this.e)
        break label271;
      bool3 = parambt.e;
      localObject3 = parambt.f;
      localan3 = parambt.g;
      bool4 = bool3;
      if ((!bool2) || (!bool4))
        break label324;
      int i = this.a.compare(localObject2, localObject3);
      if ((i <= 0) && ((i != 0) || (localan2 != an.a) || (localan3 != an.a)))
        break label324;
      an localan5 = an.a;
      localan3 = an.b;
      localan4 = localan5;
    }
    for (Object localObject4 = localObject3; ; localObject4 = localObject2)
    {
      return new bt(this.a, bool2, localObject4, localan4, bool4, localObject3, localan3);
      if (parambt.b)
      {
        int k = this.a.compare(this.c, parambt.c);
        if ((k < 0) || ((k == 0) && (parambt.d == an.a)))
          break;
      }
      localObject2 = localObject1;
      bool2 = bool1;
      localan2 = localan1;
      break label71;
      label271: if (parambt.e)
      {
        int j = this.a.compare(this.f, parambt.f);
        if ((j > 0) || ((j == 0) && (parambt.g == an.a)))
          break label102;
      }
      bool4 = bool3;
      break label118;
      label324: localan4 = localan2;
    }
  }

  final Comparator<? super T> a()
  {
    return this.a;
  }

  final boolean a(T paramT)
  {
    int i = 1;
    if (!this.b)
      return false;
    Object localObject = this.c;
    int j = this.a.compare(paramT, localObject);
    int k;
    int m;
    if (j < 0)
    {
      k = i;
      if (j != 0)
        break label69;
      m = i;
      label45: if (this.d != an.a)
        break label75;
    }
    while (true)
    {
      return k | m & i;
      k = 0;
      break;
      label69: m = 0;
      break label45;
      label75: i = 0;
    }
  }

  final boolean b()
  {
    return this.b;
  }

  final boolean b(T paramT)
  {
    int i = 1;
    if (!this.e)
      return false;
    Object localObject = this.f;
    int j = this.a.compare(paramT, localObject);
    int k;
    int m;
    if (j > 0)
    {
      k = i;
      if (j != 0)
        break label69;
      m = i;
      label45: if (this.g != an.a)
        break label75;
    }
    while (true)
    {
      return k | m & i;
      k = 0;
      break;
      label69: m = 0;
      break label45;
      label75: i = 0;
    }
  }

  final boolean c()
  {
    return this.e;
  }

  final boolean c(T paramT)
  {
    return (!a(paramT)) && (!b(paramT));
  }

  final T d()
  {
    return this.c;
  }

  final an e()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof bt;
    boolean bool2 = false;
    if (bool1)
    {
      bt localbt = (bt)paramObject;
      boolean bool3 = this.a.equals(localbt.a);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.b;
        boolean bool5 = localbt.b;
        bool2 = false;
        if (bool4 == bool5)
        {
          boolean bool6 = this.e;
          boolean bool7 = localbt.e;
          bool2 = false;
          if (bool6 == bool7)
          {
            boolean bool8 = this.d.equals(localbt.d);
            bool2 = false;
            if (bool8)
            {
              boolean bool9 = this.g.equals(localbt.g);
              bool2 = false;
              if (bool9)
              {
                boolean bool10 = ag.a(this.c, localbt.c);
                bool2 = false;
                if (bool10)
                {
                  boolean bool11 = ag.a(this.f, localbt.f);
                  bool2 = false;
                  if (bool11)
                    bool2 = true;
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }

  final T f()
  {
    return this.f;
  }

  final an g()
  {
    return this.g;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.c;
    arrayOfObject[2] = this.d;
    arrayOfObject[3] = this.f;
    arrayOfObject[4] = this.g;
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append(this.a).append(":");
    char c1;
    Object localObject1;
    label52: Object localObject2;
    label78: StringBuilder localStringBuilder4;
    if (this.d == an.b)
    {
      c1 = '[';
      StringBuilder localStringBuilder2 = localStringBuilder1.append(c1);
      if (!this.b)
        break label118;
      localObject1 = this.c;
      StringBuilder localStringBuilder3 = localStringBuilder2.append(localObject1).append(',');
      if (!this.e)
        break label125;
      localObject2 = this.f;
      localStringBuilder4 = localStringBuilder3.append(localObject2);
      if (this.g != an.b)
        break label132;
    }
    label132: for (char c2 = ']'; ; c2 = ')')
    {
      return c2;
      c1 = '(';
      break;
      label118: localObject1 = "-∞";
      break label52;
      label125: localObject2 = "∞";
      break label78;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bt
 * JD-Core Version:    0.6.2
 */