.class public Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field private button:I

.field private over:Z

.field private pressed:Z

.field private pressedPointer:I

.field private tapSquareSize:F

.field private touchDownX:F

.field private touchDownY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x4080

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 31
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->tapSquareSize:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownY:F

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->over:Z

    .line 63
    :cond_0
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->over:Z

    .line 67
    :cond_0
    return-void
.end method

.method public getButton()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->button:I

    return v0
.end method

.method public getTapSquareSize()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->tapSquareSize:F

    return v0
.end method

.method public getTouchDownX()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownX:F

    return v0
.end method

.method public getTouchDownY()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownY:F

    return v0
.end method

.method public isOver()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->over:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v3, -0x4080

    .line 71
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendant(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    move v0, v1

    .line 76
    :cond_1
    :goto_0
    return v0

    .line 74
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownX:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->tapSquareSize:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownY:F

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->tapSquareSize:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    return v0
.end method

.method public setButton(I)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->button:I

    .line 110
    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->tapSquareSize:F

    .line 89
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    if-eqz v2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    if-nez p4, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->button:I

    if-ne p5, v2, :cond_0

    .line 39
    :cond_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    .line 40
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressedPointer:I

    .line 41
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownX:F

    .line 42
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownY:F

    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, -0x4080

    .line 47
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressedPointer:I

    if-eq p4, v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    .line 49
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->button:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    .line 50
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    if-nez v0, :cond_0

    .line 52
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownX:F

    .line 53
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->touchDownY:F

    goto :goto_0
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressedPointer:I

    if-ne p4, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/PressedListener;->pressed:Z

    .line 59
    :cond_0
    return-void
.end method
