.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"


# instance fields
.field draggingPointer:I

.field private max:F

.field private min:F

.field private sliderPos:F

.field private steps:F

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

.field private value:F

.field private vertical:Z


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "default-"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string/jumbo v0, "vertical"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 49
    return-void

    .line 48
    :cond_0
    const-string/jumbo v0, "horizontal"

    goto :goto_0
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 64
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "min must be > max: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "steps must be > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    .line 68
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    .line 69
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    .line 70
    iput-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    .line 71
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 72
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setWidth(F)V

    .line 73
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setHeight(F)V

    .line 75
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 93
    return-void
.end method


# virtual methods
.method calculatePositionAndValue(FF)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 142
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 144
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getHeight()F

    move-result v2

    .line 146
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float v3, p2, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 147
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 148
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v2, v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 149
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v0, v2, v0

    div-float v0, v5, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 159
    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)V

    .line 160
    cmpl-float v0, v0, v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 161
    :cond_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getWidth()F

    move-result v2

    .line 152
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float v3, p1, v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 153
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 154
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v2, v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 155
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    sub-float v0, v2, v0

    div-float v0, v5, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getX()F

    move-result v8

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getY()F

    move-result v3

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getWidth()F

    move-result v10

    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->getHeight()F

    move-result v5

    .line 118
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, p2

    invoke-virtual {p1, v2, v4, v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 120
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    if-eqz v1, :cond_0

    .line 121
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v2, v4

    div-float/2addr v1, v2

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    sub-float v2, v5, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 122
    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 123
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v1, v5, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 125
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v1, v10, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float v2, v8, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 126
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    sub-float v0, v10, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v2, v8, v0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    add-float/2addr v3, v0

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, v12

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    sub-float/2addr v2, v4

    div-float/2addr v1, v2

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    sub-float v2, v10, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 129
    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 130
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v1, v10, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    .line 132
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v1, v5, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float v9, v3, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v11

    move-object v6, v0

    move-object v7, p1

    invoke-interface/range {v6 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->sliderPos:F

    add-float v2, v8, v0

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v0, v5, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, v12

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_0
.end method

.method public getMaxValue()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    if-eqz v0, :cond_0

    .line 201
    const/high16 v0, 0x430c

    .line 203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->vertical:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x430c

    goto :goto_0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    return v0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRange(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "min must be < max"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    .line 188
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    .line 189
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)V

    .line 190
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    .line 98
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->invalidateHierarchy()V

    .line 99
    return-void
.end method

.method public setValue(F)V
    .locals 3
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value must be >= min and <= max: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->steps:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->min:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->max:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 176
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 177
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_2
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 179
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->value:F

    .line 181
    :cond_3
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method
