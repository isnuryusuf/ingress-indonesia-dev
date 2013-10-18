package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;
import java.util.ArrayList;
import java.util.Arrays;

public final class RoomEntity
  implements Room
{
  public static final Parcelable.Creator<RoomEntity> CREATOR = new b();
  private final String a;
  private final String b;
  private final long c;
  private final int d;
  private final String e;
  private final int f;
  private final Bundle g;
  private final ArrayList<Participant> h;

  public RoomEntity(Room paramRoom)
  {
    this.a = paramRoom.b();
    this.b = paramRoom.c();
    this.c = paramRoom.d();
    this.d = paramRoom.e();
    this.e = paramRoom.f();
    this.f = paramRoom.h();
    this.g = paramRoom.i();
    ArrayList localArrayList = paramRoom.g();
    int i = localArrayList.size();
    this.h = new ArrayList(i);
    for (int j = 0; j < i; j++)
      this.h.add(((Participant)localArrayList.get(j)).a());
  }

  private RoomEntity(String paramString1, String paramString2, long paramLong, int paramInt1, String paramString3, int paramInt2, Bundle paramBundle, ArrayList<Participant> paramArrayList)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramLong;
    this.d = paramInt1;
    this.e = paramString3;
    this.f = paramInt2;
    this.g = paramBundle;
    this.h = paramArrayList;
  }

  public static int a(Room paramRoom)
  {
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = paramRoom.b();
    arrayOfObject[1] = paramRoom.c();
    arrayOfObject[2] = Long.valueOf(paramRoom.d());
    arrayOfObject[3] = Integer.valueOf(paramRoom.e());
    arrayOfObject[4] = paramRoom.f();
    arrayOfObject[5] = Integer.valueOf(paramRoom.h());
    arrayOfObject[6] = paramRoom.i();
    arrayOfObject[7] = paramRoom.g();
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Room paramRoom, Object paramObject)
  {
    if (!(paramObject instanceof Room));
    Room localRoom;
    do
    {
      return false;
      if (paramRoom == paramObject)
        return true;
      localRoom = (Room)paramObject;
    }
    while ((!ge.a(localRoom.b(), paramRoom.b())) || (!ge.a(localRoom.c(), paramRoom.c())) || (!ge.a(Long.valueOf(localRoom.d()), Long.valueOf(paramRoom.d()))) || (!ge.a(Integer.valueOf(localRoom.e()), Integer.valueOf(paramRoom.e()))) || (!ge.a(localRoom.f(), paramRoom.f())) || (!ge.a(Integer.valueOf(localRoom.h()), Integer.valueOf(paramRoom.h()))) || (!ge.a(localRoom.i(), paramRoom.i())) || (!ge.a(localRoom.g(), paramRoom.g())));
    return true;
  }

  public static String b(Room paramRoom)
  {
    return ge.a(paramRoom).a("RoomId", paramRoom.b()).a("CreatorId", paramRoom.c()).a("CreationTimestamp", Long.valueOf(paramRoom.d())).a("RoomStatus", Integer.valueOf(paramRoom.e())).a("Description", paramRoom.f()).a("Variant", Integer.valueOf(paramRoom.h())).a("AutoMatchCriteria", paramRoom.i()).a("Participants", paramRoom.g()).toString();
  }

  public final String b()
  {
    return this.a;
  }

  public final String c()
  {
    return this.b;
  }

  public final long d()
  {
    return this.c;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int e()
  {
    return this.d;
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final String f()
  {
    return this.e;
  }

  public final ArrayList<Participant> g()
  {
    return this.h;
  }

  public final int h()
  {
    return this.f;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final Bundle i()
  {
    return this.g;
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeLong(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeInt(this.f);
    paramParcel.writeBundle(this.g);
    int i = this.h.size();
    paramParcel.writeInt(i);
    for (int j = 0; j < i; j++)
      ((Participant)this.h.get(j)).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RoomEntity
 * JD-Core Version:    0.6.2
 */