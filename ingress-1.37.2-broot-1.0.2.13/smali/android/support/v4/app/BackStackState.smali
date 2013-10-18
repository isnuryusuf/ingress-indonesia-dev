.class final Landroid/support/v4/app/BackStackState;
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
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/a;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    move-object v1, v0

    move v0, v3

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    iget-object v2, v1, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 44
    :cond_0
    iget-object v1, v1, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/b;

    goto :goto_0

    .line 46
    :cond_1
    iget v1, p1, Landroid/support/v4/app/a;->d:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 48
    iget-boolean v0, p1, Landroid/support/v4/app/a;->k:Z

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    move-object v5, v0

    move v0, v3

    .line 54
    :goto_1
    if-eqz v5, :cond_6

    .line 55
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v0, 0x1

    iget v4, v5, Landroid/support/v4/app/b;->c:I

    aput v4, v1, v0

    .line 56
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v2, 0x1

    iget-object v0, v5, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->o:I

    :goto_2
    aput v0, v1, v2

    .line 57
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v4, 0x1

    iget v2, v5, Landroid/support/v4/app/b;->e:I

    aput v2, v0, v4

    .line 58
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/b;->f:I

    aput v4, v0, v1

    .line 59
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget v4, v5, Landroid/support/v4/app/b;->g:I

    aput v4, v0, v2

    .line 60
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/b;->h:I

    aput v4, v0, v1

    .line 61
    iget-object v0, v5, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, v5, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 63
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    aput v6, v0, v2

    move v2, v3

    .line 64
    :goto_3
    if-ge v2, v6, :cond_4

    .line 65
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v0, v5, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->o:I

    aput v0, v7, v1

    .line 64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_3

    .line 56
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 70
    :goto_4
    iget-object v1, v5, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/b;

    move-object v5, v1

    goto :goto_1

    .line 68
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v0, v2, 0x1

    aput v3, v1, v2

    goto :goto_4

    .line 72
    :cond_6
    iget v0, p1, Landroid/support/v4/app/a;->i:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 73
    iget v0, p1, Landroid/support/v4/app/a;->j:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 74
    iget-object v0, p1, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 75
    iget v0, p1, Landroid/support/v4/app/a;->o:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 76
    iget v0, p1, Landroid/support/v4/app/a;->p:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 77
    iget-object v0, p1, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 78
    iget v0, p1, Landroid/support/v4/app/a;->r:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 79
    iget-object v0, p1, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/k;)Landroid/support/v4/app/a;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 95
    new-instance v4, Landroid/support/v4/app/a;

    invoke-direct {v4, p1}, Landroid/support/v4/app/a;-><init>(Landroid/support/v4/app/k;)V

    move v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 98
    new-instance v5, Landroid/support/v4/app/b;

    invoke-direct {v5}, Landroid/support/v4/app/b;-><init>()V

    .line 99
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iput v0, v5, Landroid/support/v4/app/b;->c:I

    .line 100
    sget-boolean v0, Landroid/support/v4/app/k;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BSE "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " set base fragment #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    .line 103
    if-ltz v0, :cond_2

    .line 104
    iget-object v3, p1, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 105
    iput-object v0, v5, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 109
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/b;->e:I

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    iput v0, v5, Landroid/support/v4/app/b;->f:I

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/b;->g:I

    .line 112
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    iput v0, v5, Landroid/support/v4/app/b;->h:I

    .line 113
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v0, v2, 0x1

    aget v6, v3, v2

    .line 114
    if-lez v6, :cond_3

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v5, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    move v2, v1

    .line 116
    :goto_2
    if-ge v2, v6, :cond_3

    .line 117
    sget-boolean v3, Landroid/support/v4/app/k;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BSE "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " set remove fragment #"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I

    aget v7, v7, v0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    :cond_1
    iget-object v7, p1, Landroid/support/v4/app/k;->f:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v8, v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 120
    iget-object v7, v5, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    .line 107
    :cond_2
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v4, v5}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/b;)V

    goto/16 :goto_0

    .line 125
    :cond_4
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    iput v0, v4, Landroid/support/v4/app/a;->i:I

    .line 126
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput v0, v4, Landroid/support/v4/app/a;->j:I

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iput-object v0, v4, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    .line 128
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    iput v0, v4, Landroid/support/v4/app/a;->o:I

    .line 129
    iput-boolean v9, v4, Landroid/support/v4/app/a;->k:Z

    .line 130
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput v0, v4, Landroid/support/v4/app/a;->p:I

    .line 131
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    .line 132
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    iput v0, v4, Landroid/support/v4/app/a;->r:I

    .line 133
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v4, v9}, Landroid/support/v4/app/a;->a(I)V

    .line 135
    return-object v4
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 152
    return-void
.end method
