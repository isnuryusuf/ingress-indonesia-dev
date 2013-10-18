.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field private firstScissors:Lcom/badlogic/gdx/math/Rectangle;

.field private firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

.field handleBounds:Lcom/badlogic/gdx/math/Rectangle;

.field handlePosition:Lcom/badlogic/gdx/math/Vector2;

.field lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field maxAmount:F

.field minAmount:F

.field private oldSplitAmount:F

.field private secondScissors:Lcom/badlogic/gdx/math/Rectangle;

.field private secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

.field splitAmount:F

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

.field vertical:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "default-"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string/jumbo v0, "vertical"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 59
    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, "horizontal"

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    invoke-virtual {p4, p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;ZLcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 43
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstScissors:Lcom/badlogic/gdx/math/Rectangle;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondScissors:Lcom/badlogic/gdx/math/Rectangle;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 71
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 72
    iput-boolean p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    .line 73
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setFirstWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setSecondWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 76
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setWidth(F)V

    .line 77
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->setHeight(F)V

    .line 78
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->initialize()V

    .line 79
    return-void
.end method

.method private calculateHorizBoundsAndPositions()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 202
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getHeight()F

    move-result v1

    .line 204
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getWidth()F

    move-result v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float/2addr v2, v3

    .line 205
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    .line 206
    sub-float/2addr v2, v3

    .line 207
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 209
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v4, v6, v6, v3, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 210
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    add-float v5, v3, v0

    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 211
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, v3, v6, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 212
    return-void
.end method

.method private calculateVertBoundsAndPositions()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 217
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getWidth()F

    move-result v1

    .line 218
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getHeight()F

    move-result v2

    .line 220
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    sub-float v3, v2, v3

    .line 221
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    .line 222
    sub-float/2addr v3, v4

    .line 223
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    .line 225
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float/2addr v2, v4

    invoke-virtual {v5, v6, v2, v1, v4}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 226
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, v6, v6, v1, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 227
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, v6, v3, v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 228
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 131
    return-void
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .parameter

    .prologue
    .line 299
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
    .line 303
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
    .line 307
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->validate()V

    .line 234
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 237
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 238
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v3, v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 241
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {v3, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 244
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()V

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v3, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v3, v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 249
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondScissors:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {v2, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 251
    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 252
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()V

    .line 255
    :cond_3
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 256
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 258
    return-void
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    move v1, v0

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    :goto_1
    add-float/2addr v0, v1

    .line 183
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 184
    :cond_0
    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto :goto_1
.end method

.method public getPrefWidth()F
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v0

    move v1, v0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v0

    :goto_1
    add-float/2addr v0, v1

    .line 175
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    add-float/2addr v0, v1

    .line 176
    :cond_0
    return v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    goto :goto_1
.end method

.method public getSplit()F
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    return-object v0
.end method

.method public layout()V
    .locals 5

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v0, :cond_6

    .line 147
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->calculateHorizBoundsAndPositions()V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 156
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidate()V

    .line 157
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidgetBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 165
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidate()V

    .line 166
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 169
    :cond_5
    return-void

    .line 149
    :cond_6
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->calculateVertBoundsAndPositions()V

    goto/16 :goto_0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2
    .parameter

    .prologue
    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use ScrollPane#setWidget(null)."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFirstWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->firstWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 286
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 288
    return-void
.end method

.method public setMaxSplitAmount(F)V
    .locals 2
    .parameter

    .prologue
    .line 277
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "maxAmount has to be >= 0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "maxAmount has to be > minAmount"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    .line 280
    return-void
.end method

.method public setMinSplitAmount(F)V
    .locals 2
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "minAmount has to be >= 0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "minAmount has to be < maxAmount"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    .line 274
    return-void
.end method

.method public setSecondWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->secondWidget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 294
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 296
    return-void
.end method

.method public setSplitAmount(F)V
    .locals 2
    .parameter

    .prologue
    .line 262
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 263
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    .line 264
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    .line 135
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidateHierarchy()V

    .line 136
    return-void
.end method

.method public setVertical(Z)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    .line 197
    return-void
.end method
