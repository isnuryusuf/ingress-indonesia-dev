.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field private draggingPointer:I

.field private handlePosition:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->draggingPointer:I

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x3f666666

    const v6, 0x3dcccccd

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->draggingPointer:I

    if-eq v3, v0, :cond_0

    move v1, v2

    .line 139
    :goto_0
    return v1

    .line 109
    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    move v1, v2

    goto :goto_0

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 111
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 115
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 116
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 120
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->draggingPointer:I

    goto :goto_0

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_4

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollX(F)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 126
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 127
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 128
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 129
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v2, p2, p3}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    .line 133
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->draggingPointer:I

    goto/16 :goto_0

    .line 136
    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v5, p3, v5

    if-gez v5, :cond_7

    move v0, v1

    :cond_7
    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 139
    goto/16 :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->draggingPointer:I

    if-eq p4, v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p2, v0

    .line 153
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    add-float/2addr v0, v1

    .line 154
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollPercentX(F)V

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, p3, v0

    .line 161
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    add-float/2addr v0, v1

    .line 162
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->handlePosition:F

    .line 163
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollPercentY(F)V

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto/16 :goto_0
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->draggingPointer:I

    if-eq p4, v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->draggingPointer:I

    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    goto :goto_0
.end method
