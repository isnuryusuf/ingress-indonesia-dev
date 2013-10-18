.class public Lcom/badlogic/gdx/utils/SnapshotArray;
.super Lcom/badlogic/gdx/utils/Array;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Array",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private recycled:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private snapshot:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private snapshots:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private modified()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lt v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->resize(I)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public begin()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 138
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 139
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 84
    iget v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshots:I

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 90
    iget-object v2, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->recycled:[Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_1
    iput-object v3, p0, Lcom/badlogic/gdx/utils/SnapshotArray;->snapshot:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 133
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 128
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 123
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public reverse()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 153
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    .line 154
    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 108
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public shuffle()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 158
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    .line 159
    return-void
.end method

.method public sort()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 143
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    .line 144
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 148
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 149
    return-void
.end method

.method public swap(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 118
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    .line 119
    return-void
.end method

.method public truncate(I)V
    .locals 0
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/SnapshotArray;->modified()V

    .line 163
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 164
    return-void
.end method
