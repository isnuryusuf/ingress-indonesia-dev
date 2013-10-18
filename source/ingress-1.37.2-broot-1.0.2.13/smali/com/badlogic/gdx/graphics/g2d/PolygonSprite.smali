.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field private height:F

.field private originX:F

.field private originY:F

.field region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private vertices:[F

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 19
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 21
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 26
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(FFFF)V

    .line 27
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    .line 28
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 19
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 21
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V
    .locals 4
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    array-length v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;[FII)V

    .line 264
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 268
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 269
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 270
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    .line 272
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 273
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 274
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v5

    .line 242
    aget v4, v5, v0

    .line 243
    aget v3, v5, v1

    .line 244
    aget v2, v5, v0

    .line 245
    aget v1, v5, v1

    .line 247
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_4

    .line 248
    aget v6, v5, v0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    aget v4, v5, v0

    .line 249
    :cond_0
    aget v6, v5, v0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    aget v2, v5, v0

    .line 250
    :cond_1
    add-int/lit8 v6, v0, 0x1

    aget v6, v5, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    add-int/lit8 v3, v0, 0x1

    aget v3, v5, v3

    .line 251
    :cond_2
    add-int/lit8 v6, v0, 0x1

    aget v6, v5, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget v1, v5, v1

    .line 247
    :cond_3
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f

    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 317
    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 318
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 319
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 320
    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 321
    return-object v1
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v1, :cond_2

    .line 195
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 197
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    add-float v3, v1, v2

    .line 198
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    add-float v4, v1, v2

    .line 199
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v5, v1, v2

    .line 200
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v6, v1, v2

    .line 204
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->getLocalVertices()[F

    move-result-object v7

    .line 206
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v8

    .line 207
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    .line 209
    :goto_0
    array-length v1, v7

    if-ge v0, v1, :cond_2

    .line 210
    aget v1, v7, v0

    mul-float/2addr v1, v5

    .line 211
    add-int/lit8 v2, v0, 0x1

    aget v2, v7, v2

    mul-float v10, v2, v6

    .line 213
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    sub-float v2, v1, v2

    .line 214
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    sub-float v1, v10, v1

    .line 216
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 217
    :cond_0
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    mul-float/2addr v2, v10

    .line 218
    iget v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    mul-float/2addr v1, v10

    .line 221
    :cond_1
    mul-float v10, v8, v2

    mul-float v11, v9, v1

    sub-float/2addr v10, v11

    .line 222
    mul-float/2addr v2, v9

    mul-float/2addr v1, v8

    add-float/2addr v1, v2

    .line 224
    add-float v2, v10, v3

    .line 225
    add-float/2addr v1, v4

    .line 227
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    div-int/lit8 v11, v0, 0x2

    mul-int/lit8 v11, v11, 0x5

    aput v2, v10, v11

    .line 228
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    div-int/lit8 v10, v0, 0x2

    mul-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, 0x1

    aput v1, v2, v10

    .line 209
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .parameter

    .prologue
    .line 169
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 171
    return-void
.end method

.method public scale(F)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 190
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    .line 41
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 42
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 43
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 44
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 46
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 47
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 48
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 49
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 51
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 52
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 58
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 59
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 60
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 63
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x437f

    .line 147
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

    .line 148
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    .line 149
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 150
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 151
    add-int/lit8 v3, v0, 0x2

    aput v1, v2, v3

    .line 150
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    .line 140
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 141
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 142
    add-int/lit8 v3, v0, 0x2

    aput v1, v2, v3

    .line 141
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originX:F

    .line 158
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->originY:F

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 160
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translate(FF)V

    .line 80
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .locals 6
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->region:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    .line 327
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->getLocalVertices()[F

    move-result-object v1

    .line 328
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->getTextureCoords()[F

    move-result-object v2

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    if-eqz v0, :cond_0

    array-length v0, v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    array-length v3, v3

    if-eq v0, v3, :cond_1

    .line 331
    :cond_0
    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 334
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    mul-int/lit8 v4, v0, 0x5

    mul-int/lit8 v5, v0, 0x2

    aget v5, v1, v5

    aput v5, v3, v4

    .line 336
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v1, v5

    aput v5, v3, v4

    .line 337
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    aput v5, v3, v4

    .line 338
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x3

    mul-int/lit8 v5, v0, 0x2

    aget v5, v2, v5

    aput v5, v3, v4

    .line 339
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    aput v5, v3, v4

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_2
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->rotation:F

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 165
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 175
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 177
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleX:F

    .line 181
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->scaleY:F

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 183
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->width:F

    .line 70
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->height:F

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    .line 73
    return-void
.end method

.method public setX(F)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateX(F)V

    .line 87
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateY(F)V

    .line 94
    return-void
.end method

.method public translate(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 128
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 131
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 132
    aget v2, v1, v0

    add-float/2addr v2, p1

    aput v2, v1, v0

    .line 133
    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    add-float/2addr v3, p2

    aput v3, v1, v2

    .line 131
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public translateX(F)V
    .locals 3
    .parameter

    .prologue
    .line 99
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->x:F

    .line 101
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 104
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 105
    aget v2, v1, v0

    add-float/2addr v2, p1

    aput v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public translateY(F)V
    .locals 4
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->y:F

    .line 114
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->dirty:Z

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->vertices:[F

    .line 117
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 118
    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    add-float/2addr v3, p1

    aput v3, v1, v2

    .line 117
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method
