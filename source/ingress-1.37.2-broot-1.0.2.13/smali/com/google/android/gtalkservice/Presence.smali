.class public final Lcom/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/Presence;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/google/android/gtalkservice/Presence;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/gtalkservice/e;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->a:Lcom/google/android/gtalkservice/Presence;

    .line 504
    new-instance v0, Lcom/google/android/gtalkservice/d;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/d;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/gtalkservice/e;->a:Lcom/google/android/gtalkservice/e;

    invoke-direct {p0, v0}, Lcom/google/android/gtalkservice/Presence;-><init>(Lcom/google/android/gtalkservice/e;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->h:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->i:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->j:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->k:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    .line 95
    const-class v0, Lcom/google/android/gtalkservice/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/e;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/e;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->d:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->k:Z

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 106
    return-void

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    :cond_2
    move v0, v2

    .line 94
    goto :goto_1

    :cond_3
    move v1, v2

    .line 99
    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gtalkservice/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    .line 76
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/e;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->d:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    .line 81
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    if-nez v0, :cond_0

    .line 518
    const-string/jumbo v0, "UNAVAILABLE"

    .line 533
    :goto_0
    return-object v0

    .line 521
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    if-eqz v0, :cond_1

    .line 522
    const-string/jumbo v0, "INVISIBLE"

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/e;

    sget-object v1, Lcom/google/android/gtalkservice/e;->a:Lcom/google/android/gtalkservice/e;

    if-ne v0, v1, :cond_2

    .line 528
    const-string/jumbo v0, "AVAILABLE(x)"

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/e;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/e;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->k:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->c:Lcom/google/android/gtalkservice/e;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->e:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 498
    return-void

    :cond_0
    move v0, v2

    .line 489
    goto :goto_0

    :cond_1
    move v0, v2

    .line 491
    goto :goto_1

    :cond_2
    move v1, v2

    .line 494
    goto :goto_2
.end method
