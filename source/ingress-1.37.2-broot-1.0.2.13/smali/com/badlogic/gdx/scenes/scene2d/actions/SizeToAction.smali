.class public Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field private endHeight:F

.field private endWidth:F

.field private startHeight:F

.field private startWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    return v0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startWidth:F

    .line 26
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startHeight:F

    .line 27
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    .line 52
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    .line 35
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    .line 36
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    .line 44
    return-void
.end method

.method protected update(F)V
    .locals 5
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startWidth:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startWidth:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startHeight:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startHeight:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    .line 31
    return-void
.end method
