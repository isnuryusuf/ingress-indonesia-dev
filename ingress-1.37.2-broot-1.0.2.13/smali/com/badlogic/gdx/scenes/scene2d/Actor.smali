.class public Lcom/badlogic/gdx/scenes/scene2d/Actor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final actions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private height:F

.field private final listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field private originX:F

.field private originY:F

.field private parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field private visible:Z

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 44
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    .line 49
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 61
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .parameter

    .prologue
    .line 80
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v2, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 82
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 85
    add-int/lit8 v2, v2, -0x1

    .line 86
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    .line 80
    :goto_1
    add-int/lit8 v2, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_0
    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    .line 213
    :cond_0
    return v1
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearActions()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 239
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 242
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method public fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 101
    :cond_0
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 104
    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 105
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    .line 106
    :goto_0
    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_1
    :try_start_0
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_3

    .line 114
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 115
    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 116
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 136
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Lcom/badlogic/gdx/utils/Array;)V

    move v0, v1

    :goto_2
    return v0

    .line 113
    :cond_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    .line 120
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 121
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 136
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Lcom/badlogic/gdx/utils/Array;)V

    move v0, v1

    goto :goto_2

    .line 124
    :cond_4
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 125
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getBubbles()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 136
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Lcom/badlogic/gdx/utils/Array;)V

    move v0, v1

    goto :goto_2

    .line 126
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 136
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Lcom/badlogic/gdx/utils/Array;)V

    move v0, v1

    goto :goto_2

    .line 129
    :cond_6
    :try_start_4
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_3
    if-ge v2, v3, :cond_8

    .line 130
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 131
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    .line 136
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Lcom/badlogic/gdx/utils/Array;)V

    move v0, v1

    goto :goto_2

    .line 129
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 134
    :cond_8
    :try_start_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    .line 136
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Lcom/badlogic/gdx/utils/Array;)V

    move v0, v1

    goto :goto_2

    .line 136
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 137
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Lcom/badlogic/gdx/utils/Array;)V

    throw v1
.end method

.method public getActions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getCaptureListeners()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    return v0
.end method

.method public getListeners()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    return v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public getTop()F
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    return v0
.end method

.method public getZIndex()I
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 502
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 503
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    goto :goto_0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_0

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public isAncestor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2
    .parameter

    .prologue
    .line 268
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    .line 270
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_2
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDescendant(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2
    .parameter

    .prologue
    .line 257
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p0

    .line 260
    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_2
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    return v0
.end method

.method public localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 516
    .line 517
    :goto_0
    if-eqz p0, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Only unrotated and unscaled actors may use this method."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 521
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 522
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p0

    goto :goto_0

    .line 524
    :cond_2
    return-void
.end method

.method public notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The event target cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-object v6, v0

    .line 150
    :goto_0
    iget v0, v6, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v0

    .line 172
    :goto_1
    return v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-object v6, v0

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 153
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setCapture(Z)V

    .line 154
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 156
    :cond_3
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    .line 157
    const/4 v0, 0x0

    iget v8, v6, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    move v7, v0

    :goto_2
    if-ge v7, v8, :cond_5

    .line 158
    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 159
    invoke-interface {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->handle()V

    .line 161
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    if-eqz v0, :cond_4

    move-object v2, p1

    .line 162
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 163
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    if-ne v0, v3, :cond_4

    .line 164
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V

    .line 157
    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 170
    :cond_5
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    .line 172
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v0

    goto :goto_1
.end method

.method public parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 11
    .parameter

    .prologue
    const v7, 0x3c8efa35

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 528
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getRotation()F

    move-result v0

    .line 529
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v1

    .line 530
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v2

    .line 531
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v4

    .line 534
    cmpl-float v5, v0, v9

    if-nez v5, :cond_2

    .line 535
    cmpl-float v0, v1, v10

    if-nez v0, :cond_0

    cmpl-float v0, v2, v10

    if-nez v0, :cond_0

    .line 536
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 537
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 602
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getOriginX()F

    move-result v0

    .line 540
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getOriginY()F

    move-result v5

    .line 541
    cmpl-float v6, v0, v9

    if-nez v6, :cond_1

    cmpl-float v6, v5, v9

    if-nez v6, :cond_1

    .line 542
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 543
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 545
    :cond_1
    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v3, v6, v3

    sub-float/2addr v3, v0

    div-float v1, v3, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 546
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v4

    sub-float/2addr v0, v5

    div-float/2addr v0, v2

    add-float/2addr v0, v5

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 550
    :cond_2
    mul-float v5, v0, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 551
    mul-float/2addr v0, v7

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 553
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getOriginX()F

    move-result v6

    .line 554
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getOriginY()F

    move-result v7

    .line 556
    cmpl-float v8, v1, v10

    if-nez v8, :cond_4

    cmpl-float v8, v2, v10

    if-nez v8, :cond_4

    .line 557
    cmpl-float v1, v6, v9

    if-nez v1, :cond_3

    cmpl-float v1, v7, v9

    if-nez v1, :cond_3

    .line 558
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v3

    .line 559
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v4

    .line 561
    mul-float v3, v1, v5

    mul-float v4, v2, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 562
    neg-float v0, v0

    mul-float/2addr v0, v1

    mul-float v1, v2, v5

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 564
    :cond_3
    add-float v1, v3, v6

    .line 565
    add-float v2, v4, v7

    .line 566
    neg-float v3, v6

    .line 567
    neg-float v4, v7

    .line 569
    mul-float v6, v5, v3

    mul-float v7, v0, v4

    sub-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 570
    mul-float/2addr v3, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 572
    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, v3, v1

    .line 573
    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v2, v3, v2

    .line 575
    mul-float v3, v1, v5

    mul-float v4, v2, v0

    add-float/2addr v3, v4

    iput v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 576
    neg-float v0, v0

    mul-float/2addr v0, v1

    mul-float v1, v2, v5

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0

    .line 579
    :cond_4
    cmpl-float v8, v6, v9

    if-nez v8, :cond_5

    cmpl-float v8, v7, v9

    if-nez v8, :cond_5

    .line 580
    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v3, v6, v3

    .line 581
    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v6, v4

    .line 583
    mul-float v6, v3, v5

    mul-float v7, v4, v0

    add-float/2addr v6, v7

    div-float v1, v6, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 584
    neg-float v0, v0

    mul-float/2addr v0, v3

    mul-float v1, v4, v5

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0

    .line 586
    :cond_5
    add-float/2addr v3, v6

    .line 587
    add-float/2addr v4, v7

    .line 588
    neg-float v6, v6

    mul-float/2addr v6, v1

    .line 589
    neg-float v7, v7

    mul-float/2addr v7, v2

    .line 591
    mul-float v8, v5, v6

    mul-float v9, v0, v7

    sub-float/2addr v8, v9

    add-float/2addr v3, v8

    .line 592
    mul-float/2addr v6, v0

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 594
    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v3, v6, v3

    .line 595
    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v6, v4

    .line 597
    mul-float v6, v3, v5

    mul-float v7, v4, v0

    add-float/2addr v6, v7

    div-float v1, v6, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 598
    neg-float v0, v0

    mul-float/2addr v0, v3

    mul-float v1, v4, v5

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0
.end method

.method public remove()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 231
    :cond_0
    return-void
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    .line 457
    return-void
.end method

.method public scale(F)V
    .locals 1
    .parameter

    .prologue
    .line 436
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleX(F)V

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleY(F)V

    .line 438
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 442
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleX(F)V

    .line 443
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleY(F)V

    .line 444
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    .line 379
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    .line 380
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    .line 381
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    .line 382
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)V

    .line 465
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 461
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 346
    return-void
.end method

.method public setOrigin(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOriginX(F)V

    .line 403
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOriginY(F)V

    .line 404
    return-void
.end method

.method public setOriginX(F)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 390
    return-void
.end method

.method public setOriginY(F)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 398
    return-void
.end method

.method protected setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 285
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    .line 324
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    .line 325
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 452
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleX(F)V

    .line 425
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleY(F)V

    .line 426
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleX(F)V

    .line 431
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setScaleY(F)V

    .line 432
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 412
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 420
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    .line 362
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 253
    return-void
.end method

.method public setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 294
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    .line 303
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 338
    return-void
.end method

.method public setX(F)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 311
    return-void
.end method

.method public setY(F)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 319
    return-void
.end method

.method public setZIndex(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 486
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZIndex cannot be < 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 488
    if-nez v0, :cond_2

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    .line 490
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v1, v2, :cond_1

    .line 491
    invoke-virtual {v0, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v1, :cond_3

    .line 493
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 495
    :cond_3
    invoke-virtual {v0, p1, p0}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public size(F)V
    .locals 1
    .parameter

    .prologue
    .line 366
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    .line 368
    return-void
.end method

.method public size(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    .line 373
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    .line 374
    return-void
.end method

.method public stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 510
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public toBack()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)V

    .line 480
    return-void
.end method

.method public toFront()V
    .locals 1

    .prologue
    .line 474
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)V

    .line 475
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 605
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 606
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 607
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    .line 330
    return-void
.end method
