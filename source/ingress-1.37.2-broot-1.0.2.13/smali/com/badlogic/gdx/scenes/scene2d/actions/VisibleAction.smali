.class public Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field private visible:Z


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
    .line 27
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->visible:Z

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->visible:Z

    return v0
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->visible:Z

    .line 37
    return-void
.end method
