package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gf;
import java.util.Arrays;

public final class GameEntity
  implements Game
{
  public static final Parcelable.Creator<GameEntity> CREATOR = new a();
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final Uri g;
  private final Uri h;
  private final Uri i;
  private final boolean j;
  private final boolean k;
  private final String l;
  private final int m;
  private final int n;
  private final int o;

  public GameEntity(Game paramGame)
  {
    this.a = paramGame.b();
    this.c = paramGame.d();
    this.d = paramGame.e();
    this.e = paramGame.f();
    this.f = paramGame.g();
    this.b = paramGame.c();
    this.g = paramGame.h();
    this.h = paramGame.i();
    this.i = paramGame.j();
    this.j = paramGame.k();
    this.k = paramGame.l();
    this.l = paramGame.m();
    this.m = paramGame.n();
    this.n = paramGame.o();
    this.o = paramGame.p();
  }

  private GameEntity(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Uri paramUri1, Uri paramUri2, Uri paramUri3, boolean paramBoolean1, boolean paramBoolean2, String paramString7, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramUri1;
    this.h = paramUri2;
    this.i = paramUri3;
    this.j = paramBoolean1;
    this.k = paramBoolean2;
    this.l = paramString7;
    this.m = paramInt1;
    this.n = paramInt2;
    this.o = paramInt3;
  }

  public static int a(Game paramGame)
  {
    Object[] arrayOfObject = new Object[15];
    arrayOfObject[0] = paramGame.b();
    arrayOfObject[1] = paramGame.c();
    arrayOfObject[2] = paramGame.d();
    arrayOfObject[3] = paramGame.e();
    arrayOfObject[4] = paramGame.f();
    arrayOfObject[5] = paramGame.g();
    arrayOfObject[6] = paramGame.h();
    arrayOfObject[7] = paramGame.i();
    arrayOfObject[8] = paramGame.j();
    arrayOfObject[9] = Boolean.valueOf(paramGame.k());
    arrayOfObject[10] = Boolean.valueOf(paramGame.l());
    arrayOfObject[11] = paramGame.m();
    arrayOfObject[12] = Integer.valueOf(paramGame.n());
    arrayOfObject[13] = Integer.valueOf(paramGame.o());
    arrayOfObject[14] = Integer.valueOf(paramGame.p());
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Game paramGame, Object paramObject)
  {
    if (!(paramObject instanceof Game));
    Game localGame;
    do
    {
      return false;
      if (paramGame == paramObject)
        return true;
      localGame = (Game)paramObject;
    }
    while ((!ge.a(localGame.b(), paramGame.b())) || (!ge.a(localGame.c(), paramGame.c())) || (!ge.a(localGame.d(), paramGame.d())) || (!ge.a(localGame.e(), paramGame.e())) || (!ge.a(localGame.f(), paramGame.f())) || (!ge.a(localGame.g(), paramGame.g())) || (!ge.a(localGame.h(), paramGame.h())) || (!ge.a(localGame.i(), paramGame.i())) || (!ge.a(localGame.j(), paramGame.j())) || (!ge.a(Boolean.valueOf(localGame.k()), Boolean.valueOf(paramGame.k()))) || (!ge.a(Boolean.valueOf(localGame.l()), Boolean.valueOf(paramGame.l()))) || (!ge.a(localGame.m(), paramGame.m())) || (!ge.a(Integer.valueOf(localGame.n()), Integer.valueOf(paramGame.n()))) || (!ge.a(Integer.valueOf(localGame.o()), Integer.valueOf(paramGame.o()))) || (!ge.a(Integer.valueOf(localGame.p()), Integer.valueOf(paramGame.p()))));
    return true;
  }

  public static String b(Game paramGame)
  {
    return ge.a(paramGame).a("ApplicationId", paramGame.b()).a("DisplayName", paramGame.c()).a("PrimaryCategory", paramGame.d()).a("SecondaryCategory", paramGame.e()).a("Description", paramGame.f()).a("DeveloperName", paramGame.g()).a("IconImageUri", paramGame.h()).a("HiResImageUri", paramGame.i()).a("FeaturedImageUri", paramGame.j()).a("PlayEnabledGame", Boolean.valueOf(paramGame.k())).a("InstanceInstalled", Boolean.valueOf(paramGame.l())).a("InstancePackageName", paramGame.m()).a("GameplayAclStatus", Integer.valueOf(paramGame.n())).a("AchievementTotalCount", Integer.valueOf(paramGame.o())).a("LeaderboardCount", Integer.valueOf(paramGame.p())).toString();
  }

  public final String b()
  {
    return this.a;
  }

  public final String c()
  {
    return this.b;
  }

  public final String d()
  {
    return this.c;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String e()
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

  public final String g()
  {
    return this.f;
  }

  public final Uri h()
  {
    return this.g;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final Uri i()
  {
    return this.h;
  }

  public final Uri j()
  {
    return this.i;
  }

  public final boolean k()
  {
    return this.j;
  }

  public final boolean l()
  {
    return this.k;
  }

  public final String m()
  {
    return this.l;
  }

  public final int n()
  {
    return this.m;
  }

  public final int o()
  {
    return this.n;
  }

  public final int p()
  {
    return this.o;
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = 1;
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    String str1;
    String str2;
    label76: String str3;
    label96: int i2;
    if (this.g == null)
    {
      str1 = null;
      paramParcel.writeString(str1);
      if (this.h != null)
        break label175;
      str2 = null;
      paramParcel.writeString(str2);
      Uri localUri = this.i;
      str3 = null;
      if (localUri != null)
        break label187;
      paramParcel.writeString(str3);
      if (!this.j)
        break label199;
      i2 = i1;
      label112: paramParcel.writeInt(i2);
      if (!this.k)
        break label205;
    }
    while (true)
    {
      paramParcel.writeInt(i1);
      paramParcel.writeString(this.l);
      paramParcel.writeInt(this.m);
      paramParcel.writeInt(this.n);
      paramParcel.writeInt(this.o);
      return;
      str1 = this.g.toString();
      break;
      label175: str2 = this.h.toString();
      break label76;
      label187: str3 = this.i.toString();
      break label96;
      label199: i2 = 0;
      break label112;
      label205: i1 = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.GameEntity
 * JD-Core Version:    0.6.2
 */