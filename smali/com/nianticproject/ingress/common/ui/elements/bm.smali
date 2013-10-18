.class final Lcom/nianticproject/ingress/common/ui/elements/bm;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    .line 99
    invoke-static {p1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->empty:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 100
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->b:I

    .line 101
    return-void
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/bm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v8

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 110
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/bm;->getX()F

    move-result v2

    .line 111
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/bm;->getY()F

    move-result v3

    .line 112
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/bm;->getWidth()F

    move-result v4

    .line 113
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/bm;->getHeight()F

    move-result v5

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->barPaddingPx:F

    mul-float/2addr v0, v1

    sub-float v6, v4, v0

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->barPaddingPx:F

    mul-float/2addr v0, v1

    sub-float v7, v5, v0

    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->border:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->b(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0, v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->c(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)F

    move-result v1

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->b:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v1, v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 129
    mul-float v4, v6, v0

    .line 130
    sub-float v0, v1, v0

    mul-float/2addr v6, v0

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->barPaddingPx:F

    add-float/2addr v2, v0

    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->barPaddingPx:F

    add-float/2addr v3, v0

    .line 134
    cmpl-float v0, v4, v8

    if-lez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->lowWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-object v1, p1

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 137
    :cond_3
    cmpl-float v0, v6, v8

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bm;->a:Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;->a(Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar$SegmentedProgressBarStyle;->highWater:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    add-float/2addr v2, v4

    move-object v1, p1

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto/16 :goto_0
.end method
