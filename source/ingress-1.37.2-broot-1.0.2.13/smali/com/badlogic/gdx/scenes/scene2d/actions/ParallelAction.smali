.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field actions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field private complete:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 30
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    if-eqz v1, :cond_0

    .line 35
    :goto_0
    return v0

    .line 31
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    .line 32
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 33
    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    .line 34
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    .line 33
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 35
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    goto :goto_0
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 53
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 48
    return-void
.end method

.method public restart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->complete:Z

    .line 40
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 41
    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 42
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 57
    const/4 v0, 0x0

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 58
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 67
    const/4 v0, 0x0

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v3, :cond_1

    .line 68
    if-lez v0, :cond_0

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
