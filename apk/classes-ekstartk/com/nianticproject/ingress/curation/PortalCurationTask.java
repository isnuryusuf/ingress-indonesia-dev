package com.nianticproject.ingress.curation;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.d.u;

public class PortalCurationTask
  implements Parcelable
{
  public static final Parcelable.Creator<PortalCurationTask> CREATOR = new h();
  public static final String[] a = { "request_id", "portal_guid", "title", "desc", "latitude", "longitude", "photo_uri", "timestamp", "metadata_uploaded", "photo_uploaded", "account", "failed_metadata_upload_count", "failed_photo_upload_count", "upload_url", "takedown_reason" };
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final u f;
  private final Uri g;
  private final String h;
  private final long i;
  private final boolean j;
  private final boolean k;
  private final String l;
  private final int m;
  private final int n;
  private final String o;

  private PortalCurationTask(Parcel paramParcel)
  {
  }

  private PortalCurationTask(String paramString1, String paramString2, String paramString3, String paramString4, u paramu, Uri paramUri, long paramLong, String paramString5)
  {
    this(paramString1, paramString2, paramString3, paramString4, paramu, paramUri, null, paramLong, false, false, paramString5, 0, 0, null);
  }

  private PortalCurationTask(String paramString1, String paramString2, String paramString3, String paramString4, u paramu, Uri paramUri, String paramString5, long paramLong, boolean paramBoolean1, boolean paramBoolean2, String paramString6, int paramInt1, int paramInt2, String paramString7)
  {
    this.b = ((String)an.a(paramString1));
    this.c = paramString2;
    this.d = paramString3;
    this.e = paramString4;
    this.f = paramu;
    this.g = paramUri;
    this.i = paramLong;
    this.j = paramBoolean1;
    this.k = paramBoolean2;
    this.l = ((String)an.a(paramString6));
    this.m = paramInt1;
    this.n = paramInt2;
    this.o = paramString7;
    this.h = paramString5;
  }

  public static PortalCurationTask a(Cursor paramCursor)
  {
    String str1 = paramCursor.getString(0);
    String str2 = paramCursor.getString(1);
    String str3 = paramCursor.getString(2);
    String str4 = paramCursor.getString(3);
    u localu;
    Uri localUri;
    label70: String str5;
    long l1;
    boolean bool1;
    if ((paramCursor.isNull(4)) || (paramCursor.isNull(5)))
    {
      localu = null;
      if (!paramCursor.isNull(6))
        break label199;
      localUri = null;
      str5 = paramCursor.getString(14);
      l1 = paramCursor.getLong(7);
      if (paramCursor.getInt(8) != 1)
        break label215;
      bool1 = true;
      label105: if (paramCursor.getInt(9) != 1)
        break label221;
    }
    label199: label215: label221: for (boolean bool2 = true; ; bool2 = false)
    {
      return new PortalCurationTask(str1, str2, str3, str4, localu, localUri, str5, l1, bool1, bool2, paramCursor.getString(10), paramCursor.getInt(11), paramCursor.getInt(12), paramCursor.getString(13));
      localu = u.b(paramCursor.getDouble(4), paramCursor.getDouble(5));
      break;
      localUri = Uri.parse(paramCursor.getString(6));
      break label70;
      bool1 = false;
      break label105;
    }
  }

  public static PortalCurationTask a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return new PortalCurationTask(paramString1, paramString2, null, null, null, null, paramString3, System.currentTimeMillis(), false, false, paramString4, 0, 0, null);
  }

  public static PortalCurationTask a(String paramString1, String paramString2, String paramString3, String paramString4, u paramu, Uri paramUri, String paramString5)
  {
    return new PortalCurationTask(paramString1, paramString2, paramString3, paramString4, paramu, paramUri, System.currentTimeMillis(), paramString5);
  }

  private PortalCurationTask a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, String paramString)
  {
    if ((this.j == paramBoolean1) && (this.k == paramBoolean2) && (this.m == paramInt1) && (this.n == paramInt2) && (this.o == paramString))
      return this;
    return new PortalCurationTask(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, paramBoolean1, paramBoolean2, this.l, paramInt1, paramInt2, paramString);
  }

  public final ContentValues a()
  {
    int i1 = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("request_id", this.b);
    if (this.c != null)
      localContentValues.put("portal_guid", this.c);
    if (this.d != null)
      localContentValues.put("title", this.d);
    if (this.e != null)
      localContentValues.put("desc", this.e);
    if (this.f != null)
    {
      localContentValues.put("latitude", Double.valueOf(this.f.c()));
      localContentValues.put("longitude", Double.valueOf(this.f.f()));
    }
    if (this.h != null)
      localContentValues.put("takedown_reason", this.h);
    if (this.g != null)
      localContentValues.put("photo_uri", this.g.toString());
    localContentValues.put("timestamp", Long.valueOf(this.i));
    int i2;
    if (this.j)
    {
      i2 = i1;
      localContentValues.put("metadata_uploaded", Integer.valueOf(i2));
      if (!this.k)
        break label256;
    }
    while (true)
    {
      localContentValues.put("photo_uploaded", Integer.valueOf(i1));
      localContentValues.put("account", this.l);
      localContentValues.put("failed_metadata_upload_count", Integer.valueOf(this.m));
      localContentValues.put("failed_photo_upload_count", Integer.valueOf(this.n));
      if (this.o != null)
        localContentValues.put("upload_url", this.o);
      return localContentValues;
      i2 = 0;
      break;
      label256: i1 = 0;
    }
  }

  public final PortalCurationTask a(Uri paramUri)
  {
    if (paramUri.equals(this.g))
      return this;
    return new PortalCurationTask(this.b, this.c, this.d, this.e, this.f, paramUri, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
  }

  public final PortalCurationTask a(String paramString)
  {
    return a(this.j, this.k, this.m, this.n, paramString);
  }

  public final String b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public final String d()
  {
    return this.d;
  }

  public int describeContents()
  {
    return 0;
  }

  public final String e()
  {
    return this.e;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PortalCurationTask localPortalCurationTask;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localPortalCurationTask = (PortalCurationTask)paramObject;
      if (!ag.a(this.l, localPortalCurationTask.l))
        return false;
      if (!ag.a(this.e, localPortalCurationTask.e))
        return false;
      if (this.m != localPortalCurationTask.m)
        return false;
      if (this.n != localPortalCurationTask.n)
        return false;
      if (!ag.a(this.c, localPortalCurationTask.c))
        return false;
      if (!ag.a(this.f, localPortalCurationTask.f))
        return false;
      if (!ag.a(this.h, localPortalCurationTask.h))
        return false;
      if (this.j != localPortalCurationTask.j)
        return false;
      if (this.k != localPortalCurationTask.k)
        return false;
      if (!ag.a(this.g, localPortalCurationTask.g))
        return false;
      if (!ag.a(this.b, localPortalCurationTask.b))
        return false;
      if (this.i != localPortalCurationTask.i)
        return false;
      if (!ag.a(this.d, localPortalCurationTask.d))
        return false;
    }
    while (ag.a(this.o, localPortalCurationTask.o));
    return false;
  }

  public final u f()
  {
    return this.f;
  }

  public final Uri g()
  {
    return this.g;
  }

  public final String h()
  {
    return this.h;
  }

  public int hashCode()
  {
    int i1 = 1231;
    int i2;
    int i4;
    label31: int i6;
    label66: int i8;
    label86: int i10;
    label106: int i12;
    label126: int i15;
    label143: label162: int i17;
    label182: int i19;
    label219: int i20;
    int i21;
    if (this.l == null)
    {
      i2 = 0;
      int i3 = 31 * (i2 + 31);
      if (this.e != null)
        break label260;
      i4 = 0;
      int i5 = 31 * (31 * (31 * (i4 + i3) + this.m) + this.n);
      if (this.c != null)
        break label272;
      i6 = 0;
      int i7 = 31 * (i6 + i5);
      if (this.f != null)
        break label284;
      i8 = 0;
      int i9 = 31 * (i8 + i7);
      if (this.h != null)
        break label296;
      i10 = 0;
      int i11 = 31 * (i10 + i9);
      if (!this.j)
        break label308;
      i12 = i1;
      int i13 = 31 * (i12 + i11);
      if (!this.k)
        break label316;
      int i14 = 31 * (i13 + i1);
      if (this.g != null)
        break label323;
      i15 = 0;
      int i16 = 31 * (i15 + i14);
      if (this.b != null)
        break label335;
      i17 = 0;
      int i18 = 31 * (31 * (i17 + i16) + (int)(this.i ^ this.i >>> 32));
      if (this.d != null)
        break label347;
      i19 = 0;
      i20 = 31 * (i19 + i18);
      String str = this.o;
      i21 = 0;
      if (str != null)
        break label359;
    }
    while (true)
    {
      return i20 + i21;
      i2 = this.l.hashCode();
      break;
      label260: i4 = this.e.hashCode();
      break label31;
      label272: i6 = this.c.hashCode();
      break label66;
      label284: i8 = this.f.hashCode();
      break label86;
      label296: i10 = this.h.hashCode();
      break label106;
      label308: i12 = 1237;
      break label126;
      label316: i1 = 1237;
      break label143;
      label323: i15 = this.g.hashCode();
      break label162;
      label335: i17 = this.b.hashCode();
      break label182;
      label347: i19 = this.d.hashCode();
      break label219;
      label359: i21 = this.o.hashCode();
    }
  }

  public final boolean i()
  {
    return this.j;
  }

  public final boolean j()
  {
    return this.k;
  }

  public final int k()
  {
    return this.m;
  }

  public final int l()
  {
    return this.n;
  }

  public final String m()
  {
    return this.o;
  }

  public final PortalCurationTask n()
  {
    return a(true, this.k, this.m, this.n, this.o);
  }

  public final PortalCurationTask o()
  {
    return a(this.j, true, this.m, this.n, this.o);
  }

  public final PortalCurationTask p()
  {
    return a(this.j, this.k, 1 + this.m, this.n, this.o);
  }

  public final PortalCurationTask q()
  {
    return a(this.j, this.k, this.m, 1 + this.n, this.o);
  }

  public final boolean r()
  {
    return (!TextUtils.isEmpty(this.d)) || (!TextUtils.isEmpty(this.e)) || (this.f != null) || (!TextUtils.isEmpty(this.h));
  }

  public final boolean s()
  {
    return ((r()) && (!this.j)) || ((this.g != null) && (!this.k));
  }

  public final String t()
  {
    if (r())
      return null;
    return this.c;
  }

  public String toString()
  {
    return "PortalCurationTask [requestId=" + this.b + ", guid=" + this.c + ", title=" + this.d + ", desc=" + this.e + ", latLng=" + this.f + ", takedownReason=" + this.h + ", photoUri=" + this.g + ", timestamp=" + this.i + ", metadataUploaded=" + this.j + ", photoUploaded=" + this.k + ", account=" + this.l + ", failedMetadataUploadAttemptCount=" + this.m + ", failedPhotoUploadAttemptCount=" + this.n + ", uploadUrl=" + this.o + "]";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = 1;
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    u localu = this.f;
    label93: int i2;
    if (localu != null)
    {
      paramParcel.writeInt(i1);
      paramParcel.writeDouble(localu.c());
      paramParcel.writeDouble(localu.f());
      Uri localUri = this.g;
      if (localUri == null)
        break label178;
      paramParcel.writeInt(i1);
      paramParcel.writeString(localUri.toString());
      paramParcel.writeString(this.h);
      paramParcel.writeLong(this.i);
      if (!this.j)
        break label186;
      i2 = i1;
      label119: paramParcel.writeInt(i2);
      if (!this.k)
        break label192;
    }
    while (true)
    {
      paramParcel.writeInt(i1);
      paramParcel.writeString(this.l);
      paramParcel.writeInt(this.m);
      paramParcel.writeInt(this.n);
      paramParcel.writeString(this.o);
      return;
      paramParcel.writeInt(0);
      break;
      label178: paramParcel.writeInt(0);
      break label93;
      label186: i2 = 0;
      break label119;
      label192: i1 = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.curation.PortalCurationTask
 * JD-Core Version:    0.6.2
 */