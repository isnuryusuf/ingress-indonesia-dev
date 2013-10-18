.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"


# instance fields
.field private align:I

.field private drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private imageHeight:F

.field private imageWidth:F

.field private imageX:F

.field private imageY:F

.field private scaling:Lcom/badlogic/gdx/utils/Scaling;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 81
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 82
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 83
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 84
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setWidth(F)V

    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setHeight(F)V

    .line 86
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->validate()V

    .line 121
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 122
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getX()F

    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getY()F

    move-result v3

    .line 126
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getScaleX()F

    move-result v8

    .line 127
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getScaleY()F

    move-result v9

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-ne v0, v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getRotation()F

    move-result v10

    .line 133
    cmpl-float v0, v8, v4

    if-nez v0, :cond_1

    cmpl-float v0, v9, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-nez v0, :cond_1

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getOriginX()F

    move-result v0

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    sub-float v4, v0, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getOriginY()F

    move-result v0

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    add-float/2addr v2, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    add-float/2addr v3, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    mul-float v4, v1, v8

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    mul-float v5, v1, v9

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_0
.end method

.method public getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    return v0
.end method

.method public getImageX()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    return v0
.end method

.method public getImageY()F
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    .line 96
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v2

    .line 97
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getHeight()F

    move-result v3

    .line 99
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 100
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    .line 101
    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 104
    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    .line 110
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 111
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    sub-float v0, v3, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 105
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    goto :goto_0

    .line 108
    :cond_2
    div-float v0, v2, v5

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageWidth:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageX:F

    goto :goto_0

    .line 112
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 113
    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    goto :goto_1

    .line 115
    :cond_4
    div-float v0, v3, v5

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageHeight:F

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->imageY:F

    goto :goto_1
.end method

.method public setAlign(I)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->align:I

    .line 165
    return-void
.end method

.method public setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    if-eqz p1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefWidth()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefHeight()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidateHierarchy()V

    .line 151
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->drawable:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getPrefHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->invalidateHierarchy()V

    goto :goto_1
.end method

.method public setScaling(Lcom/badlogic/gdx/utils/Scaling;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scaling cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->scaling:Lcom/badlogic/gdx/utils/Scaling;

    .line 161
    return-void
.end method
