.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final detector:Lcom/badlogic/gdx/input/GestureDetector;

.field event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

.field touchDownTarget:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->detector:Lcom/badlogic/gdx/input/GestureDetector;

    return-void
.end method


# virtual methods
.method public fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->detector:Lcom/badlogic/gdx/input/GestureDetector;

    return-object v0
.end method

.method public getTouchDownTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->touchDownTarget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 77
    instance-of v1, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return v0

    :cond_0
    move-object v1, p1

    .line 78
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 80
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$2;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 83
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->touchDownTarget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->detector:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(FFII)Z

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 86
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    move v0, v6

    .line 87
    goto :goto_0

    .line 89
    :pswitch_1
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 90
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->detector:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(FFII)Z

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 93
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    move v0, v6

    .line 94
    goto/16 :goto_0

    .line 96
    :pswitch_2
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 97
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->detector:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(FFI)Z

    move v0, v6

    .line 99
    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isPanning()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->detector:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    return v0
.end method

.method public longPress(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    return-void
.end method

.method public pinch(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public tap(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public zoom(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    return-void
.end method
