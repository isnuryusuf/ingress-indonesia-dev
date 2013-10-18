.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field amountX:F

.field amountY:F

.field areaHeight:F

.field areaWidth:F

.field private clamp:Z

.field private disableX:Z

.field private disableY:Z

.field fadeAlpha:F

.field fadeAlphaSeconds:F

.field fadeDelay:F

.field fadeDelaySeconds:F

.field private fadeScrollBars:Z

.field private flickScroll:Z

.field flingTime:F

.field flingTimer:F

.field private forceOverscrollX:Z

.field private forceOverscrollY:Z

.field private gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

.field final hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field maxX:F

.field maxY:F

.field private overscroll:Z

.field private overscrollDistance:F

.field private overscrollSpeedMax:F

.field private overscrollSpeedMin:F

.field private final scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

.field scrollX:Z

.field scrollY:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

.field touchScrollH:Z

.field touchScrollV:Z

.field final vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field velocityX:F

.field velocityY:F

.field private widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4316

    const/high16 v2, 0x3f80

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 64
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    .line 65
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    .line 67
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    .line 70
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscroll:Z

    .line 71
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    .line 72
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    .line 75
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    .line 94
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 96
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 97
    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 100
    :cond_1
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setWidth(F)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setHeight(F)V

    .line 103
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 171
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 203
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 90
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->act(F)V

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    .line 258
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-nez v1, :cond_0

    .line 259
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    .line 260
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 263
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 266
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    div-float/2addr v1, v2

    .line 267
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    mul-float/2addr v3, v1

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 268
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    sub-float v1, v2, v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 269
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp()V

    .line 272
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 273
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 274
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 275
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 277
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 278
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_5

    .line 279
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 280
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 284
    :cond_5
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscroll:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    .line 286
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 287
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 295
    :cond_6
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_9

    .line 296
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 297
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 298
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 306
    :cond_7
    :goto_1
    return-void

    .line 289
    :cond_8
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 291
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    sub-float/2addr v3, v4

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 293
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    goto :goto_0

    .line 299
    :cond_9
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 300
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 301
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    sub-float/2addr v3, v4

    neg-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 303
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    goto :goto_1
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter

    .prologue
    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 525
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method clamp()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscroll:Z

    if-eqz v0, :cond_1

    .line 233
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 234
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    goto :goto_0

    .line 236
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 237
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->validate()V

    .line 432
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 434
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentX()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 435
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentY()F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 440
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-nez v1, :cond_b

    .line 441
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 444
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 445
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 446
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    if-eqz v0, :cond_4

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    neg-float v1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    neg-float v1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 452
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 458
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0, v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 461
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 462
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 464
    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 469
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()V

    .line 473
    :cond_6
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 474
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_8

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_7

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 477
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_8

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 480
    :cond_8
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_a

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_9

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 483
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_a

    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 487
    :cond_a
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_0

    .line 443
    :cond_b
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto/16 :goto_1
.end method

.method public getMaxX()F
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    .line 497
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4316

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4316

    goto :goto_0
.end method

.method public getScrollPercentX()F
    .locals 3

    .prologue
    .line 558
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollPercentY()F
    .locals 3

    .prologue
    .line 566
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollX()F
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    return v0
.end method

.method public getScrollY()F
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    return-object v0
.end method

.method public getVelocityX()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 631
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 634
    :goto_0
    return v0

    .line 632
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    div-float/2addr v0, v1

    .line 633
    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    .line 634
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getVelocityY()F
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 535
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlinging()Z
    .locals 2

    .prologue
    .line 622
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanning()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    return v0
.end method

.method public layout()V
    .locals 15

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 310
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 311
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v13, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 314
    if-eqz v0, :cond_19

    .line 315
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    .line 316
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    .line 317
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v1

    .line 318
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    move v5, v4

    move v4, v3

    move v3, v1

    move v1, v0

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v10

    .line 322
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v11

    .line 325
    sub-float v0, v10, v5

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 326
    sub-float v0, v11, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_1
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_11

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 334
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v6

    .line 335
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    .line 342
    :goto_2
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceOverscrollX:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_12

    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    if-nez v7, :cond_12

    :cond_2
    move v7, v9

    :goto_3
    iput-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    .line 343
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceOverscrollY:Z

    if-nez v7, :cond_3

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_13

    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    if-nez v7, :cond_13

    :cond_3
    move v7, v9

    :goto_4
    iput-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    .line 345
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-eqz v7, :cond_4

    move v8, v9

    .line 346
    :cond_4
    if-nez v8, :cond_8

    .line 347
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v14

    sub-float/2addr v7, v14

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    .line 348
    :cond_5
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v14

    sub-float/2addr v7, v14

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 350
    :cond_6
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v7, :cond_7

    if-eqz v13, :cond_7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_7

    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    if-nez v7, :cond_7

    .line 351
    iput-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    .line 352
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v14

    sub-float/2addr v7, v14

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    .line 354
    :cond_7
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v7, :cond_8

    if-eqz v12, :cond_8

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_8

    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    if-nez v7, :cond_8

    .line 355
    iput-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    .line 356
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 361
    :cond_8
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    invoke-virtual {v7, v5, v1, v9, v14}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 363
    if-eqz v8, :cond_14

    .line 365
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v7, :cond_9

    if-eqz v12, :cond_9

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    .line 366
    :cond_9
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v7, :cond_a

    if-eqz v13, :cond_a

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 373
    :cond_a
    :goto_5
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    if-eqz v7, :cond_15

    move v6, v10

    .line 374
    :goto_6
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    if-eqz v7, :cond_16

    move v0, v11

    .line 375
    :goto_7
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v7

    cmpl-float v7, v7, v6

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v7

    cmpl-float v7, v7, v0

    if-eqz v7, :cond_c

    .line 376
    :cond_b
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    .line 377
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    .line 380
    :cond_c
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    .line 381
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    .line 383
    if-eqz v8, :cond_e

    .line 384
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_d

    if-eqz v12, :cond_d

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    .line 385
    :cond_d
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_e

    if-eqz v13, :cond_e

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    .line 387
    :cond_e
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {v0, v2, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {v0, v2, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 391
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_f

    .line 392
    if-eqz v12, :cond_17

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 394
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentX()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 403
    :cond_f
    :goto_8
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_10

    .line 404
    if-eqz v13, :cond_18

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v1, v10, v4

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v2, v11, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    sub-float/2addr v2, v3

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v13}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f80

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentY()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 418
    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 420
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidate()V

    .line 421
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    goto/16 :goto_1

    .line 337
    :cond_11
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto/16 :goto_2

    :cond_12
    move v7, v8

    .line 342
    goto/16 :goto_3

    :cond_13
    move v7, v8

    .line 343
    goto/16 :goto_4

    .line 369
    :cond_14
    iget-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v7, :cond_a

    if-eqz v12, :cond_a

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v14

    add-float/2addr v9, v14

    iput v9, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto/16 :goto_5

    .line 373
    :cond_15
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto/16 :goto_6

    .line 374
    :cond_16
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_7

    .line 399
    :cond_17
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    goto/16 :goto_8

    .line 413
    :cond_18
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 414
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    goto :goto_9

    :cond_19
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    goto/16 :goto_0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 531
    :goto_0
    return v0

    .line 530
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 531
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetFade()V
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 217
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    .line 218
    return-void
.end method

.method public scrollTo(FFFF)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 587
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 588
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 591
    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {v0, v3, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 593
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getMaxY()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    add-float/2addr v0, v1

    sub-float/2addr v0, p2

    .line 594
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 595
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 598
    :cond_1
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {v0, v3, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 599
    return-void

    .line 589
    :cond_2
    add-float v0, p1, p3

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 590
    add-float v0, p1, p3

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    goto :goto_0

    .line 596
    :cond_3
    sub-float v1, v0, p4

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 597
    sub-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    goto :goto_1
.end method

.method public setClamp(Z)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    .line 675
    return-void
.end method

.method public setFadeScrollBars(Z)V
    .locals 1
    .parameter

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-ne v0, p1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 679
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    .line 680
    if-nez p1, :cond_1

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    goto :goto_0
.end method

.method public setFlickScroll(Z)V
    .locals 1
    .parameter

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-ne v0, p1, :cond_0

    .line 583
    :goto_0
    return-void

    .line 575
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    .line 576
    if-eqz p1, :cond_1

    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 582
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    goto :goto_0

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->gestureListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 580
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    goto :goto_1
.end method

.method public setFlingTime(F)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    .line 670
    return-void
.end method

.method public setForceOverscroll(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceOverscrollX:Z

    .line 664
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceOverscrollY:Z

    .line 665
    return-void
.end method

.method public setOverscroll(Z)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscroll:Z

    .line 650
    return-void
.end method

.method public setScrollPercentX(F)V
    .locals 3
    .parameter

    .prologue
    .line 562
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 563
    return-void
.end method

.method public setScrollPercentY(F)V
    .locals 3
    .parameter

    .prologue
    .line 570
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 571
    return-void
.end method

.method public setScrollX(F)V
    .locals 2
    .parameter

    .prologue
    .line 540
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 541
    return-void
.end method

.method public setScrollY(F)V
    .locals 2
    .parameter

    .prologue
    .line 549
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 550
    return-void
.end method

.method public setScrollingDisabled(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    .line 614
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    .line 615
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 244
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidateHierarchy()V

    .line 245
    return-void
.end method

.method public setVelocityX(F)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 627
    return-void
.end method

.method public setVelocityY(F)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 639
    return-void
.end method

.method public setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 512
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 513
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 514
    :cond_1
    return-void
.end method

.method public setupFadeScrollBars(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 685
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    .line 686
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    .line 687
    return-void
.end method

.method public setupOverscroll(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    .line 656
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    .line 657
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    .line 658
    return-void
.end method
