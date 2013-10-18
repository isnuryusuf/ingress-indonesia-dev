.class public final Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/elements/u;

.field private final b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 110
    const-string/jumbo v0, "null ProgressBarStyle"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    .line 111
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/ui/elements/u;-><init>(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a:Lcom/nianticproject/ingress/common/ui/elements/u;

    .line 112
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->d:F

    .line 113
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->c:F

    .line 114
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->d:F

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->d:F

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)F
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->c:F

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->c:F

    return p1
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/u;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a:Lcom/nianticproject/ingress/common/ui/elements/u;

    return-object v0
.end method

.method public final act(F)V
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a:Lcom/nianticproject/ingress/common/ui/elements/u;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/elements/u;->a(F)V

    .line 152
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p2

    cmpl-float v0, v0, v7

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->barPadding:F

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 133
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->barPadding:F

    mul-float/2addr v2, v6

    sub-float v5, v1, v2

    .line 135
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->d:F

    mul-float v4, v0, v1

    .line 136
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->c:F

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->d:F

    sub-float/2addr v1, v2

    mul-float v6, v0, v1

    .line 138
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->barPadding:F

    add-float v2, v0, v1

    .line 139
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->barPadding:F

    add-float v3, v0, v1

    .line 140
    cmpl-float v0, v4, v7

    if-lez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->lowWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 143
    :cond_3
    cmpl-float v0, v6, v7

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->b:Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar$Style;->highWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    add-float/2addr v2, v4

    move-object v1, p1

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_0
.end method
