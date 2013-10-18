.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field private removeActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private removed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 28
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    if-nez v0, :cond_0

    .line 29
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removeActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removeActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 32
    :cond_0
    return v1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public getRemoveActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removeActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removeActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 42
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    .line 37
    return-void
.end method

.method public setRemoveActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removeActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 51
    return-void
.end method
