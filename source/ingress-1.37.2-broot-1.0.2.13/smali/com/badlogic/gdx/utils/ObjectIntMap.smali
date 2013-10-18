.class public Lcom/badlogic/gdx/utils/ObjectIntMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
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

.field private entries:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[I

.field private values:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0x20

    const v1, 0x3f4ccccd

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 60
    const v0, 0x3f4ccccd

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 61
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
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

    .line 67
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

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

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .line 70
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

    .line 71
    :cond_2
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    .line 73
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    .line 74
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    .line 76
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->pushIterations:I

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 81
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
    .line 402
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 403
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 404
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 405
    :goto_1
    return v0

    .line 403
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getAndIncrementStash(Ljava/lang/Object;II)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 307
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 308
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget p2, v1, v0

    .line 310
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    add-int v2, p2, p3

    aput v2, v1, v0

    .line 314
    :goto_1
    return p2

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method private getStash(Ljava/lang/Object;I)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 283
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 284
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget p2, v1, v0

    .line 285
    :cond_0
    return p2

    .line 283
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hash2(I)I
    .locals 2
    .parameter

    .prologue
    .line 449
    const v0, -0x4b47d1c7

    mul-int/2addr v0, p1

    .line 450
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .parameter

    .prologue
    .line 454
    const v0, -0x312e3dbf

    mul-int/2addr v0, p1

    .line 455
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    ushr-int v1, v0, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
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
            "(TK;IITK;ITK;ITK;)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 184
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 185
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 190
    const/4 v0, 0x0

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->pushIterations:I

    .line 193
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 208
    aget v1, v3, p7

    .line 209
    aput-object p1, v2, p7

    .line 210
    aput p2, v3, p7

    move p2, v1

    move-object p1, p8

    .line 215
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 216
    and-int p3, v1, v4

    .line 217
    aget-object p4, v2, p3

    .line 218
    if-nez p4, :cond_2

    .line 219
    aput-object p1, v2, p3

    .line 220
    aput p2, v3, p3

    .line 221
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 196
    :pswitch_0
    aget v1, v3, p3

    .line 197
    aput-object p1, v2, p3

    .line 198
    aput p2, v3, p3

    move p2, v1

    move-object p1, p4

    .line 199
    goto :goto_0

    .line 202
    :pswitch_1
    aget v1, v3, p5

    .line 203
    aput-object p1, v2, p5

    .line 204
    aput p2, v3, p5

    move p2, v1

    move-object p1, p6

    .line 205
    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result p5

    .line 226
    aget-object p6, v2, p5

    .line 227
    if-nez p6, :cond_3

    .line 228
    aput-object p1, v2, p5

    .line 229
    aput p2, v3, p5

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    goto :goto_1

    .line 234
    :cond_3
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result p7

    .line 235
    aget-object p8, v2, p7

    .line 236
    if-nez p8, :cond_4

    .line 237
    aput-object p1, v2, p7

    .line 238
    aput p2, v3, p7

    .line 239
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    goto :goto_1

    .line 243
    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->putStash(Ljava/lang/Object;I)V

    goto :goto_1

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private putResize(Ljava/lang/Object;I)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 152
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int v3, v0, v1

    .line 153
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v4, v1, v3

    .line 154
    if-nez v4, :cond_1

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v3

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v5

    .line 162
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v6, v1, v5

    .line 163
    if-nez v6, :cond_2

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v5

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v5

    .line 166
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v7

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v8, v0, v7

    .line 172
    if-nez v8, :cond_3

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v0, v7

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v7

    .line 175
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 179
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->push(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private putStash(Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 255
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v0, v1

    .line 261
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 262
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v1, v0

    .line 263
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    goto :goto_0
.end method

.method private resize(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 425
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v0

    .line 427
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .line 428
    int-to-float v0, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    .line 429
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 430
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    .line 431
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

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    .line 432
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

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->pushIterations:I

    .line 434
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 435
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    add-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 438
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    add-int/2addr v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 440
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 441
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    move v0, v1

    .line 442
    :goto_0
    if-ge v0, v2, :cond_1

    .line 443
    aget-object v1, v3, v0

    .line 444
    if-eqz v1, :cond_0

    aget v5, v4, v0

    invoke-direct {p0, v1, v5}, Lcom/badlogic/gdx/utils/ObjectIntMap;->putResize(Ljava/lang/Object;I)V

    .line 442
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 372
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    aput-object v0, v2, v1

    move v0, v1

    goto :goto_0

    .line 375
    :cond_0
    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 376
    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 377
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
    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 390
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v1, v0

    .line 391
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v1

    .line 393
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v0

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(I)Z
    .locals 3
    .parameter

    .prologue
    .line 382
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 383
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 384
    aget v0, v2, v1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    .line 385
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .parameter

    .prologue
    .line 420
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/2addr v0, p1

    .line 421
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    return-object v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->reset()V

    goto :goto_0
.end method

.method public findKey(I)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 412
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v0, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 413
    aget v0, v2, v1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 414
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 270
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v0, v1

    .line 271
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v0

    .line 273
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->getStash(Ljava/lang/Object;I)I

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public getAndIncrement(Ljava/lang/Object;II)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 292
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v0, v1

    .line 293
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v0

    .line 295
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->getAndIncrementStash(Ljava/lang/Object;II)I

    move-result v0

    .line 302
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v1, v1, v0

    .line 301
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    add-int v3, v1, p3

    aput v3, v2, v0

    move v0, v1

    .line 302
    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    .line 512
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    return-object v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->reset()V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 89
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int v3, v0, v2

    .line 90
    aget-object v4, v1, v3

    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v3

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v5

    .line 97
    aget-object v6, v1, v5

    .line 98
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v5

    goto :goto_0

    .line 103
    :cond_3
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v7

    .line 104
    aget-object v8, v1, v7

    .line 105
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v7

    goto :goto_0

    .line 111
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_1
    if-ge v0, v2, :cond_6

    .line 112
    aget-object v9, v1, v0

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 113
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v1, v0

    goto :goto_0

    .line 111
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_6
    if-nez v4, :cond_7

    .line 120
    aput-object p1, v1, v3

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v3

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    goto :goto_0

    .line 126
    :cond_7
    if-nez v6, :cond_8

    .line 127
    aput-object p1, v1, v5

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v5

    .line 129
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    goto :goto_0

    .line 133
    :cond_8
    if-nez v8, :cond_9

    .line 134
    aput-object p1, v1, v7

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v7

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    goto/16 :goto_0

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 140
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->push(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    .line 145
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->value:I

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 319
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v1, v0

    .line 320
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v0, v0, v1

    .line 323
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 343
    :goto_0
    return v0

    .line 327
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v1

    .line 328
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v0, v1

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v0, v0, v1

    .line 331
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 338
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v0, v1, v0

    .line 339
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->removeStash(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method removeStash(Ljava/lang/Object;I)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 349
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget p2, v1, v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->removeStashIndex(I)V

    .line 352
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 356
    :cond_0
    return p2

    .line 348
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeStashIndex(I)V
    .locals 3
    .parameter

    .prologue
    .line 361
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v0, v1

    .line 363
    if-ge p1, v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, p1

    .line 365
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v0, v2, v0

    aput v0, v1, p1

    .line 367
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3d

    .line 459
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    .line 482
    :goto_0
    return-object v0

    .line 460
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 461
    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 462
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 463
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 464
    array-length v0, v3

    move v1, v0

    .line 465
    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_1

    .line 466
    aget-object v1, v3, v0

    .line 467
    if-eqz v1, :cond_4

    .line 468
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 469
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 470
    aget v1, v4, v0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 471
    :cond_1
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 474
    aget-object v0, v3, v1

    .line 475
    if-eqz v0, :cond_3

    .line 476
    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 477
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 478
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 479
    aget v0, v4, v1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move v0, v1

    .line 480
    goto :goto_2

    .line 481
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 482
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

.method public values()Lcom/badlogic/gdx/utils/ObjectIntMap$Values;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    return-object v0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->reset()V

    goto :goto_0
.end method
