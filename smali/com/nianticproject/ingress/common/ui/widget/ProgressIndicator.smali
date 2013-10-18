.class public final Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/utils/Scaling;

.field private final b:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

.field private c:D


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 30
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a:Lcom/badlogic/gdx/utils/Scaling;

    .line 39
    const-string/jumbo v0, "null ProgressIndicatorStyle"

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->b:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    .line 42
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->outer:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 44
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 48
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->setVisible(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 50
    return-void
.end method

.method private a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v5, 0x4000

    .line 100
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    .line 101
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    .line 103
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getHeight()F

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/badlogic/gdx/utils/Scaling;->apply(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getWidth()F

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 105
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getHeight()F

    move-result v2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    div-float v3, v2, v5

    .line 107
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getX()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getY()F

    move-result v1

    add-float/2addr v3, v1

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v4, v1, v5

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v5, v1, v5

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p1

    move-object v1, p2

    move v9, v8

    move v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 109
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 56
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->clearActions()V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0
.end method

.method public final act(F)V
    .locals 4
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->c:D

    float-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->c:D

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 70
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x43b4

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v0, p2

    .line 76
    const/high16 v0, 0x3f80

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 80
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->b:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->inner:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->c:D

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->b:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    iget v5, v5, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->innerTime:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    double-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-direct {p0, p1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V

    .line 86
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->b:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->outer:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-wide v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->c:D

    iget-object v5, p0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->b:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    iget v5, v5, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;->outerTime:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    double-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-direct {p0, p1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;F)V

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 91
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 93
    :cond_2
    return-void

    .line 76
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
