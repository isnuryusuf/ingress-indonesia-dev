package com.a.a;

import java.util.ArrayList;
import java.util.List;

public abstract class a<C, T extends C, L extends a, K extends d<C, T, L>>
{
  public static final int BOTTOM = 4;
  public static final int CENTER = 1;
  public static final int LEFT = 8;
  public static final int RIGHT = 16;
  public static final int TOP = 2;
  int align = 1;
  private final c cellDefaults = c.a(this);
  private final ArrayList<c> cells = new ArrayList(4);
  private final ArrayList<c> columnDefaults = new ArrayList(2);
  private float[] columnMinWidth;
  private float[] columnPrefWidth;
  private float[] columnWeightedWidth;
  private float[] columnWidth;
  private int columns;
  b debug = b.a;
  private float[] expandHeight;
  private float[] expandWidth;
  e padBottom;
  e padLeft;
  e padRight;
  e padTop;
  private c rowDefaults;
  private float[] rowHeight;
  private float[] rowMinHeight;
  private float[] rowPrefHeight;
  private float[] rowWeightedHeight;
  private int rows;
  private boolean sizeInvalid = true;
  T table;
  private float tableMinHeight;
  private float tableMinWidth;
  private float tablePrefHeight;
  private float tablePrefWidth;
  K toolkit;

  public a(K paramK)
  {
    this.toolkit = paramK;
  }

  private void computeSize()
  {
    this.sizeInvalid = false;
    ArrayList localArrayList = this.cells;
    if ((localArrayList.size() > 0) && (!((c)localArrayList.get(-1 + localArrayList.size())).C))
      endRow();
    this.columnMinWidth = ensureSize(this.columnMinWidth, this.columns);
    this.rowMinHeight = ensureSize(this.rowMinHeight, this.rows);
    this.columnPrefWidth = ensureSize(this.columnPrefWidth, this.columns);
    this.rowPrefHeight = ensureSize(this.rowPrefHeight, this.rows);
    this.columnWidth = ensureSize(this.columnWidth, this.columns);
    this.rowHeight = ensureSize(this.rowHeight, this.rows);
    this.expandWidth = ensureSize(this.expandWidth, this.columns);
    this.expandHeight = ensureSize(this.expandHeight, this.rows);
    float f1 = 0.0F;
    int i = localArrayList.size();
    int j = 0;
    c localc5;
    float f27;
    label339: label374: float f29;
    label423: float f31;
    label463: float f32;
    float f33;
    float f34;
    float f35;
    float f36;
    float f37;
    if (j < i)
    {
      localc5 = (c)localArrayList.get(j);
      if (!localc5.t.booleanValue())
      {
        if ((localc5.s.intValue() != 0) && (this.expandHeight[localc5.E] == 0.0F))
          this.expandHeight[localc5.E] = localc5.s.intValue();
        if ((localc5.u.intValue() == 1) && (localc5.r.intValue() != 0) && (this.expandWidth[localc5.D] == 0.0F))
          this.expandWidth[localc5.D] = localc5.r.intValue();
        float f26 = w(localc5.l, localc5);
        if (localc5.D != 0)
          break label761;
        f27 = 0.0F;
        localc5.H = (f27 + f26);
        if (localc5.F != -1)
          break label783;
        localc5.G = h(localc5.k, localc5);
        f1 = w(localc5.j, localc5);
        float f28 = w(localc5.n, localc5);
        if (localc5.D + localc5.u.intValue() != this.columns)
          break label844;
        f29 = 0.0F;
        localc5.J = (f29 + f28);
        float f30 = h(localc5.m, localc5);
        if (localc5.E != -1 + this.rows)
          break label850;
        f31 = 0.0F;
        localc5.I = (f31 + f30);
        f32 = w(localc5.c, localc5);
        f33 = h(localc5.d, localc5);
        f34 = w(localc5.a, localc5);
        f35 = h(localc5.b, localc5);
        f36 = w(localc5.e, localc5);
        f37 = h(localc5.f, localc5);
        if (f32 < f34)
          f32 = f34;
        if (f33 < f35)
          f33 = f35;
        if ((f36 <= 0.0F) || (f32 <= f36))
          break label2054;
      }
    }
    while (true)
    {
      if ((f37 > 0.0F) && (f33 > f37));
      while (true)
      {
        if (localc5.u.intValue() == 1)
        {
          float f39 = localc5.H + localc5.J;
          this.columnPrefWidth[localc5.D] = Math.max(this.columnPrefWidth[localc5.D], f36 + f39);
          this.columnMinWidth[localc5.D] = Math.max(this.columnMinWidth[localc5.D], f39 + f34);
        }
        float f38 = localc5.G + localc5.I;
        this.rowPrefHeight[localc5.E] = Math.max(this.rowPrefHeight[localc5.E], f37 + f38);
        this.rowMinHeight[localc5.E] = Math.max(this.rowMinHeight[localc5.E], f38 + f35);
        j++;
        break;
        label761: f27 = Math.max(0.0F, w(localc5.h, localc5)) - f1;
        break label339;
        label783: c localc6 = (c)localArrayList.get(localc5.F);
        localc5.G = (h(localc5.k, localc5) + Math.max(0.0F, h(localc5.g, localc5) - h(localc6.i, localc6)));
        break label374;
        label844: f29 = f1;
        break label423;
        label850: f31 = h(localc5.i, localc5);
        break label463;
        int k = localArrayList.size();
        label1009: for (int m = 0; m < k; m++)
        {
          c localc4 = (c)localArrayList.get(m);
          if ((!localc4.t.booleanValue()) && (localc4.r.intValue() != 0))
          {
            int i15 = localc4.D;
            int i16 = i15 + localc4.u.intValue();
            while (i15 < i16)
            {
              if (this.expandWidth[i15] != 0.0F)
                break label1009;
              i15++;
            }
            int i17 = localc4.D;
            int i18 = i17 + localc4.u.intValue();
            while (i17 < i18)
            {
              this.expandWidth[i17] = localc4.r.intValue();
              i17++;
            }
          }
        }
        int n = localArrayList.size();
        int i1 = 0;
        c localc3;
        float f16;
        float f17;
        float f18;
        if (i1 < n)
        {
          localc3 = (c)localArrayList.get(i1);
          if ((!localc3.t.booleanValue()) && (localc3.u.intValue() != 1))
          {
            f16 = w(localc3.a, localc3);
            f17 = w(localc3.c, localc3);
            f18 = w(localc3.e, localc3);
            if (f17 < f16)
              f17 = f16;
            if ((f18 <= 0.0F) || (f17 <= f18))
              break label2040;
          }
        }
        while (true)
        {
          int i8 = localc3.D;
          int i9 = i8 + localc3.u.intValue();
          float f19 = 0.0F;
          float f25;
          for (float f20 = 0.0F; i8 < i9; f20 = f25)
          {
            f19 += this.columnMinWidth[i8];
            f25 = f20 + this.columnPrefWidth[i8];
            i8++;
          }
          float f21 = 0.0F;
          int i10 = localc3.D;
          int i11 = i10 + localc3.u.intValue();
          while (i10 < i11)
          {
            f21 += this.expandWidth[i10];
            i10++;
          }
          float f22 = Math.max(0.0F, f16 - f19);
          float f23 = Math.max(0.0F, f18 - f20);
          int i12 = localc3.D;
          int i13 = i12 + localc3.u.intValue();
          int i14 = i12;
          if (i14 < i13)
          {
            if (f21 == 0.0F);
            for (float f24 = 1.0F / localc3.u.intValue(); ; f24 = this.expandWidth[i14] / f21)
            {
              float[] arrayOfFloat1 = this.columnMinWidth;
              arrayOfFloat1[i14] += f22 * f24;
              float[] arrayOfFloat2 = this.columnPrefWidth;
              arrayOfFloat2[i14] += f24 * f23;
              i14++;
              break;
            }
          }
          i1++;
          break;
          float f2 = 0.0F;
          float f3 = 0.0F;
          float f4 = 0.0F;
          float f5 = 0.0F;
          int i2 = localArrayList.size();
          int i3 = 0;
          float f14;
          float f10;
          float f11;
          if (i3 < i2)
          {
            c localc2 = (c)localArrayList.get(i3);
            if (localc2.t.booleanValue())
              break label2025;
            if ((localc2.v == Boolean.TRUE) && (localc2.u.intValue() == 1))
            {
              float f15 = localc2.H + localc2.J;
              f2 = Math.max(f2, this.columnMinWidth[localc2.D] - f15);
              f4 = Math.max(f4, this.columnPrefWidth[localc2.D] - f15);
            }
            if (localc2.w != Boolean.TRUE)
              break label2025;
            float f13 = localc2.G + localc2.I;
            f14 = Math.max(f3, this.rowMinHeight[localc2.E] - f13);
            f10 = Math.max(f5, this.rowPrefHeight[localc2.E] - f13);
            f11 = f2;
          }
          for (float f12 = f14; ; f12 = f3)
          {
            i3++;
            f3 = f12;
            f2 = f11;
            f5 = f10;
            break;
            if ((f4 > 0.0F) || (f5 > 0.0F))
            {
              int i4 = localArrayList.size();
              for (int i5 = 0; i5 < i4; i5++)
              {
                c localc1 = (c)localArrayList.get(i5);
                if (!localc1.t.booleanValue())
                {
                  if ((f4 > 0.0F) && (localc1.v == Boolean.TRUE) && (localc1.u.intValue() == 1))
                  {
                    float f9 = localc1.H + localc1.J;
                    this.columnMinWidth[localc1.D] = (f2 + f9);
                    this.columnPrefWidth[localc1.D] = (f9 + f4);
                  }
                  if ((f5 > 0.0F) && (localc1.w == Boolean.TRUE))
                  {
                    float f8 = localc1.G + localc1.I;
                    this.rowMinHeight[localc1.E] = (f3 + f8);
                    this.rowPrefHeight[localc1.E] = (f8 + f5);
                  }
                }
              }
            }
            this.tableMinWidth = 0.0F;
            this.tableMinHeight = 0.0F;
            this.tablePrefWidth = 0.0F;
            this.tablePrefHeight = 0.0F;
            for (int i6 = 0; i6 < this.columns; i6++)
            {
              this.tableMinWidth += this.columnMinWidth[i6];
              this.tablePrefWidth += this.columnPrefWidth[i6];
            }
            for (int i7 = 0; i7 < this.rows; i7++)
            {
              this.tableMinHeight += this.rowMinHeight[i7];
              this.tablePrefHeight += Math.max(this.rowMinHeight[i7], this.rowPrefHeight[i7]);
            }
            float f6 = w(this.padLeft) + w(this.padRight);
            float f7 = h(this.padTop) + h(this.padBottom);
            this.tableMinWidth = (f6 + this.tableMinWidth);
            this.tableMinHeight = (f7 + this.tableMinHeight);
            this.tablePrefWidth = Math.max(f6 + this.tablePrefWidth, this.tableMinWidth);
            this.tablePrefHeight = Math.max(f7 + this.tablePrefHeight, this.tableMinHeight);
            return;
            label2025: f10 = f5;
            f11 = f2;
          }
          label2040: f18 = f17;
        }
        f37 = f33;
      }
      label2054: f36 = f32;
    }
  }

  private void endRow()
  {
    int i = -1 + this.cells.size();
    int j = 0;
    for (int k = i; k >= 0; k--)
    {
      c localc = (c)this.cells.get(k);
      if (localc.C)
        break;
      j += localc.u.intValue();
    }
    this.columns = Math.max(this.columns, j);
    this.rows = (1 + this.rows);
    ((c)this.cells.get(-1 + this.cells.size())).C = true;
    invalidate();
  }

  private float[] ensureSize(float[] paramArrayOfFloat, int paramInt)
  {
    if ((paramArrayOfFloat == null) || (paramArrayOfFloat.length < paramInt))
      paramArrayOfFloat = new float[paramInt];
    while (true)
    {
      return paramArrayOfFloat;
      int i = 0;
      int j = paramArrayOfFloat.length;
      while (i < j)
      {
        paramArrayOfFloat[i] = 0.0F;
        i++;
      }
    }
  }

  private float h(e parame)
  {
    if (parame == null)
      return 0.0F;
    return parame.c(this.table);
  }

  private float h(e parame, c paramc)
  {
    if (parame == null)
      return 0.0F;
    return d.instance.height(parame.a(paramc));
  }

  private float w(e parame)
  {
    if (parame == null)
      return 0.0F;
    return parame.b(this.table);
  }

  private float w(e parame, c paramc)
  {
    if (parame == null)
      return 0.0F;
    return d.instance.width(parame.a(paramc));
  }

  public c<C> add(C paramC)
  {
    c localc1 = new c(this);
    localc1.x = paramC;
    c localc4;
    int i;
    label98: int m;
    if (this.cells.size() > 0)
    {
      localc4 = (c)this.cells.get(-1 + this.cells.size());
      if (localc4.C)
        break label629;
      localc4.D += localc4.u.intValue();
      localc1.E = localc4.E;
      if (localc1.E > 0)
      {
        i = -1 + this.cells.size();
        if (i >= 0)
        {
          c localc5 = (c)this.cells.get(i);
          int j = localc5.D;
          int k = j + localc5.u.intValue();
          m = j;
          label141: if (m >= k)
            break label649;
          if (m != localc1.D)
            break label643;
          localc1.F = i;
        }
      }
    }
    this.cells.add(localc1);
    c localc3;
    if (localc1.D < this.columnDefaults.size())
    {
      localc3 = (c)this.columnDefaults.get(localc1.D);
      if (localc3 != null)
        label207: localc1.a(localc3);
    }
    while (true)
    {
      c localc2 = this.rowDefaults;
      if (localc2 != null)
      {
        if (localc2.a != null)
          localc1.a = localc2.a;
        if (localc2.b != null)
          localc1.b = localc2.b;
        if (localc2.c != null)
          localc1.c = localc2.c;
        if (localc2.d != null)
          localc1.d = localc2.d;
        if (localc2.e != null)
          localc1.e = localc2.e;
        if (localc2.f != null)
          localc1.f = localc2.f;
        if (localc2.g != null)
          localc1.g = localc2.g;
        if (localc2.h != null)
          localc1.h = localc2.h;
        if (localc2.i != null)
          localc1.i = localc2.i;
        if (localc2.j != null)
          localc1.j = localc2.j;
        if (localc2.k != null)
          localc1.k = localc2.k;
        if (localc2.l != null)
          localc1.l = localc2.l;
        if (localc2.m != null)
          localc1.m = localc2.m;
        if (localc2.n != null)
          localc1.n = localc2.n;
        if (localc2.o != null)
          localc1.o = localc2.o;
        if (localc2.p != null)
          localc1.p = localc2.p;
        if (localc2.q != null)
          localc1.q = localc2.q;
        if (localc2.r != null)
          localc1.r = localc2.r;
        if (localc2.s != null)
          localc1.s = localc2.s;
        if (localc2.t != null)
          localc1.t = localc2.t;
        if (localc2.u != null)
          localc1.u = localc2.u;
        if (localc2.v != null)
          localc1.v = localc2.v;
        if (localc2.w != null)
          localc1.w = localc2.w;
      }
      this.toolkit.addChild(this.table, paramC);
      return localc1;
      label629: localc1.E = (1 + localc4.E);
      break;
      label643: m++;
      break label141;
      label649: i--;
      break label98;
      localc3 = this.cellDefaults;
      break label207;
      localc1.a(this.cellDefaults);
    }
  }

  public L align(int paramInt)
  {
    this.align = paramInt;
    return this;
  }

  public L bottom()
  {
    this.align = (0x4 | this.align);
    this.align = (0xFFFFFFFD & this.align);
    return this;
  }

  public L center()
  {
    this.align = 1;
    return this;
  }

  public void clear()
  {
    for (int i = -1 + this.cells.size(); i >= 0; i--)
      this.toolkit.removeChild(this.table, ((c)this.cells.get(i)).x);
    this.cells.clear();
    this.rows = 0;
    this.columns = 0;
    invalidate();
  }

  public c columnDefaults(int paramInt)
  {
    c localc;
    if (this.columnDefaults.size() > paramInt)
      localc = (c)this.columnDefaults.get(paramInt);
    while (localc == null)
    {
      localc = new c(this);
      localc.a(this.cellDefaults);
      if (paramInt < this.columnDefaults.size())
        break label101;
      int i = this.columnDefaults.size();
      while (true)
        if (i < paramInt)
        {
          this.columnDefaults.add(null);
          i++;
          continue;
          localc = null;
          break;
        }
      this.columnDefaults.add(localc);
    }
    return localc;
    label101: this.columnDefaults.set(paramInt, localc);
    return localc;
  }

  public L debug()
  {
    this.debug = b.b;
    invalidate();
    return this;
  }

  public L debug(b paramb)
  {
    this.debug = paramb;
    if (paramb == b.a)
    {
      this.toolkit.clearDebugRectangles(this);
      return this;
    }
    invalidate();
    return this;
  }

  public L debugCell()
  {
    this.debug = b.d;
    invalidate();
    return this;
  }

  public L debugTable()
  {
    this.debug = b.c;
    invalidate();
    return this;
  }

  public L debugWidget()
  {
    this.debug = b.e;
    invalidate();
    return this;
  }

  public c defaults()
  {
    return this.cellDefaults;
  }

  public int getAlign()
  {
    return this.align;
  }

  public c getCell(C paramC)
  {
    int i = this.cells.size();
    for (int j = 0; j < i; j++)
    {
      c localc = (c)this.cells.get(j);
      if (localc.x == paramC)
        return localc;
    }
    return null;
  }

  public List<c> getCells()
  {
    return this.cells;
  }

  public b getDebug()
  {
    return this.debug;
  }

  public float getMinHeight()
  {
    if (this.sizeInvalid)
      computeSize();
    return this.tableMinHeight;
  }

  public float getMinWidth()
  {
    if (this.sizeInvalid)
      computeSize();
    return this.tableMinWidth;
  }

  public e getPadBottom()
  {
    return this.padBottom;
  }

  public e getPadLeft()
  {
    return this.padLeft;
  }

  public e getPadRight()
  {
    return this.padRight;
  }

  public e getPadTop()
  {
    return this.padTop;
  }

  public float getPrefHeight()
  {
    if (this.sizeInvalid)
      computeSize();
    return this.tablePrefHeight;
  }

  public float getPrefWidth()
  {
    if (this.sizeInvalid)
      computeSize();
    return this.tablePrefWidth;
  }

  public int getRow(float paramFloat)
  {
    float f = paramFloat + h(this.padTop);
    int i = this.cells.size();
    if (i == 0)
      return -1;
    while (true)
    {
      int j;
      if ((j < i) && (!((c)this.cells.get(j)).C))
      {
        j++;
      }
      else
      {
        while (true)
        {
          int n;
          if (k < i)
          {
            ArrayList localArrayList = this.cells;
            n = k + 1;
            c localc = (c)localArrayList.get(k);
            if (localc.q())
              break label149;
            if (localc.z + localc.G <= f)
              if (!localc.C)
                break label142;
          }
          label142: for (int i1 = m + 1; ; i1 = m)
          {
            m = i1;
            k = n;
            break;
            return this.rows - m;
          }
          label149: int k = n;
          continue;
          k = j;
          int m = 0;
        }
        j = 0;
      }
    }
  }

  public T getTable()
  {
    return this.table;
  }

  public void invalidate()
  {
    this.sizeInvalid = true;
  }

  public abstract void invalidateHierarchy();

  public void layout(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    d locald = this.toolkit;
    ArrayList localArrayList = this.cells;
    if (this.sizeInvalid)
      computeSize();
    float f1 = w(this.padLeft) + w(this.padRight);
    float f2 = h(this.padTop) + h(this.padBottom);
    float f3 = 0.0F;
    float f4 = 0.0F;
    float f5 = 0.0F;
    float f6 = 0.0F;
    for (int i = 0; i < this.columns; i++)
    {
      f3 += this.columnMinWidth[i];
      f5 += this.expandWidth[i];
    }
    for (int j = 0; j < this.rows; j++)
    {
      f4 += this.rowMinHeight[j];
      f6 += this.expandHeight[j];
    }
    float f7 = this.tablePrefWidth - f3;
    float[] arrayOfFloat1;
    float f10;
    if (f7 == 0.0F)
    {
      arrayOfFloat1 = this.columnMinWidth;
      f10 = this.tablePrefHeight - f4;
      if (f10 != 0.0F)
        break label382;
    }
    label382: float[] arrayOfFloat2;
    for (Object localObject = this.rowMinHeight; ; localObject = arrayOfFloat2)
    {
      int n = localArrayList.size();
      int i1 = 0;
      c localc4;
      float f48;
      float f49;
      float f50;
      float f51;
      float f52;
      float f53;
      float f54;
      float f55;
      if (i1 < n)
      {
        localc4 = (c)localArrayList.get(i1);
        if (!localc4.t.booleanValue())
        {
          int i25 = localc4.D;
          int i26 = i25 + localc4.u.intValue();
          f48 = 0.0F;
          while (true)
            if (i25 < i26)
            {
              float f56 = f48 + arrayOfFloat1[i25];
              i25++;
              f48 = f56;
              continue;
              float f8 = Math.min(f7, Math.max(0.0F, paramFloat3 - f3));
              arrayOfFloat1 = ensureSize(this.columnWeightedWidth, this.columns);
              this.columnWeightedWidth = arrayOfFloat1;
              for (int k = 0; k < this.columns; k++)
              {
                float f9 = (this.columnPrefWidth[k] - this.columnMinWidth[k]) / f7;
                arrayOfFloat1[k] = (this.columnMinWidth[k] + f9 * f8);
              }
              break;
              arrayOfFloat2 = ensureSize(this.rowWeightedHeight, this.rows);
              this.rowWeightedHeight = arrayOfFloat2;
              float f11 = Math.min(f10, Math.max(0.0F, paramFloat4 - f4));
              for (int m = 0; m < this.rows; m++)
              {
                float f57 = (this.rowPrefHeight[m] - this.rowMinHeight[m]) / f10;
                arrayOfFloat2[m] = (this.rowMinHeight[m] + f57 * f11);
              }
            }
          f49 = localObject[localc4.E];
          f50 = w(localc4.c, localc4);
          f51 = h(localc4.d, localc4);
          f52 = w(localc4.a, localc4);
          f53 = h(localc4.b, localc4);
          f54 = w(localc4.e, localc4);
          f55 = h(localc4.f, localc4);
          if (f50 >= f52)
            break label2369;
        }
      }
      while (true)
      {
        if (f51 < f53);
        while (true)
        {
          if ((f54 > 0.0F) && (f52 > f54));
          while (true)
          {
            if ((f55 > 0.0F) && (f53 > f55));
            while (true)
            {
              localc4.A = Math.min(f48 - localc4.H - localc4.J, f54);
              localc4.B = Math.min(f49 - localc4.G - localc4.I, f55);
              if (localc4.u.intValue() == 1)
                this.columnWidth[localc4.D] = Math.max(this.columnWidth[localc4.D], f48);
              this.rowHeight[localc4.E] = Math.max(this.rowHeight[localc4.E], f49);
              i1++;
              break;
              if (f5 > 0.0F)
              {
                float f45 = paramFloat3 - f1;
                for (int i22 = 0; i22 < this.columns; i22++)
                  f45 -= this.columnWidth[i22];
                float f46 = 0.0F;
                int i23 = 0;
                for (int i24 = 0; i24 < this.columns; i24++)
                  if (this.expandWidth[i24] != 0.0F)
                  {
                    float f47 = f45 * this.expandWidth[i24] / f5;
                    float[] arrayOfFloat7 = this.columnWidth;
                    arrayOfFloat7[i24] = (f47 + arrayOfFloat7[i24]);
                    f46 += f47;
                    i23 = i24;
                  }
                float[] arrayOfFloat6 = this.columnWidth;
                arrayOfFloat6[i23] += f45 - f46;
              }
              if (f6 > 0.0F)
              {
                float f42 = paramFloat4 - f2;
                for (int i19 = 0; i19 < this.rows; i19++)
                  f42 -= this.rowHeight[i19];
                float f43 = 0.0F;
                int i20 = 0;
                for (int i21 = 0; i21 < this.rows; i21++)
                  if (this.expandHeight[i21] != 0.0F)
                  {
                    float f44 = f42 * this.expandHeight[i21] / f6;
                    float[] arrayOfFloat5 = this.rowHeight;
                    arrayOfFloat5[i21] = (f44 + arrayOfFloat5[i21]);
                    f43 += f44;
                    i20 = i21;
                  }
                float[] arrayOfFloat4 = this.rowHeight;
                arrayOfFloat4[i20] += f42 - f43;
              }
              int i2 = localArrayList.size();
              for (int i3 = 0; i3 < i2; i3++)
              {
                c localc3 = (c)localArrayList.get(i3);
                if ((!localc3.t.booleanValue()) && (localc3.u.intValue() != 1))
                {
                  float f40 = 0.0F;
                  int i14 = localc3.D;
                  int i15 = i14 + localc3.u.intValue();
                  while (i14 < i15)
                  {
                    f40 += arrayOfFloat1[i14] - this.columnWidth[i14];
                    i14++;
                  }
                  float f41 = (f40 - (localc3.H + localc3.J)) / localc3.u.intValue();
                  if (f41 > 0.0F)
                  {
                    int i16 = localc3.D;
                    int i17 = i16 + localc3.u.intValue();
                    for (int i18 = i16; i18 < i17; i18++)
                    {
                      float[] arrayOfFloat3 = this.columnWidth;
                      arrayOfFloat3[i18] = (f41 + arrayOfFloat3[i18]);
                    }
                  }
                }
              }
              int i4 = 0;
              float f39;
              for (float f12 = f1; i4 < this.columns; f12 = f39)
              {
                f39 = f12 + this.columnWidth[i4];
                i4++;
              }
              int i5 = 0;
              float f38;
              for (float f13 = f2; i5 < this.rows; f13 = f38)
              {
                f38 = f13 + this.rowHeight[i5];
                i5++;
              }
              float f14 = paramFloat1 + w(this.padLeft);
              float f15;
              if ((0x10 & this.align) != 0)
                f15 = f14 + (paramFloat3 - f12);
              while (true)
              {
                float f16 = paramFloat2 + w(this.padTop);
                float f17;
                if ((0x4 & this.align) != 0)
                  f17 = f16 + (paramFloat4 - f13);
                while (true)
                {
                  label1356: int i6 = localArrayList.size();
                  int i7 = 0;
                  float f18 = f17;
                  float f19 = f15;
                  c localc2;
                  float f32;
                  float f33;
                  label1695: label1721: float f29;
                  float f30;
                  if (i7 < i6)
                  {
                    localc2 = (c)localArrayList.get(i7);
                    if (localc2.t.booleanValue())
                      break label2323;
                    float f31 = 0.0F;
                    int i12 = localc2.D;
                    int i13 = i12 + localc2.u.intValue();
                    while (true)
                      if (i12 < i13)
                      {
                        f31 += this.columnWidth[i12];
                        i12++;
                        continue;
                        if ((0x8 & this.align) != 0)
                          break label2341;
                        f15 = f14 + (paramFloat3 - f12) / 2.0F;
                        break;
                        if ((0x2 & this.align) != 0)
                          break label2334;
                        f17 = f16 + (paramFloat4 - f13) / 2.0F;
                        break label1356;
                      }
                    f32 = f31 - (localc2.H + localc2.J);
                    f33 = f19 + localc2.H;
                    if (localc2.o.floatValue() > 0.0F)
                    {
                      localc2.A = (f32 * localc2.o.floatValue());
                      float f37 = w(localc2.e, localc2);
                      if (f37 > 0.0F)
                        localc2.A = Math.min(localc2.A, f37);
                    }
                    if (localc2.p.floatValue() > 0.0F)
                    {
                      localc2.B = (this.rowHeight[localc2.E] * localc2.p.floatValue() - localc2.G - localc2.I);
                      float f36 = h(localc2.f, localc2);
                      if (f36 > 0.0F)
                        localc2.B = Math.min(localc2.B, f36);
                    }
                    if ((0x8 & localc2.q.intValue()) != 0)
                    {
                      localc2.y = f33;
                      if ((0x2 & localc2.q.intValue()) == 0)
                        break label1816;
                      localc2.z = (f18 + localc2.G);
                      if (!localc2.C)
                        break label1903;
                      f29 = f18 + this.rowHeight[localc2.E];
                      f30 = f15;
                    }
                  }
                  while (true)
                  {
                    i7++;
                    f19 = f30;
                    f18 = f29;
                    break;
                    if ((0x10 & localc2.q.intValue()) != 0)
                    {
                      localc2.y = (f33 + f32 - localc2.A);
                      break label1695;
                    }
                    localc2.y = (f33 + (f32 - localc2.A) / 2.0F);
                    break label1695;
                    label1816: if ((0x4 & localc2.q.intValue()) != 0)
                    {
                      localc2.z = (f18 + this.rowHeight[localc2.E] - localc2.B - localc2.I);
                      break label1721;
                    }
                    localc2.z = (f18 + (this.rowHeight[localc2.E] - localc2.B + localc2.G - localc2.I) / 2.0F);
                    break label1721;
                    label1903: float f34 = f33 + (f32 + localc2.J);
                    float f35 = f18;
                    f30 = f34;
                    f29 = f35;
                    continue;
                    if (this.debug == b.a)
                      return;
                    locald.clearDebugRectangles(this);
                    if ((this.debug == b.c) || (this.debug == b.b))
                    {
                      locald.addDebugRectangle(this, b.c, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
                      b localb = b.c;
                      float f20 = f12 - f1;
                      float f21 = f13 - f2;
                      locald.addDebugRectangle(this, localb, f15, f17, f20, f21);
                    }
                    int i8 = localArrayList.size();
                    int i9 = 0;
                    float f22 = f17;
                    float f23 = f15;
                    label2035: c localc1;
                    float f27;
                    float f28;
                    float f24;
                    float f25;
                    if (i9 < i8)
                    {
                      localc1 = (c)localArrayList.get(i9);
                      if (localc1.t.booleanValue())
                        break label2312;
                      if ((this.debug == b.e) || (this.debug == b.b))
                        locald.addDebugRectangle(this, b.e, localc1.y, localc1.z, localc1.A, localc1.B);
                      float f26 = 0.0F;
                      int i10 = localc1.D;
                      int i11 = i10 + localc1.u.intValue();
                      while (i10 < i11)
                      {
                        f26 += this.columnWidth[i10];
                        i10++;
                      }
                      f27 = f26 - (localc1.H + localc1.J);
                      f28 = f23 + localc1.H;
                      if ((this.debug == b.d) || (this.debug == b.b))
                        locald.addDebugRectangle(this, b.d, f28, f22 + localc1.G, f27, this.rowHeight[localc1.E] - localc1.G - localc1.I);
                      if (!localc1.C)
                        break label2292;
                      f24 = f22 + this.rowHeight[localc1.E];
                      f25 = f15;
                    }
                    while (true)
                    {
                      i9++;
                      f22 = f24;
                      f23 = f25;
                      break label2035;
                      break;
                      label2292: f25 = f28 + (f27 + localc1.J);
                      f24 = f22;
                      continue;
                      label2312: f24 = f22;
                      f25 = f23;
                    }
                    label2323: f29 = f18;
                    f30 = f19;
                  }
                  label2334: f17 = f16;
                }
                label2341: f15 = f14;
              }
              f55 = f53;
            }
            f54 = f52;
          }
          f53 = f51;
        }
        label2369: f52 = f50;
      }
    }
  }

  public L left()
  {
    this.align = (0x8 | this.align);
    this.align = (0xFFFFFFEF & this.align);
    return this;
  }

  public L pad(float paramFloat)
  {
    this.padTop = new o(paramFloat);
    this.padLeft = new o(paramFloat);
    this.padBottom = new o(paramFloat);
    this.padRight = new o(paramFloat);
    this.sizeInvalid = true;
    return this;
  }

  public L pad(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.padTop = new o(paramFloat1);
    this.padLeft = new o(paramFloat2);
    this.padBottom = new o(paramFloat3);
    this.padRight = new o(paramFloat4);
    this.sizeInvalid = true;
    return this;
  }

  public L pad(e parame)
  {
    this.padTop = parame;
    this.padLeft = parame;
    this.padBottom = parame;
    this.padRight = parame;
    this.sizeInvalid = true;
    return this;
  }

  public L pad(e parame1, e parame2, e parame3, e parame4)
  {
    this.padTop = parame1;
    this.padLeft = parame2;
    this.padBottom = parame3;
    this.padRight = parame4;
    this.sizeInvalid = true;
    return this;
  }

  public L padBottom(float paramFloat)
  {
    this.padBottom = new o(paramFloat);
    this.sizeInvalid = true;
    return this;
  }

  public L padBottom(e parame)
  {
    this.padBottom = parame;
    this.sizeInvalid = true;
    return this;
  }

  public L padLeft(float paramFloat)
  {
    this.padLeft = new o(paramFloat);
    this.sizeInvalid = true;
    return this;
  }

  public L padLeft(e parame)
  {
    this.padLeft = parame;
    this.sizeInvalid = true;
    return this;
  }

  public L padRight(float paramFloat)
  {
    this.padRight = new o(paramFloat);
    this.sizeInvalid = true;
    return this;
  }

  public L padRight(e parame)
  {
    this.padRight = parame;
    this.sizeInvalid = true;
    return this;
  }

  public L padTop(float paramFloat)
  {
    this.padTop = new o(paramFloat);
    this.sizeInvalid = true;
    return this;
  }

  public L padTop(e parame)
  {
    this.padTop = parame;
    this.sizeInvalid = true;
    return this;
  }

  public void reset()
  {
    clear();
    this.padTop = null;
    this.padLeft = null;
    this.padBottom = null;
    this.padRight = null;
    this.align = 1;
    if (this.debug != b.a)
      this.toolkit.clearDebugRectangles(this);
    this.debug = b.a;
    this.cellDefaults.a(c.a(this));
    this.columnDefaults.clear();
    this.rowDefaults = null;
  }

  public L right()
  {
    this.align = (0x10 | this.align);
    this.align = (0xFFFFFFF7 & this.align);
    return this;
  }

  public c row()
  {
    if (this.cells.size() > 0)
      endRow();
    this.rowDefaults = new c(this);
    return this.rowDefaults;
  }

  public void setTable(T paramT)
  {
    this.table = paramT;
  }

  public void setToolkit(K paramK)
  {
    this.toolkit = paramK;
  }

  public L top()
  {
    this.align = (0x2 | this.align);
    this.align = (0xFFFFFFFB & this.align);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.a.a.a
 * JD-Core Version:    0.6.2
 */