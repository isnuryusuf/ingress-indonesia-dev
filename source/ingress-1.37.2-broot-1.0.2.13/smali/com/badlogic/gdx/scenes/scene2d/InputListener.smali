.class public Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    return-void
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 24
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    if-nez v0, :cond_0

    move v0, v6

    .line 60
    :goto_0
    return v0

    :cond_0
    move-object v1, p1

    .line 25
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 27
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 38
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 39
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 41
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type:[I

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    move v0, v6

    .line 60
    goto :goto_0

    .line 29
    :pswitch_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result v0

    goto :goto_0

    .line 31
    :pswitch_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result v0

    goto :goto_0

    .line 33
    :pswitch_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getCharacter()C

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z

    move-result v0

    goto :goto_0

    .line 35
    :pswitch_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getScrollAmount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result v0

    goto :goto_0

    .line 43
    :pswitch_4
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result v0

    goto :goto_0

    .line 45
    :pswitch_5
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    move v0, v7

    .line 46
    goto :goto_0

    .line 48
    :pswitch_6
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    move v0, v7

    .line 49
    goto/16 :goto_0

    .line 51
    :pswitch_7
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z

    move v0, v6

    .line 52
    goto/16 :goto_0

    .line 54
    :pswitch_8
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move v0, v6

    .line 55
    goto/16 :goto_0

    .line 57
    :pswitch_9
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move v0, v6

    .line 58
    goto/16 :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 41
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
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
    .line 75
    return-void
.end method
