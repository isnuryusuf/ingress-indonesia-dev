.class public final Lcom/google/android/gms/internal/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/k;
    .locals 6

    new-instance v1, Lcom/google/android/gms/internal/k;

    invoke-direct {v1}, Lcom/google/android/gms/internal/k;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v3, 0xffff

    and-int/2addr v3, v0

    sparse-switch v3, :sswitch_data_0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/b;->q(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/k;->c:[Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/k;->b:I

    goto :goto_0

    :sswitch_2
    sget-object v3, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    check-cast v0, [Landroid/database/CursorWindow;

    iput-object v0, v1, Lcom/google/android/gms/internal/k;->e:[Landroid/database/CursorWindow;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    add-int v3, v5, v4

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    :sswitch_3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/k;->f:I

    goto :goto_0

    :sswitch_4
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/b;->n(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/k;->g:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v2, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Overread allowed size end="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/k;->a()V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Lcom/google/android/gms/internal/k;Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->c:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;[Ljava/lang/String;)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/internal/k;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->e:[Landroid/database/CursorWindow;

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;[Landroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/k;->f:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->g:Landroid/os/Bundle;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;Landroid/os/Bundle;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/fi;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/k;

    return-object v0
.end method
