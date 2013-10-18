.class public Lcom/badlogic/gdx/math/Matrix3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEGREE_TO_RAD:F = 0.017453292f

.field public static final M00:I = 0x0

.field public static final M01:I = 0x3

.field public static final M02:I = 0x6

.field public static final M10:I = 0x1

.field public static final M11:I = 0x4

.field public static final M12:I = 0x7

.field public static final M20:I = 0x2

.field public static final M21:I = 0x5

.field public static final M22:I = 0x8

.field private static final serialVersionUID:J = 0x6dbd5498495b94acL


# instance fields
.field private tmp:[F

.field public val:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x9

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 47
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 48
    return-void
.end method

.method private static mul([F[F)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 358
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 359
    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p0, v2

    const/4 v3, 0x4

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 360
    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 362
    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, p0, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p0, v4

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 363
    const/4 v4, 0x1

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x4

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p0, v5

    const/4 v6, 0x5

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 364
    const/4 v5, 0x1

    aget v5, p0, v5

    const/4 v6, 0x6

    aget v6, p1, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x7

    aget v7, p1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    const/16 v7, 0x8

    aget v7, p1, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 366
    const/4 v6, 0x2

    aget v6, p0, v6

    const/4 v7, 0x0

    aget v7, p1, v7

    mul-float/2addr v6, v7

    const/4 v7, 0x5

    aget v7, p0, v7

    const/4 v8, 0x1

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const/16 v7, 0x8

    aget v7, p0, v7

    const/4 v8, 0x2

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 367
    const/4 v7, 0x2

    aget v7, p0, v7

    const/4 v8, 0x3

    aget v8, p1, v8

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p0, v8

    const/4 v9, 0x4

    aget v9, p1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0x8

    aget v8, p0, v8

    const/4 v9, 0x5

    aget v9, p1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 368
    const/4 v8, 0x2

    aget v8, p0, v8

    const/4 v9, 0x6

    aget v9, p1, v9

    mul-float/2addr v8, v9

    const/4 v9, 0x5

    aget v9, p0, v9

    const/4 v10, 0x7

    aget v10, p1, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/16 v9, 0x8

    aget v9, p0, v9

    const/16 v10, 0x8

    aget v10, p1, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 370
    const/4 v9, 0x0

    aput v0, p0, v9

    .line 371
    const/4 v0, 0x1

    aput v3, p0, v0

    .line 372
    const/4 v0, 0x2

    aput v6, p0, v0

    .line 373
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 374
    const/4 v0, 0x4

    aput v4, p0, v0

    .line 375
    const/4 v0, 0x5

    aput v7, p0, v0

    .line 376
    const/4 v0, 0x6

    aput v2, p0, v0

    .line 377
    const/4 v0, 0x7

    aput v5, p0, v0

    .line 378
    const/16 v0, 0x8

    aput v8, p0, v0

    .line 379
    return-void
.end method


# virtual methods
.method public det()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v8

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 65
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix3;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->det()F

    move-result v0

    .line 181
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Can\'t invert a singular matrix"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    .line 185
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v11

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v7

    .line 186
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v9

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v8

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v9

    .line 188
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v10

    .line 189
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v11

    .line 190
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v10

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 191
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 192
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v10

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 195
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v2, v2, v7

    mul-float/2addr v2, v0

    aput v2, v1, v7

    .line 196
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v2, v2, v8

    mul-float/2addr v2, v0

    aput v2, v1, v8

    .line 197
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v2, v2, v9

    mul-float/2addr v2, v0

    aput v2, v1, v9

    .line 198
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v2, v2, v10

    mul-float/2addr v2, v0

    aput v2, v1, v10

    .line 199
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v2, v2, v11

    mul-float/2addr v2, v0

    aput v2, v1, v11

    .line 200
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 201
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 202
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 203
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    mul-float/2addr v0, v3

    aput v0, v1, v2

    .line 205
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 12
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 73
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 75
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    iget-object v5, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 76
    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    iget-object v6, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 77
    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    iget-object v7, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    iget-object v7, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v8, 0x8

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 79
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    iget-object v7, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v8, 0x5

    aget v7, v7, v8

    iget-object v8, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v8, 0x8

    aget v7, v7, v8

    iget-object v8, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 80
    iget-object v7, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v9, 0x5

    aget v8, v8, v9

    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v9, 0x8

    aget v8, v8, v9

    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x5

    aget v9, v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 81
    iget-object v8, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x6

    aget v9, v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x5

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v10, 0x8

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 83
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aput v0, v9, v10

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v9, 0x1

    aput v3, v0, v9

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x2

    aput v6, v0, v3

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v4, v0, v1

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v7, v0, v1

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v5, v0, v1

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v8, v0, v1

    .line 93
    return-object p0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 279
    cmpl-float v0, p1, v4

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-object p0

    .line 280
    :cond_0
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    .line 281
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 282
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 286
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 288
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x3

    neg-float v0, v0

    aput v0, v2, v3

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    goto :goto_0
.end method

.method public scale(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 305
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 313
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 316
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 332
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 326
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    aput v2, v0, v1

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    aput v2, v0, v1

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 218
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    aput v1, v0, v5

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, v0, v6

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v0, v1

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    aput v2, v0, v1

    .line 231
    return-object p0
.end method

.method public setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 100
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    .line 101
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 102
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 104
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 105
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 106
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x2

    aput v4, v2, v3

    .line 108
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    neg-float v0, v0

    aput v0, v2, v3

    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 116
    return-object p0
.end method

.method public setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 147
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 157
    return-object p0
.end method

.method public setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 136
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 164
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 165
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v3, v0, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 166
    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, %"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, %"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s\n%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, %"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s, %"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s\n%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "s, %"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s, %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 271
    return-object p0
.end method

.method public transpose()Lcom/badlogic/gdx/math/Matrix3;
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v0, v0, v10

    .line 337
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v11

    .line 338
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v12

    .line 339
    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v13

    .line 340
    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v14

    .line 341
    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    .line 342
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    .line 343
    iget-object v7, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    .line 344
    iget-object v8, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v9, 0x8

    aget v8, v8, v9

    .line 345
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v0, v9, v10

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v1, v0, v13

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v3, v0, v11

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v4, v0, v14

    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v5, v0, v1

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v6, v0, v12

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v7, v0, v1

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v8, v0, v1

    .line 354
    return-object p0
.end method

.method public trn(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 250
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 240
    return-object p0
.end method
