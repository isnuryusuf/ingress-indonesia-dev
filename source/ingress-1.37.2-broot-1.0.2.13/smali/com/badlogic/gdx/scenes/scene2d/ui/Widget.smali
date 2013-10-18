.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;


# instance fields
.field private fillParent:Z

.field private layoutEnabled:Z

.field private needsLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 38
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    .line 129
    return-void
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 102
    return-void
.end method

.method public invalidateHierarchy()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 107
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public layout()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public needsLayout()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    return v0
.end method

.method public pack()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v1

    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getWidth()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getHeight()F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setWidth(F)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setHeight(F)V

    .line 117
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 118
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    .line 120
    :cond_1
    return-void
.end method

.method public setFillParent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    .line 124
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    .line 67
    :cond_0
    return-void
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 73
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 77
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    .line 78
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    .line 83
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    .line 84
    :cond_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setWidth(F)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setHeight(F)V

    .line 86
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 90
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 92
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layout()V

    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v1

    .line 81
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getHeight()F

    move-result v0

    goto :goto_1
.end method
