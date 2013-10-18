.class public Lcom/badlogic/gdx/utils/IntMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values:Lcom/badlogic/gdx/utils/IntMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    const/16 v0, 0x20

    const v1, 0x3f4ccccd

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const v0, 0x3f4ccccd

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initialCapacity must be >= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/high16 v1, 0x4000

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initialCapacity is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .line 73
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadFactor must be > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .parameter

    .prologue
    .line 436
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 438
    aget v3, v1, v0

    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    .line 439
    :goto_1
    return v0

    .line 437
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getStash(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 317
    aget v3, v1, v0

    if-ne v3, p1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, v1, v0

    .line 318
    :cond_0
    return-object p2

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .parameter

    .prologue
    .line 497
    const v0, -0x4b47d1c7

    mul-int/2addr v0, p1

    .line 498
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .parameter

    .prologue
    .line 502
    const v0, -0x312e3dbf

    mul-int/2addr v0, p1

    .line 503
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(ILjava/lang/Object;IIIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;IIIIII)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 206
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 207
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 212
    const/4 v0, 0x0

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 215
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 230
    aget-object v1, v3, p7

    .line 231
    aput p1, v2, p7

    .line 232
    aput-object p2, v3, p7

    move-object p2, v1

    move p1, p8

    .line 237
    :goto_0
    and-int p3, p1, v4

    .line 238
    aget p4, v2, p3

    .line 239
    if-nez p4, :cond_2

    .line 240
    aput p1, v2, p3

    .line 241
    aput-object p2, v3, p3

    .line 242
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 271
    :cond_1
    :goto_1
    return-void

    .line 218
    :pswitch_0
    aget-object v1, v3, p3

    .line 219
    aput p1, v2, p3

    .line 220
    aput-object p2, v3, p3

    move-object p2, v1

    move p1, p4

    .line 221
    goto :goto_0

    .line 224
    :pswitch_1
    aget-object v1, v3, p5

    .line 225
    aput p1, v2, p5

    .line 226
    aput-object p2, v3, p5

    move-object p2, v1

    move p1, p6

    .line 227
    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result p5

    .line 247
    aget p6, v2, p5

    .line 248
    if-nez p6, :cond_3

    .line 249
    aput p1, v2, p5

    .line 250
    aput-object p2, v3, p5

    .line 251
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_1

    .line 255
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result p7

    .line 256
    aget p8, v2, p7

    .line 257
    if-nez p8, :cond_4

    .line 258
    aput p1, v2, p7

    .line 259
    aput-object p2, v3, p7

    .line 260
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_1

    .line 264
    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_0

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->putStash(ILjava/lang/Object;)V

    goto :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(ILjava/lang/Object;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 167
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v3, p1, v0

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v4, v0, v3

    .line 175
    if-nez v4, :cond_2

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v3

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v5

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v6, v0, v5

    .line 184
    if-nez v6, :cond_3

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v5

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 187
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v7

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v8, v0, v7

    .line 193
    if-nez v8, :cond_4

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v0, v7

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 196
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 200
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    goto :goto_0
.end method

.method private putStash(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 274
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v0, v1

    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v1, v0

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 284
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 473
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v0

    .line 475
    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .line 476
    int-to-float v0, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 477
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 478
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 479
    const/4 v0, 0x3

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 480
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 482
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 483
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 485
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 486
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 488
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 489
    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 490
    :goto_1
    if-ge v1, v2, :cond_2

    .line 491
    aget v0, v3, v1

    .line 492
    if-eqz v0, :cond_0

    aget-object v5, v4, v1

    invoke-direct {p0, v0, v5}, Lcom/badlogic/gdx/utils/IntMap;->putResize(ILjava/lang/Object;)V

    .line 490
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 488
    goto :goto_0

    .line 494
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 387
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 388
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 389
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 390
    aput v4, v2, v1

    .line 391
    aput-object v5, v3, v1

    move v0, v1

    goto :goto_0

    .line 393
    :cond_0
    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 394
    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 395
    iput-object v5, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 396
    iput-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 397
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .parameter

    .prologue
    .line 423
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 432
    :goto_0
    return v0

    .line 424
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, p1

    .line 425
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v0, v1, v0

    if-eq v0, p1, :cond_1

    .line 426
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v0, v1, v0

    if-eq v0, p1, :cond_1

    .line 428
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v0, v1, v0

    if-eq v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKeyStash(I)Z

    move-result v0

    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 405
    if-nez p1, :cond_3

    .line 406
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 408
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_6

    .line 409
    aget v1, v4, v2

    if-eqz v1, :cond_2

    aget-object v1, v3, v2

    if-eqz v1, :cond_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 410
    :cond_3
    if-eqz p2, :cond_4

    .line 411
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    .line 412
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v1, v2

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_6

    .line 413
    aget-object v1, v3, v2

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_2

    .line 415
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    :cond_5
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v1, v2

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_6

    .line 417
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_3

    .line 419
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .parameter

    .prologue
    .line 468
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v0, p1

    .line 469
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 470
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entries",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    goto :goto_0
.end method

.method public findKey(Ljava/lang/Object;ZI)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 447
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 448
    if-nez p1, :cond_2

    .line 449
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    move p3, v0

    .line 462
    :cond_0
    :goto_0
    return p3

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 451
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 452
    aget v0, v3, v1

    if-eqz v0, :cond_8

    aget-object v0, v2, v1

    if-nez v0, :cond_8

    aget p3, v3, v1

    goto :goto_0

    .line 453
    :cond_2
    if-eqz p2, :cond_4

    .line 454
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v1, :cond_3

    move p3, v0

    goto :goto_0

    .line 455
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 456
    aget-object v0, v2, v1

    if-ne v0, p1, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget p3, v0, v1

    goto :goto_0

    .line 458
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move p3, v0

    goto :goto_0

    .line 459
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 460
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget p3, v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 289
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 298
    :goto_0
    return-object v0

    .line 290
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, p1

    .line 291
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 292
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 294
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 302
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 311
    :goto_0
    return-object v0

    .line 303
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, p1

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 305
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 307
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntMap$Keys;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 89
    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 90
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 92
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v3, p1, v0

    .line 101
    aget v4, v2, v3

    .line 102
    if-ne v4, p1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v3

    .line 104
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v3

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v5

    .line 109
    aget v6, v2, v5

    .line 110
    if-ne v6, p1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v5

    .line 112
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v5

    goto :goto_0

    .line 116
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v7

    .line 117
    aget v8, v2, v7

    .line 118
    if-ne v8, p1, :cond_4

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v7

    .line 120
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v7

    goto :goto_0

    .line 125
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v10, v0, v1

    move v1, v0

    :goto_1
    if-ge v1, v10, :cond_6

    .line 126
    aget v0, v2, v1

    if-ne v0, p1, :cond_5

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 128
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    goto :goto_0

    .line 125
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 134
    :cond_6
    if-nez v4, :cond_8

    .line 135
    aput p1, v2, v3

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    :cond_7
    move-object v0, v9

    .line 138
    goto :goto_0

    .line 141
    :cond_8
    if-nez v6, :cond_a

    .line 142
    aput p1, v2, v5

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 144
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    :cond_9
    move-object v0, v9

    .line 145
    goto/16 :goto_0

    .line 148
    :cond_a
    if-nez v8, :cond_c

    .line 149
    aput p1, v2, v7

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    :cond_b
    move-object v0, v9

    .line 152
    goto/16 :goto_0

    :cond_c
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 155
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    move-object v0, v9

    .line 156
    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 161
    iget v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 322
    if-nez p1, :cond_1

    .line 323
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 358
    :goto_0
    return-object v0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 325
    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 326
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 327
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    move-object v0, v1

    .line 328
    goto :goto_0

    .line 331
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v2, p1, v1

    .line 332
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v2

    if-ne v1, p1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v3, v1, v2

    .line 334
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 335
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 336
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 340
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v2

    .line 341
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v2

    if-ne v1, p1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v3, v1, v2

    .line 343
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 344
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 345
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    move-object v0, v1

    .line 346
    goto :goto_0

    .line 349
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v2

    .line 350
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v2

    if-ne v1, p1, :cond_4

    .line 351
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput v3, v1, v2

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    .line 353
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 354
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    move-object v0, v1

    .line 355
    goto :goto_0

    .line 358
    :cond_4
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->removeStash(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method removeStash(I)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int v3, v0, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 364
    aget v0, v2, v1

    if-ne v0, p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 366
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntMap;->removeStashIndex(I)V

    .line 367
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 371
    :goto_1
    return-object v0

    .line 363
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 376
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 377
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v0, v1

    .line 378
    if-ge p1, v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 380
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 381
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3d

    .line 507
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 530
    :goto_0
    return-object v0

    .line 508
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 509
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 510
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 511
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 512
    array-length v0, v3

    move v1, v0

    .line 513
    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_1

    .line 514
    aget v1, v3, v0

    .line 515
    if-eqz v1, :cond_4

    .line 516
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 517
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 518
    aget-object v1, v4, v0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 519
    :cond_1
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 522
    aget v0, v3, v1

    .line 523
    if-eqz v0, :cond_3

    .line 524
    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 525
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 526
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 527
    aget-object v0, v4, v1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v0, v1

    .line 528
    goto :goto_2

    .line 529
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 530
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public values()Lcom/badlogic/gdx/utils/IntMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 550
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    goto :goto_0
.end method
