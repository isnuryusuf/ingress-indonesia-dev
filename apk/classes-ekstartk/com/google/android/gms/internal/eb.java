package com.google.android.gms.internal;

import android.os.Parcel;
import java.util.ArrayList;

public class eb
  implements ae
{
  public static final er a = new er();
  private final int b;
  private final String c;
  private final ArrayList<ag> d;
  private final ArrayList<ag> e;
  private final boolean f;

  public eb(int paramInt, String paramString, ArrayList<ag> paramArrayList1, ArrayList<ag> paramArrayList2, boolean paramBoolean)
  {
    this.b = paramInt;
    this.c = paramString;
    this.d = paramArrayList1;
    this.e = paramArrayList2;
    this.f = paramBoolean;
  }

  public final int a()
  {
    return this.b;
  }

  public final String b()
  {
    return this.c;
  }

  public final ArrayList<ag> c()
  {
    return this.d;
  }

  public final ArrayList<ag> d()
  {
    return this.e;
  }

  public int describeContents()
  {
    return 0;
  }

  public final boolean e()
  {
    return this.f;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    er.a(this, paramParcel);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eb
 * JD-Core Version:    0.6.2
 */