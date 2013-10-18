.class public Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field regionHeight:I

.field regionWidth:I

.field texture:Lcom/badlogic/gdx/graphics/Texture;

.field u:F

.field u2:F

.field v:F

.field v2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 39
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 58
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 46
    invoke-virtual {p0, v0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 53
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 71
    return-void
.end method

.method public static split(Lcom/badlogic/gdx/graphics/Texture;II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 191
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 192
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 194
    :cond_0
    if-eqz p2, :cond_1

    .line 195
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 196
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 197
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 199
    :cond_1
    return-void
.end method

.method public getRegionHeight()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    return v0
.end method

.method public getRegionWidth()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    return v0
.end method

.method public getRegionX()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getRegionY()I
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getU()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    return v0
.end method

.method public getU2()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    return v0
.end method

.method public getV()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    return v0
.end method

.method public getV2()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    return v0
.end method

.method public isFlipX()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlipY()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scroll(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 214
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 216
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    add-float/2addr v1, p1

    rem-float/2addr v1, v4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 217
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 219
    :cond_0
    cmpl-float v0, p2, v3

    if-eqz v0, :cond_1

    .line 220
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 221
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    add-float/2addr v1, p2

    rem-float/2addr v1, v4

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 222
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 224
    :cond_1
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 91
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 92
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 93
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 94
    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 95
    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 96
    return-void
.end method

.method public setRegion(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 83
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 84
    int-to-float v2, p1

    mul-float/2addr v2, v0

    int-to-float v3, p2

    mul-float/2addr v3, v1

    add-int v4, p1, p3

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-int v4, p2, p4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 85
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 86
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 87
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 76
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 77
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 4
    .parameter

    .prologue
    .line 100
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 101
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 102
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 107
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 108
    return-void
.end method

.method public setRegionHeight(I)V
    .locals 3
    .parameter

    .prologue
    .line 185
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    .line 186
    return-void
.end method

.method public setRegionWidth(I)V
    .locals 3
    .parameter

    .prologue
    .line 176
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    .line 177
    return-void
.end method

.method public setRegionX(I)V
    .locals 2
    .parameter

    .prologue
    .line 159
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 160
    return-void
.end method

.method public setRegionY(I)V
    .locals 2
    .parameter

    .prologue
    .line 167
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 168
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 116
    return-void
.end method

.method public setU(F)V
    .locals 2
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 124
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 125
    return-void
.end method

.method public setU2(F)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 142
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 143
    return-void
.end method

.method public setV(F)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 134
    return-void
.end method

.method public setV2(F)V
    .locals 2
    .parameter

    .prologue
    .line 150
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 152
    return-void
.end method

.method public split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v8

    .line 235
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v3

    .line 236
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 237
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 239
    div-int v10, v1, p2

    .line 240
    div-int v11, v0, p1

    .line 243
    filled-new-array {v10, v11}, [I

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 244
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_1

    .line 246
    const/4 v0, 0x0

    move v7, v0

    move v2, v8

    :goto_1
    if-ge v7, v11, :cond_0

    .line 247
    aget-object v12, v6, v9

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    aput-object v0, v12, v7

    .line 246
    add-int/lit8 v0, v7, 0x1

    add-int/2addr v2, p1

    move v7, v0

    goto :goto_1

    .line 244
    :cond_0
    add-int/lit8 v0, v9, 0x1

    add-int/2addr v3, p2

    move v9, v0

    goto :goto_0

    .line 251
    :cond_1
    return-object v6
.end method
