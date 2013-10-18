.class public Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.source "SourceFile"


# instance fields
.field private amountHeight:F

.field private amountWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountHeight()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountHeight:F

    return v0
.end method

.method public getAmountWidth()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountWidth:F

    return v0
.end method

.method public setAmount(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountWidth:F

    .line 29
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountHeight:F

    .line 30
    return-void
.end method

.method public setAmountHeight(F)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountHeight:F

    .line 46
    return-void
.end method

.method public setAmountWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountWidth:F

    .line 38
    return-void
.end method

.method protected updateRelative(F)V
    .locals 3
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountWidth:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->amountHeight:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->size(FF)V

    .line 25
    return-void
.end method
