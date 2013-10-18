.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# instance fields
.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field private itemHeight:F

.field private items:[Ljava/lang/String;

.field private prefHeight:F

.field private prefWidth:F

.field private selectedIndex:I

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

.field private textOffsetX:F

.field private textOffsetY:F


# direct methods
.method public constructor <init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 57
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setItems([Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setWidth(F)V

    .line 60
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setHeight(F)V

    .line 62
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 69
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 50
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>([Ljava/lang/Object;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    .line 54
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 99
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v9, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 100
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 102
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 103
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 105
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getX()F

    move-result v2

    .line 106
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getY()F

    move-result v11

    .line 108
    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v8, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v3

    .line 110
    const/4 v1, 0x0

    move v6, v1

    move v7, v3

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v1, v1

    if-ge v6, v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v1, v7, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_3

    .line 112
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    if-ne v1, v6, :cond_1

    .line 113
    add-float v1, v11, v7

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v3, v1, v3

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getWidth()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 114
    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v9, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v8, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetX:F

    add-float/2addr v3, v2

    add-float v4, v11, v7

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetY:F

    sub-float/2addr v4, v5

    invoke-virtual {v8, p1, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 117
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    if-ne v1, v6, :cond_2

    .line 118
    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p2

    invoke-virtual {v8, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 122
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    sub-float v3, v7, v1

    .line 110
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v7, v3

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v1, v7, v1

    if-gez v1, :cond_2

    .line 126
    :cond_4
    return-void
.end method

.method public getItems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    return-object v0
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 203
    return-void
.end method

.method public setItems([Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 158
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "items cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    instance-of v1, p1, [Ljava/lang/String;

    if-nez v1, :cond_2

    .line 161
    array-length v1, p1

    new-array v2, v1, [Ljava/lang/String;

    .line 162
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 163
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    .line 168
    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 170
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 171
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 173
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    .line 174
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v4

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    .line 175
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 176
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetX:F

    .line 177
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->textOffsetY:F

    .line 179
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    .line 182
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefWidth:F

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :cond_2
    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    goto :goto_1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->prefHeight:F

    .line 186
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    .line 187
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 3
    .parameter

    .prologue
    .line 134
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 135
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "index must be >= 0 and < "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 137
    return-void
.end method

.method public setSelection(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 148
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 149
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 154
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    return v0

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setItems([Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->invalidateHierarchy()V

    goto :goto_0
.end method

.method touchDown(F)V
    .locals 3
    .parameter

    .prologue
    .line 72
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 73
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v0

    sub-float/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->itemHeight:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 74
    const/4 v0, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->items:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 76
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selectedIndex:I

    .line 78
    :cond_0
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
