.class public Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
.source "SourceFile"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 24
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 29
    :goto_0
    return v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    .line 27
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->restart()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->index:I

    .line 35
    return-void
.end method
