.class public Lcom/badlogic/gdx/graphics/g2d/Sprite;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "SourceFile"


# static fields
.field static final SPRITE_SIZE:I = 0x14

.field static final VERTEX_SIZE:I = 0x5


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field height:F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field final vertices:[F

.field width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 52
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 71
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 73
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(IIII)V

    .line 74
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 75
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 99
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 100
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 80
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 81
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 82
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 83
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 91
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 92
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 93
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 94
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 95
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 96
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 454
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 458
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 459
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 460
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 461
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 462
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 463
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 464
    return-void
.end method

.method public flip(ZZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 557
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 559
    if-eqz p1, :cond_0

    .line 560
    aget v1, v0, v3

    .line 561
    aget v2, v0, v7

    aput v2, v0, v3

    .line 562
    aput v1, v0, v7

    .line 563
    aget v1, v0, v5

    .line 564
    const/16 v2, 0x12

    aget v2, v0, v2

    aput v2, v0, v5

    .line 565
    const/16 v2, 0x12

    aput v1, v0, v2

    .line 567
    :cond_0
    if-eqz p2, :cond_1

    .line 568
    aget v1, v0, v4

    .line 569
    const/16 v2, 0xe

    aget v2, v0, v2

    aput v2, v0, v4

    .line 570
    const/16 v2, 0xe

    aput v1, v0, v2

    .line 571
    aget v1, v0, v6

    .line 572
    const/16 v2, 0x13

    aget v2, v0, v2

    aput v2, v0, v6

    .line 573
    const/16 v2, 0x13

    aput v1, v0, v2

    .line 575
    :cond_1
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v6, 0x5

    .line 421
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v4

    .line 423
    const/4 v0, 0x0

    aget v0, v4, v0

    .line 424
    const/4 v1, 0x1

    aget v2, v4, v1

    .line 425
    const/4 v1, 0x0

    aget v1, v4, v1

    .line 426
    const/4 v3, 0x1

    aget v3, v4, v3

    .line 428
    aget v5, v4, v6

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    aget v0, v4, v6

    .line 429
    :cond_0
    aget v5, v4, v8

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    aget v0, v4, v8

    .line 430
    :cond_1
    aget v5, v4, v10

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    aget v0, v4, v10

    .line 432
    :cond_2
    aget v5, v4, v6

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    aget v1, v4, v6

    .line 433
    :cond_3
    aget v5, v4, v8

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    aget v1, v4, v8

    .line 434
    :cond_4
    aget v5, v4, v10

    cmpg-float v5, v1, v5

    if-gez v5, :cond_5

    aget v1, v4, v10

    .line 436
    :cond_5
    aget v5, v4, v7

    cmpl-float v5, v2, v5

    if-lez v5, :cond_6

    aget v2, v4, v7

    .line 437
    :cond_6
    aget v5, v4, v9

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    aget v2, v4, v9

    .line 438
    :cond_7
    const/16 v5, 0x10

    aget v5, v4, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_8

    const/16 v2, 0x10

    aget v2, v4, v2

    .line 440
    :cond_8
    aget v5, v4, v7

    cmpg-float v5, v3, v5

    if-gez v5, :cond_9

    aget v3, v4, v7

    .line 441
    :cond_9
    aget v5, v4, v9

    cmpg-float v5, v3, v5

    if-gez v5, :cond_a

    aget v3, v4, v9

    .line 442
    :cond_a
    const/16 v5, 0x10

    aget v5, v4, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_b

    const/16 v3, 0x10

    aget v3, v4, v3

    .line 444
    :cond_b
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v4, :cond_c

    new-instance v4, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 445
    :cond_c
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v0, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 446
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 447
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v0, v1, v0

    iput v0, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v1, v3, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 508
    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 509
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 510
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 511
    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 512
    return-object v1
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .locals 12

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_2

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 351
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 352
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    neg-float v3, v0

    .line 353
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    neg-float v2, v0

    .line 354
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    add-float v1, v3, v0

    .line 355
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    add-float/2addr v0, v2

    .line 356
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float/2addr v5, v3

    .line 357
    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float/2addr v6, v2

    .line 358
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 359
    :cond_0
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    mul-float/2addr v3, v7

    .line 360
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    mul-float/2addr v2, v7

    .line 361
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    mul-float/2addr v1, v7

    .line 362
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    mul-float/2addr v0, v7

    .line 364
    :cond_1
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    .line 365
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v7

    .line 366
    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v8

    .line 367
    mul-float v9, v3, v7

    .line 368
    mul-float/2addr v3, v8

    .line 369
    mul-float v10, v2, v7

    .line 370
    mul-float/2addr v2, v8

    .line 371
    mul-float v11, v1, v7

    .line 372
    mul-float/2addr v1, v8

    .line 373
    mul-float/2addr v7, v0

    .line 374
    mul-float/2addr v0, v8

    .line 376
    sub-float v2, v9, v2

    add-float/2addr v2, v5

    .line 377
    add-float v8, v10, v3

    add-float/2addr v8, v6

    .line 378
    const/4 v10, 0x0

    aput v2, v4, v10

    .line 379
    const/4 v10, 0x1

    aput v8, v4, v10

    .line 381
    sub-float/2addr v9, v0

    add-float/2addr v9, v5

    .line 382
    add-float/2addr v3, v7

    add-float/2addr v3, v6

    .line 383
    const/4 v10, 0x5

    aput v9, v4, v10

    .line 384
    const/4 v10, 0x6

    aput v3, v4, v10

    .line 386
    sub-float v0, v11, v0

    add-float/2addr v0, v5

    .line 387
    add-float/2addr v1, v7

    add-float/2addr v1, v6

    .line 388
    const/16 v5, 0xa

    aput v0, v4, v5

    .line 389
    const/16 v5, 0xb

    aput v1, v4, v5

    .line 391
    const/16 v5, 0xf

    sub-float/2addr v0, v9

    add-float/2addr v0, v2

    aput v0, v4, v5

    .line 392
    const/16 v0, 0x10

    sub-float v2, v3, v8

    sub-float/2addr v1, v2

    aput v1, v4, v0

    .line 412
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    return-object v0

    .line 394
    :cond_3
    add-float/2addr v3, v5

    .line 395
    add-float/2addr v2, v6

    .line 396
    add-float/2addr v1, v5

    .line 397
    add-float/2addr v0, v6

    .line 399
    const/4 v5, 0x0

    aput v3, v4, v5

    .line 400
    const/4 v5, 0x1

    aput v2, v4, v5

    .line 402
    const/4 v5, 0x5

    aput v3, v4, v5

    .line 403
    const/4 v3, 0x6

    aput v0, v4, v3

    .line 405
    const/16 v3, 0xa

    aput v1, v4, v3

    .line 406
    const/16 v3, 0xb

    aput v0, v4, v3

    .line 408
    const/16 v0, 0xf

    aput v1, v4, v0

    .line 409
    const/16 v0, 0x10

    aput v2, v4, v0

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .parameter

    .prologue
    .line 291
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 293
    return-void
.end method

.method public rotate90(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x3

    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 300
    if-eqz p1, :cond_0

    .line 301
    aget v1, v0, v3

    .line 302
    const/16 v2, 0x13

    aget v2, v0, v2

    aput v2, v0, v3

    .line 303
    const/16 v2, 0x13

    const/16 v3, 0xe

    aget v3, v0, v3

    aput v3, v0, v2

    .line 304
    const/16 v2, 0xe

    aget v3, v0, v6

    aput v3, v0, v2

    .line 305
    aput v1, v0, v6

    .line 307
    aget v1, v0, v4

    .line 308
    const/16 v2, 0x12

    aget v2, v0, v2

    aput v2, v0, v4

    .line 309
    const/16 v2, 0x12

    aget v3, v0, v7

    aput v3, v0, v2

    .line 310
    aget v2, v0, v5

    aput v2, v0, v7

    .line 311
    aput v1, v0, v5

    .line 325
    :goto_0
    return-void

    .line 313
    :cond_0
    aget v1, v0, v3

    .line 314
    aget v2, v0, v6

    aput v2, v0, v3

    .line 315
    const/16 v2, 0xe

    aget v2, v0, v2

    aput v2, v0, v6

    .line 316
    const/16 v2, 0xe

    const/16 v3, 0x13

    aget v3, v0, v3

    aput v3, v0, v2

    .line 317
    const/16 v2, 0x13

    aput v1, v0, v2

    .line 319
    aget v1, v0, v4

    .line 320
    aget v2, v0, v5

    aput v2, v0, v4

    .line 321
    aget v2, v0, v7

    aput v2, v0, v5

    .line 322
    const/16 v2, 0x12

    aget v2, v0, v2

    aput v2, v0, v7

    .line 323
    const/16 v2, 0x12

    aput v1, v0, v2

    goto :goto_0
.end method

.method public scale(F)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 342
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 344
    return-void
.end method

.method public scroll(FF)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x3

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 578
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 579
    cmpl-float v1, p1, v4

    if-eqz v1, :cond_0

    .line 580
    aget v1, v0, v6

    add-float/2addr v1, p1

    rem-float/2addr v1, v5

    .line 581
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 582
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 583
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 584
    aput v1, v0, v6

    .line 585
    const/16 v3, 0x8

    aput v1, v0, v3

    .line 586
    const/16 v1, 0xd

    aput v2, v0, v1

    .line 587
    const/16 v1, 0x12

    aput v2, v0, v1

    .line 589
    :cond_0
    cmpl-float v1, p2, v4

    if-eqz v1, :cond_1

    .line 590
    aget v1, v0, v7

    add-float/2addr v1, p2

    rem-float/2addr v1, v5

    .line 591
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 592
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 593
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 594
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 595
    aput v1, v0, v7

    .line 596
    const/16 v3, 0xe

    aput v1, v0, v3

    .line 597
    const/16 v1, 0x13

    aput v2, v0, v1

    .line 599
    :cond_1
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 104
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 108
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 109
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 110
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 111
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 112
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 113
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 114
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 115
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 116
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 117
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 118
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 119
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 121
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 122
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    .line 127
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 128
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 129
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 130
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 132
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    add-float v0, p1, p3

    .line 135
    add-float v1, p2, p4

    .line 136
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 137
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 138
    aput p2, v2, v5

    .line 140
    const/4 v3, 0x5

    aput p1, v2, v3

    .line 141
    const/4 v3, 0x6

    aput v1, v2, v3

    .line 143
    const/16 v3, 0xa

    aput v0, v2, v3

    .line 144
    const/16 v3, 0xb

    aput v1, v2, v3

    .line 146
    const/16 v1, 0xf

    aput v0, v2, v1

    .line 147
    const/16 v0, 0x10

    aput p2, v2, v0

    .line 149
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    :cond_2
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    goto :goto_0
.end method

.method public setColor(F)V
    .locals 2
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 271
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 272
    const/4 v1, 0x7

    aput p1, v0, v1

    .line 273
    const/16 v1, 0xc

    aput p1, v0, v1

    .line 274
    const/16 v1, 0x11

    aput p1, v0, v1

    .line 275
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 260
    mul-float v0, v2, p4

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    or-int/2addr v0, v1

    .line 261
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 263
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 264
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 265
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 266
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 267
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .parameter

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 253
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 254
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 255
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 256
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 257
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 280
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 282
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    .line 184
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 519
    const/4 v1, 0x3

    aput p1, v0, v1

    .line 520
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 522
    const/16 v1, 0x8

    aput p1, v0, v1

    .line 523
    const/16 v1, 0x9

    aput p2, v0, v1

    .line 525
    const/16 v1, 0xd

    aput p3, v0, v1

    .line 526
    const/16 v1, 0xe

    aput p2, v0, v1

    .line 528
    const/16 v1, 0x12

    aput p3, v0, v1

    .line 529
    const/16 v1, 0x13

    aput p4, v0, v1

    .line 530
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 287
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter

    .prologue
    .line 328
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 329
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 331
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 334
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 335
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 337
    return-void
.end method

.method public setSize(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    .line 156
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 157
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 159
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    .line 162
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v1, p2

    .line 163
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 164
    const/4 v3, 0x0

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v4, v2, v3

    .line 165
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v3, v2, v6

    .line 167
    const/4 v3, 0x5

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    aput v4, v2, v3

    .line 168
    const/4 v3, 0x6

    aput v1, v2, v3

    .line 170
    const/16 v3, 0xa

    aput v0, v2, v3

    .line 171
    const/16 v3, 0xb

    aput v1, v2, v3

    .line 173
    const/16 v1, 0xf

    aput v0, v2, v1

    .line 174
    const/16 v0, 0x10

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    aput v1, v2, v0

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    :cond_2
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    goto :goto_0
.end method

.method public setU(F)V
    .locals 2
    .parameter

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 534
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x8

    aput p1, v0, v1

    .line 536
    return-void
.end method

.method public setU2(F)V
    .locals 2
    .parameter

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x12

    aput p1, v0, v1

    .line 548
    return-void
.end method

.method public setV(F)V
    .locals 2
    .parameter

    .prologue
    .line 539
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xe

    aput p1, v0, v1

    .line 542
    return-void
.end method

.method public setV2(F)V
    .locals 2
    .parameter

    .prologue
    .line 551
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x13

    aput p1, v0, v1

    .line 554
    return-void
.end method

.method public setX(F)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translateX(F)V

    .line 191
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translateY(F)V

    .line 198
    return-void
.end method

.method public translate(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 231
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 232
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 234
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 237
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 238
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 240
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 241
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 243
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 244
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 246
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 247
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public translateX(F)V
    .locals 3
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 205
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 208
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 209
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 210
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 211
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public translateY(F)V
    .locals 3
    .parameter

    .prologue
    .line 217
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 219
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 222
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 223
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 224
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 225
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    goto :goto_0
.end method
