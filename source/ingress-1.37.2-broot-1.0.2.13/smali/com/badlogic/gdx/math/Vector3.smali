.class public Lcom/badlogic/gdx/math/Vector3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector3; = null

.field public static final Y:Lcom/badlogic/gdx/math/Vector3; = null

.field public static final Z:Lcom/badlogic/gdx/math/Vector3; = null

.field public static final Zero:Lcom/badlogic/gdx/math/Vector3; = null

.field private static final serialVersionUID:J = 0x354a9d4dc2f0cbeaL

.field public static final tmp:Lcom/badlogic/gdx/math/Vector3;

.field public static final tmp2:Lcom/badlogic/gdx/math/Vector3;

.field public static final tmp3:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Zero:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 66
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 73
    return-void
.end method


# virtual methods
.method public add(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter

    .prologue
    .line 155
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter

    .prologue
    .line 138
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    return-object v0
.end method

.method public crs(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v0, p3

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .parameter

    .prologue
    .line 252
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public div(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .parameter

    .prologue
    .line 196
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    .line 197
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public dot(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .parameter

    .prologue
    .line 245
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public dst(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 4
    .parameter

    .prologue
    .line 219
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v1

    .line 220
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    .line 221
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v3

    .line 223
    mul-float/2addr v0, v0

    .line 224
    mul-float/2addr v1, v1

    .line 225
    mul-float/2addr v2, v2

    .line 227
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public dst2(FFF)F
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, p1, v0

    .line 383
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v1

    .line 384
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, p3, v2

    .line 386
    mul-float/2addr v0, v0

    .line 387
    mul-float/2addr v1, v1

    .line 388
    mul-float/2addr v2, v2

    .line 390
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 4
    .parameter

    .prologue
    .line 364
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v1

    .line 365
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    .line 366
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v3

    .line 368
    mul-float/2addr v0, v0

    .line 369
    mul-float/2addr v1, v1

    .line 370
    mul-float/2addr v2, v2

    .line 372
    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public epsilonEquals(FFFF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 442
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p4

    if-lez v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p4

    if-gtz v1, :cond_0

    .line 444
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p4

    if-gtz v1, :cond_0

    .line 445
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 429
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 431
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 432
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 433
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 411
    if-ne p0, p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 414
    :cond_3
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .line 415
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 416
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 417
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 403
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    return v0
.end method

.method public idt(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .parameter

    .prologue
    .line 213
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnit()Z
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public len()F
    .locals 3

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    .prologue
    .line 207
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 314
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 316
    return-object v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter

    .prologue
    .line 188
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .parameter

    .prologue
    .line 268
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 269
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, v0, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, v0, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xe

    aget v0, v0, v4

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 235
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->div(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0
.end method

.method public prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .parameter

    .prologue
    .line 280
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 281
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x3

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x7

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v3, 0xb

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, v0, v2

    add-float/2addr v1, v2

    .line 282
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, v0, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, v0, v4

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v6, 0xa

    aget v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xe

    aget v0, v0, v5

    add-float/2addr v0, v4

    div-float/2addr v0, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .parameter

    .prologue
    .line 292
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 293
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v0, v0, v5

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public scale(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 455
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 456
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 457
    return-object p0
.end method

.method public set(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 83
    iput p2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 84
    iput p3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 85
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter

    .prologue
    .line 93
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v0, -0x4080

    .line 326
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 327
    float-to-double v3, v2

    const-wide v5, 0x3fefff972474538fL

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_0

    float-to-double v3, v2

    const-wide v5, 0x3feffbe76c8b4396L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 329
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 340
    :goto_0
    return-object p0

    .line 333
    :cond_1
    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    .line 334
    :goto_1
    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    .line 336
    :goto_2
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 337
    mul-float/2addr v1, p2

    .line 338
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v5

    invoke-virtual {v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 340
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public sub(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter

    .prologue
    .line 180
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .parameter

    .prologue
    .line 162
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public tmp()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public tmp2()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method tmp3()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
