.class public Lcom/badlogic/gdx/utils/IntArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public items:[I

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 54
    iget v0, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 46
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 47
    return-void
.end method

.method public constructor <init>(Z[I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 71
    array-length v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(Z[I)V

    .line 63
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 77
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 78
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    .line 79
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;II)V

    .line 83
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-le v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "offset + length must be <= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 89
    return-void
.end method

.method public addAll([I)V
    .locals 2
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->addAll([III)V

    .line 93
    return-void
.end method

.method public addAll([III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 97
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p2

    .line 98
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 99
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 196
    return-void
.end method

.method public contains(I)Z
    .locals 3
    .parameter

    .prologue
    .line 134
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 135
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 136
    :goto_0
    if-ltz v0, :cond_0

    .line 137
    add-int/lit8 v1, v0, -0x1

    aget v0, v2, v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    .line 138
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public ensureCapacity(I)[I
    .locals 2
    .parameter

    .prologue
    .line 208
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/2addr v0, p1

    .line 209
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-object v0
.end method

.method public first()I
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public get(I)I
    .locals 2
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .locals 4
    .parameter

    .prologue
    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 143
    const/4 v0, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    :goto_0
    if-ge v0, v2, :cond_1

    .line 144
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    .line 145
    :goto_1
    return v0

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public insert(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 115
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 116
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v1, :cond_1

    .line 117
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 121
    aput p2, v0, p1

    .line 122
    return-void

    .line 119
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v0, p1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public lastIndexOf(I)I
    .locals 3
    .parameter

    .prologue
    .line 149
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 151
    aget v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 152
    :goto_1
    return v0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public peek()I
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public random()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget v0, v1, v0

    goto :goto_0
.end method

.method public removeIndex(I)I
    .locals 4
    .parameter

    .prologue
    .line 168
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 170
    aget v1, v0, p1

    .line 171
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 172
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v2, :cond_1

    .line 173
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :goto_0
    return v1

    .line 175
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v0, v2

    aput v2, v0, p1

    goto :goto_0
.end method

.method public removeValue(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 157
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 158
    aget v4, v2, v1

    if-ne v4, p1, :cond_1

    .line 159
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    .line 160
    const/4 v0, 0x1

    .line 163
    :cond_0
    return v0

    .line 157
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected resize(I)[I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 214
    new-array v0, p1, [I

    .line 215
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 216
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 218
    return-object v0
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 226
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 227
    sub-int v3, v1, v0

    .line 228
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v4, v4, v0

    .line 229
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v6, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v6, v6, v3

    aput v6, v5, v0

    .line 230
    iget-object v5, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput v4, v5, v3

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput p2, v0, p1

    .line 111
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    .line 202
    return-void
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 235
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 236
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 237
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v2, v0

    .line 238
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v4, v4, v1

    aput v4, v3, v0

    .line 239
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput v2, v3, v1

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 223
    return-void
.end method

.method public swap(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt p2, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 128
    aget v1, v0, p1

    .line 129
    aget v2, v0, p2

    aput v2, v0, p1

    .line 130
    aput v1, v0, p2

    .line 131
    return-void
.end method

.method public toArray()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    new-array v0, v0, [I

    .line 257
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 272
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 264
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 265
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 266
    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 267
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v3, :cond_1

    .line 268
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 269
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 272
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 284
    :goto_0
    return-object v0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 278
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 279
    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 280
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v3, :cond_1

    .line 281
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 282
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 1
    .parameter

    .prologue
    .line 246
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 247
    :cond_0
    return-void
.end method
