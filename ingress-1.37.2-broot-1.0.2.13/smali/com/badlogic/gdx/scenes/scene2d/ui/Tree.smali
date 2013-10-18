.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field iconSpacing:F

.field indentSpacing:F

.field private prefHeight:F

.field private prefWidth:F

.field rootNodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation
.end field

.field selectedNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

.field ySpacing:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 24
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    .line 26
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacing:F

    .line 38
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->initialize()V

    .line 40
    return-void
.end method

.method private draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/utils/Array;F)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 137
    const/4 v0, 0x0

    iget v11, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v10, v0

    :goto_0
    if-ge v10, v11, :cond_4

    .line 138
    invoke-virtual {p2, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 139
    iget-object v7, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectedNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    .line 142
    instance-of v0, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;

    if-eqz v0, :cond_2

    move-object v0, v7

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v5

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 146
    :cond_0
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_1

    .line 148
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_3

    move-object v0, v8

    .line 149
    :goto_2
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v3, v1, v2

    .line 150
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v1, p1

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 151
    iget-boolean v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v1, p3

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/utils/Array;F)V

    .line 137
    :cond_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    goto :goto_1

    :cond_3
    move-object v0, v9

    .line 148
    goto :goto_2

    .line 153
    :cond_4
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 48
    return-void
.end method

.method private layout(Lcom/badlogic/gdx/utils/Array;F)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 102
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 104
    const/4 v0, 0x0

    iget v9, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_3

    .line 105
    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 106
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 107
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v2, :cond_1

    move-object v2, v3

    .line 108
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacing:F

    add-float/2addr v5, p2

    .line 109
    instance-of v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;

    if-eqz v6, :cond_2

    .line 110
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;

    .line 111
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v6

    add-float/2addr v6, v5

    .line 112
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v5

    .line 113
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->pack()V

    move v1, v5

    move v5, v6

    .line 118
    :goto_2
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 119
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 120
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    sub-float v1, v2, v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 121
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 122
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    sub-float/2addr v1, v8

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 123
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;F)V

    .line 104
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 107
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    .line 116
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    goto :goto_2

    .line 125
    :cond_3
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    .line 76
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 129
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacing:F

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/utils/Array;F)V

    .line 132
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 133
    return-void
.end method

.method public getNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    return v0
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectedNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method hit(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    .line 52
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 53
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v4

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_4

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v4

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p3, v4

    if-gtz v4, :cond_4

    .line 54
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectedNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 56
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectedNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 57
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 58
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectedNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 59
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 64
    :cond_3
    return-void

    .line 62
    :cond_4
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->hit(Lcom/badlogic/gdx/utils/Array;FF)V

    .line 51
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public layout()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 94
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 95
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;F)V

    .line 97
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 98
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 84
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public setSelection(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectedNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 163
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 68
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacing:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    .line 69
    return-void
.end method
