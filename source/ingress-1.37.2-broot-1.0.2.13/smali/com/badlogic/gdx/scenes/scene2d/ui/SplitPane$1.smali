.class Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field draggingPointer:I

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handleBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 92
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    if-eq p4, v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;->handle:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 105
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->vertical:Z

    if-nez v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, p2, v1

    .line 107
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getWidth()F

    move-result v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    sub-float v0, v2, v0

    .line 108
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    .line 109
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 110
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    div-float v0, v1, v0

    iput v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->invalidate()V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p3, v1

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->getHeight()F

    move-result v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v0, v2, v0

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v2

    .line 120
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->handlePosition:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 121
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    const/high16 v3, 0x3f80

    div-float v0, v1, v0

    sub-float v0, v3, v0

    iput v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->minAmount:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->maxAmount:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->splitAmount:F

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    if-ne p4, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$1;->draggingPointer:I

    .line 99
    :cond_0
    return-void
.end method
