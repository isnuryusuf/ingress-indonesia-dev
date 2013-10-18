.class public Lcom/badlogic/gdx/utils/BinaryHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isMaxHeap:Z

.field private nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/badlogic/gdx/utils/BinaryHeap$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BinaryHeap;-><init>(IZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .line 30
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    .line 31
    new-array v0, p1, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 32
    return-void
.end method

.method private down(I)V
    .locals 14
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-object v7, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 86
    iget v8, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    .line 88
    aget-object v9, v7, p1

    .line 89
    iget v10, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 92
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 93
    if-ge v5, v8, :cond_6

    .line 94
    add-int/lit8 v6, v5, 0x1

    .line 97
    aget-object v11, v7, v5

    .line 98
    iget v12, v11, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 103
    if-lt v6, v8, :cond_1

    .line 104
    const/4 v3, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    move-object v4, v3

    move v3, v0

    .line 112
    :goto_2
    cmpg-float v0, v12, v3

    if-gez v0, :cond_2

    move v0, v1

    :goto_3
    iget-boolean v13, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v13

    if-eqz v0, :cond_4

    .line 113
    cmpl-float v0, v12, v10

    if-eqz v0, :cond_6

    cmpl-float v0, v12, v10

    if-lez v0, :cond_3

    move v0, v1

    :goto_4
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v3

    if-nez v0, :cond_6

    .line 114
    aput-object v11, v7, p1

    .line 115
    iput p1, v11, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v5

    .line 116
    goto :goto_0

    .line 105
    :cond_0
    const v0, 0x7f7fffff

    goto :goto_1

    .line 107
    :cond_1
    aget-object v3, v7, v6

    .line 108
    iget v0, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    move-object v4, v3

    move v3, v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 112
    goto :goto_3

    :cond_3
    move v0, v2

    .line 113
    goto :goto_4

    .line 118
    :cond_4
    cmpl-float v0, v3, v10

    if-eqz v0, :cond_6

    cmpl-float v0, v3, v10

    if-lez v0, :cond_5

    move v0, v1

    :goto_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v3

    if-nez v0, :cond_6

    .line 119
    aput-object v4, v7, p1

    .line 120
    iput p1, v4, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v6

    .line 123
    goto :goto_0

    :cond_5
    move v0, v2

    .line 118
    goto :goto_5

    .line 125
    :cond_6
    aput-object v9, v7, p1

    .line 126
    iput p1, v9, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 127
    return-void
.end method

.method private up(I)V
    .locals 7
    .parameter

    .prologue
    .line 67
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 68
    aget-object v3, v2, p1

    .line 69
    iget v4, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 70
    :goto_0
    if-lez p1, :cond_1

    .line 71
    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v1, v0, 0x1

    .line 72
    aget-object v5, v2, v1

    .line 73
    iget v0, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    cmpg-float v0, v4, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-boolean v6, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v6

    if-eqz v0, :cond_1

    .line 74
    aput-object v5, v2, p1

    .line 75
    iput p1, v5, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    move p1, v1

    .line 79
    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    :cond_1
    aput-object v3, v2, p1

    .line 81
    iput p1, v3, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 82
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/utils/BinaryHeap$Node;)Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 36
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 37
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 38
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iput-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 42
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    iput v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    iget v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aput-object p1, v0, v1

    .line 44
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    .line 45
    return-object p1
.end method

.method public pop()Lcom/badlogic/gdx/utils/BinaryHeap$Node;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 50
    aget-object v1, v0, v4

    .line 51
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    aget-object v2, v0, v2

    aput-object v2, v0, v4

    .line 52
    iget v2, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    .line 54
    :cond_0
    return-object v1
.end method

.method public setValue(Lcom/badlogic/gdx/utils/BinaryHeap$Node;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 59
    iput p2, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->value:F

    .line 60
    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->isMaxHeap:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 61
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->up(I)V

    .line 64
    :goto_1
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    iget v0, p1, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->index:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap;->down(I)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    iget v0, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 140
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->nodes:[Lcom/badlogic/gdx/utils/BinaryHeap$Node;

    .line 132
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 133
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 134
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 135
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/BinaryHeap;->size:I

    if-ge v0, v3, :cond_1

    .line 136
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 137
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 140
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
