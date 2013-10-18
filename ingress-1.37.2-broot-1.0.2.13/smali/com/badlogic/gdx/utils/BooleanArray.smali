.class public Lcom/badlogic/gdx/utils/BooleanArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public items:[Z

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 58
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    .line 48
    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 49
    return-void
.end method

.method public constructor <init>(Z[Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 72
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    .line 73
    array-length v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(Z[Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public add(Z)V
    .locals 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 79
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 80
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aput-boolean p1, v0, v1

    .line 81
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V

    .line 85
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/BooleanArray;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, v1, :cond_0

    .line 89
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

    iget v2, p1, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 91
    return-void
.end method

.method public addAll([Z)V
    .locals 2
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/BooleanArray;->addAll([ZII)V

    .line 95
    return-void
.end method

.method public addAll([ZII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 99
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p2

    .line 100
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/16 v0, 0x8

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 101
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 103
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 165
    return-void
.end method

.method public ensureCapacity(I)[Z
    .locals 2
    .parameter

    .prologue
    .line 177
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/2addr v0, p1

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    return-object v0
.end method

.method public first()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public get(I)Z
    .locals 2
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public insert(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 117
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    move-result-object v0

    .line 118
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v1, :cond_1

    .line 119
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 123
    aput-boolean p2, v0, p1

    .line 124
    return-void

    .line 121
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v0, p1

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public peek()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public pop()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public random()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v1, :cond_0

    .line 217
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    aget-boolean v0, v1, v0

    goto :goto_0
.end method

.method public removeIndex(I)Z
    .locals 4
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 139
    aget-boolean v1, v0, p1

    .line 140
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 141
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->ordered:Z

    if-eqz v2, :cond_1

    .line 142
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    :goto_0
    return v1

    .line 144
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    aget-boolean v2, v0, v2

    aput-boolean v2, v0, p1

    goto :goto_0
.end method

.method protected resize(I)[Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 183
    new-array v0, p1, [Z

    .line 184
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 185
    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iput-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 187
    return-object v0
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 191
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 192
    sub-int v3, v1, v0

    .line 193
    iget-object v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v4, v4, v0

    .line 194
    iget-object v5, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v6, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v6, v6, v3

    aput-boolean v6, v5, v0

    .line 195
    iget-object v5, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean v4, v5, v3

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public set(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean p2, v0, p1

    .line 113
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->resize(I)[Z

    .line 171
    return-void
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 200
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 201
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v2, v2, v0

    .line 203
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget-object v4, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aget-boolean v4, v4, v1

    aput-boolean v4, v3, v0

    .line 204
    iget-object v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    aput-boolean v2, v3, v1

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public swap(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 127
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-lt p2, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 130
    aget-boolean v1, v0, p1

    .line 131
    aget-boolean v2, v0, p2

    aput-boolean v2, v0, p1

    .line 132
    aput-boolean v1, v0, p2

    .line 133
    return-void
.end method

.method public toArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    new-array v0, v0, [Z

    .line 222
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v2, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 237
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 229
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 230
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 231
    const/4 v0, 0x0

    aget-boolean v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 232
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v0, v3, :cond_1

    .line 233
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 234
    aget-boolean v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 237
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 241
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 249
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    .line 243
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 244
    const/4 v0, 0x0

    aget-boolean v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 245
    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-ge v0, v3, :cond_1

    .line 246
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 247
    aget-boolean v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/utils/BooleanArray;->size:I

    .line 212
    :cond_0
    return-void
.end method
