.class public Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "SourceFile"


# instance fields
.field private button:I

.field private character:C

.field private keyCode:I

.field private pointer:I

.field private relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private scrollAmount:I

.field private stageX:F

.field private stageY:F

.field private type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method public getButton()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    return v0
.end method

.method public getCharacter()C
    .locals 1

    .prologue
    .line 92
    iget-char v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    return v0
.end method

.method public getPointer()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    return v0
.end method

.method public getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getScrollAmount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmount:I

    return v0
.end method

.method public getStageX()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    return v0
.end method

.method public getStageY()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->reset()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 32
    return-void
.end method

.method public setButton(I)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->button:I

    .line 79
    return-void
.end method

.method public setCharacter(C)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-char p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->character:C

    .line 97
    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->keyCode:I

    .line 88
    return-void
.end method

.method public setPointer(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->pointer:I

    .line 69
    return-void
.end method

.method public setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->relatedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 116
    return-void
.end method

.method public setScrollAmount(I)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->scrollAmount:I

    .line 106
    return-void
.end method

.method public setStageX(F)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageX:F

    .line 41
    return-void
.end method

.method public setStageY(F)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stageY:F

    .line 50
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->type:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
