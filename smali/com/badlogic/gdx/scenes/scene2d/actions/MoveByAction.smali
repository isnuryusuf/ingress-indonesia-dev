.class public Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.source "SourceFile"


# instance fields
.field private amountX:F

.field private amountY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountX()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    return v0
.end method

.method public getAmountY()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    return v0
.end method

.method public setAmount(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    .line 29
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    .line 30
    return-void
.end method

.method public setAmountX(F)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    .line 38
    return-void
.end method

.method public setAmountY(F)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    .line 46
    return-void
.end method

.method protected updateRelative(F)V
    .locals 3
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountX:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->amountY:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->translate(FF)V

    .line 25
    return-void
.end method
