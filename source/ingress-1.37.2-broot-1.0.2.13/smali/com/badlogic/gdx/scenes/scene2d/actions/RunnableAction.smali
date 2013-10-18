.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field private ran:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 29
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->run()V

    .line 31
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    .line 33
    :cond_0
    return v1
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->ran:Z

    .line 43
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 39
    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->runnable:Ljava/lang/Runnable;

    .line 56
    return-void
.end method
