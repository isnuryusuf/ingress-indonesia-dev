.class Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    if-eqz p4, :cond_0

    .line 77
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    sub-float/2addr v2, p3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getTitleBarHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, p3, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->translate(FF)V

    goto :goto_0
.end method
