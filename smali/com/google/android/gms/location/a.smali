.class public final Lcom/google/android/gms/location/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/ActivityRecognitionResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/location/ActivityRecognitionResult;Landroid/os/Parcel;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/ActivityRecognitionResult;->e:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/d;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-direct {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    sget-object v3, Lcom/google/android/gms/location/DetectedActivity;->a:Lcom/google/android/gms/location/b;

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/b;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->c:Ljava/util/List;

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/b;->f(Landroid/os/Parcel;I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->b:I

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/b;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->d:J

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/b;->g(Landroid/os/Parcel;I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/location/ActivityRecognitionResult;->e:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eq v2, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Overread allowed size end="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method
