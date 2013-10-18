.class Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;
.super Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;
.source "SourceFile"


# instance fields
.field private final initialPointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final initialPointer2:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer2:Lcom/badlogic/gdx/math/Vector2;

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-direct {p0}, Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public fling(FFII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public longPress(FF)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->longPress(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result v0

    return v0
.end method

.method public pan(FFFF)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->pinch(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public tap(FFIII)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tap(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFIII)V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public zoom(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {v0, v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->zoom(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method
