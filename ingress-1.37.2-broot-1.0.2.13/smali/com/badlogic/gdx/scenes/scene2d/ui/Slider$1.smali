.class Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)V

    .line 91
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    if-eq p4, v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->draggingPointer:I

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->calculatePositionAndValue(FF)V

    goto :goto_0
.end method
