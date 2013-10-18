.class public Lcom/badlogic/gdx/utils/IdentityMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

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

.field private values:Lcom/badlogic/gdx/utils/IdentityMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    const/16 v0, 0x20

    const v1, 0x3f4ccccd

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 61
    const v0, 0x3f4ccccd

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 62
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
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

    .line 68
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

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

    .line 69
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 71
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

    .line 72
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 77
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 404
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 405
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    .line 406
    :goto_1
    return v0

    .line 404
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 296
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 297
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, v1, v0

    .line 298
    :cond_0
    return-object p2

    .line 296
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .parameter

    .prologue
    .line 461
    const v0, -0x4b47d1c7

    mul-int/2addr v0, p1

    .line 462
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .parameter

    .prologue
    .line 466
    const v0, -0x312e3dbf

    mul-int/2addr v0, p1

    .line 467
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
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
            "(TK;TV;ITK;ITK;ITK;)V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 185
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 186
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 191
    const/4 v0, 0x0

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 194
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 209
    aget-object v1, v3, p7

    .line 210
    aput-object p1, v2, p7

    .line 211
    aput-object p2, v3, p7

    move-object p2, v1

    move-object p1, p8

    .line 216
    :goto_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 217
    and-int p3, v1, v4

    .line 218
    aget-object p4, v2, p3

    .line 219
    if-nez p4, :cond_2

    .line 220
    aput-object p1, v2, p3

    .line 221
    aput-object p2, v3, p3

    .line 222
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 251
    :cond_1
    :goto_1
    return-void

    .line 197
    :pswitch_0
    aget-object v1, v3, p3

    .line 198
    aput-object p1, v2, p3

    .line 199
    aput-object p2, v3, p3

    move-object p2, v1

    move-object p1, p4

    .line 200
    goto :goto_0

    .line 203
    :pswitch_1
    aget-object v1, v3, p5

    .line 204
    aput-object p1, v2, p5

    .line 205
    aput-object p2, v3, p5

    move-object p2, v1

    move-object p1, p6

    .line 206
    goto :goto_0

    .line 226
    :cond_2
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result p5

    .line 227
    aget-object p6, v2, p5

    .line 228
    if-nez p6, :cond_3

    .line 229
    aput-object p1, v2, p5

    .line 230
    aput-object p2, v3, p5

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_1

    .line 235
    :cond_3
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result p7

    .line 236
    aget-object p8, v2, p7

    .line 237
    if-nez p8, :cond_4

    .line 238
    aput-object p1, v2, p7

    .line 239
    aput-object p2, v3, p7

    .line 240
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_1

    .line 244
    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_0

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->putStash(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 153
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v3, v0, v1

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v1, v3

    .line 155
    if-nez v4, :cond_1

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v5

    .line 163
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v6, v1, v5

    .line 164
    if-nez v6, :cond_2

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 167
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v7

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v8, v0, v7

    .line 173
    if-nez v8, :cond_3

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 180
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private putStash(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 254
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v0, v1

    .line 262
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 263
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v0

    .line 439
    iput p1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 440
    int-to-float v0, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 441
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 443
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

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 444
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

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 446
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 447
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 449
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 450
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 452
    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 453
    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    move v0, v1

    .line 454
    :goto_0
    if-ge v0, v2, :cond_1

    .line 455
    aget-object v1, v3, v0

    .line 456
    if-eqz v1, :cond_0

    aget-object v5, v4, v0

    invoke-direct {p0, v1, v5}, Lcom/badlogic/gdx/utils/IdentityMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 359
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 360
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 361
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 362
    aput-object v5, v2, v1

    .line 363
    aput-object v5, v3, v1

    move v0, v1

    goto :goto_0

    .line 365
    :cond_0
    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 366
    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 367
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 391
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v1, v0

    .line 392
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v1

    if-eq p1, v1, :cond_0

    .line 393
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 394
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v1

    if-eq p1, v1, :cond_0

    .line 395
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v0, v1, v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 374
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 375
    if-nez p1, :cond_1

    .line 376
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 377
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v1, v2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 378
    aget-object v1, v4, v2

    if-eqz v1, :cond_4

    aget-object v1, v3, v2

    if-nez v1, :cond_4

    .line 386
    :cond_0
    :goto_1
    return v0

    .line 379
    :cond_1
    if-eqz p2, :cond_2

    .line 380
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v1, v2

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 381
    aget-object v1, v3, v2

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_2

    .line 383
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v1, v2

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 384
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_3

    .line 386
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .parameter

    .prologue
    .line 432
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/2addr v0, p1

    .line 433
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IdentityMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->reset()V

    goto :goto_0
.end method

.method public findKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TK;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 415
    if-nez p1, :cond_0

    .line 416
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 417
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 418
    aget-object v0, v3, v1

    if-eqz v0, :cond_5

    aget-object v0, v2, v1

    if-nez v0, :cond_5

    aget-object v0, v3, v1

    .line 426
    :goto_1
    return-object v0

    .line 419
    :cond_0
    if-eqz p2, :cond_1

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 421
    aget-object v0, v2, v1

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    goto :goto_1

    .line 423
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 424
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    goto :goto_1

    .line 426
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 270
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    .line 271
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_0

    .line 272
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v0

    .line 273
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_0

    .line 274
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 283
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_0

    .line 285
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v0

    .line 286
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eq p1, v2, :cond_0

    .line 287
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eq p1, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IdentityMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    return-object v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->reset()V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 85
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 90
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v3, v0, v1

    .line 91
    aget-object v4, v2, v3

    .line 92
    if-ne v4, p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v3

    .line 94
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 146
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v5

    .line 99
    aget-object v6, v2, v5

    .line 100
    if-ne v6, p1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v5

    .line 102
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v5

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v7

    .line 107
    aget-object v8, v2, v7

    .line 108
    if-ne v8, p1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v7

    .line 110
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v1, v7

    goto :goto_0

    .line 115
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v10, v0, v1

    move v1, v0

    :goto_1
    if-ge v1, v10, :cond_5

    .line 116
    aget-object v0, v2, v1

    if-ne v0, p1, :cond_4

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    goto :goto_0

    .line 115
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 124
    :cond_5
    if-nez v4, :cond_7

    .line 125
    aput-object p1, v2, v3

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 127
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    :cond_6
    move-object v0, v9

    .line 128
    goto :goto_0

    .line 131
    :cond_7
    if-nez v6, :cond_9

    .line 132
    aput-object p1, v2, v5

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v5

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    :cond_8
    move-object v0, v9

    .line 135
    goto :goto_0

    .line 138
    :cond_9
    if-nez v8, :cond_b

    .line 139
    aput-object p1, v2, v7

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v7

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_a

    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    :cond_a
    move-object v0, v9

    .line 142
    goto/16 :goto_0

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 145
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    move-object v0, v9

    .line 146
    goto/16 :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 302
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 303
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v1, v0

    .line 304
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 307
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 308
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 330
    :goto_0
    return-object v0

    .line 312
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 313
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 316
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 317
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 325
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 326
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method removeStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 335
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int v3, v0, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 336
    aget-object v0, v2, v1

    if-ne v0, p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 338
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStashIndex(I)V

    .line 339
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 343
    :goto_1
    return-object v0

    .line 335
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method removeStashIndex(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 349
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v0, v1

    .line 350
    if-ge p1, v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 353
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v3, v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3d

    .line 471
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 494
    :goto_0
    return-object v0

    .line 472
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 473
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 474
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 475
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 476
    array-length v0, v3

    move v1, v0

    .line 477
    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_1

    .line 478
    aget-object v1, v3, v0

    .line 479
    if-eqz v1, :cond_4

    .line 480
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 481
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 482
    aget-object v1, v4, v0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 483
    :cond_1
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 486
    aget-object v0, v3, v1

    .line 487
    if-eqz v0, :cond_3

    .line 488
    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 489
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 490
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 491
    aget-object v0, v4, v1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    move v0, v1

    .line 492
    goto :goto_2

    .line 493
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 494
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

.method public values()Lcom/badlogic/gdx/utils/IdentityMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    return-object v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;->reset()V

    goto :goto_0
.end method
