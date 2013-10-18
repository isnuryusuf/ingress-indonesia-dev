.class public final Lcom/google/android/gms/internal/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/cf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/cf;Landroid/os/Parcel;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->a()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->g()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->b()S

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;S)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->c()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->d()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->e()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->h()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-wide v5, v7

    move v3, v4

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-ge v12, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const v13, 0xffff

    and-int/2addr v13, v12

    sparse-switch v13, :sswitch_data_0

    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->l(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->g(Landroid/os/Parcel;I)J

    move-result-wide v10

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->e(Landroid/os/Parcel;I)S

    move-result v4

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->j(Landroid/os/Parcel;I)D

    move-result-wide v5

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->j(Landroid/os/Parcel;I)D

    move-result-wide v7

    goto :goto_0

    :sswitch_6
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->i(Landroid/os/Parcel;I)F

    move-result v9

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-eq v12, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cf;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/cf;-><init>(ILjava/lang/String;ISDDFJ)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/cf;

    return-object v0
.end method
