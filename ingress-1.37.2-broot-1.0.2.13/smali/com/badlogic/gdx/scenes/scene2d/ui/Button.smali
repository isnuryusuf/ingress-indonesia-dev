.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field isChecked:Z

.field isDisabled:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 68
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 69
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setWidth(F)V

    .line 70
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setHeight(F)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 74
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setWidth(F)V

    .line 77
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setHeight(F)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 47
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 48
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setWidth(F)V

    .line 50
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setHeight(F)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 55
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->initialize()V

    .line 56
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 57
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setWidth(F)V

    .line 58
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setHeight(F)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v0, p1, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 102
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 82
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->validate()V

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    .line 193
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    move v7, v1

    move v8, v2

    .line 207
    :goto_1
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 209
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 210
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    move v1, v6

    .line 214
    :goto_2
    iget v0, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_6

    .line 215
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->translate(FF)V

    .line 214
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    .line 195
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 203
    :goto_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    .line 204
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    move v7, v1

    move v8, v2

    goto :goto_1

    .line 197
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_3

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_3

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_3

    .line 216
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 217
    :goto_4
    iget v0, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v0, :cond_7

    .line 218
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    neg-float v1, v8

    neg-float v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->translate(FF)V

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 219
    :cond_7
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    return-void
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefHeight()F

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 240
    :cond_2
    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPrefWidth()F

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 231
    :cond_2
    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    return v0
.end method

.method public isOver()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isPressed()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->canCheck(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :cond_2
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    if-nez v0, :cond_0

    .line 113
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    .line 115
    :cond_3
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDisabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    .line 144
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 6
    .parameter

    .prologue
    .line 147
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 150
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 151
    if-nez v0, :cond_1

    .line 152
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 153
    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 155
    :cond_1
    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    .line 158
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    .line 159
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    .line 160
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    .line 163
    instance-of v5, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v5, :cond_3

    .line 164
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    .line 165
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->getPadding()Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->topPadding:F

    .line 168
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->leftPadding:F

    .line 169
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->bottomPadding:F

    .line 170
    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->rightPadding:F

    .line 173
    :goto_0
    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->invalidateHierarchy()V

    .line 176
    return-void

    :cond_3
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
