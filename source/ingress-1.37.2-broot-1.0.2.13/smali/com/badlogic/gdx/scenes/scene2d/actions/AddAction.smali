.class public Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field private action:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public getAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method public getTargetActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 36
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 37
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 38
    return-void
.end method

.method public setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 32
    return-void
.end method

.method public setTargetActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 24
    return-void
.end method
