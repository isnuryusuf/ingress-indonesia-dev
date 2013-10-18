.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "SourceFile"


# instance fields
.field public index:I

.field public name:Ljava/lang/String;

.field public offsetX:F

.field public offsetY:F

.field public originalHeight:I

.field public originalWidth:I

.field public packedHeight:I

.field public packedWidth:I

.field public pads:[I

.field public rotate:Z

.field public splits:[I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 503
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 504
    iput p5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 505
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    .line 506
    iput p5, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    .line 507
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V
    .locals 1
    .parameter

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 510
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 511
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 512
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 513
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 514
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 515
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    .line 516
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    .line 517
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 518
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 519
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    .line 520
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 521
    return-void
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 525
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 526
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 527
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRotatedPackedHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 528
    :cond_1
    return-void
.end method

.method public getRotatedPackedHeight()F
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getRotatedPackedWidth()F
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v0, v0

    goto :goto_0
.end method
