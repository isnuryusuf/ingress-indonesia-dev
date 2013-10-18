.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private end:F

.field private start:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    .line 30
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reset()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    .line 57
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 49
    return-void
.end method

.method protected update(F)V
    .locals 4
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->end:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->start:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 34
    return-void
.end method
