.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;


# instance fields
.field private fillParent:Z

.field private layoutEnabled:Z

.field private needsLayout:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 39
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 37
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 39
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    .line 46
    return-void
.end method

.method private setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v2

    .line 72
    const/4 v0, 0x0

    iget v3, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 73
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 74
    instance-of v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v4, :cond_1

    .line 75
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->setLayoutEnabled(Z)V

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_1
    instance-of v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_0

    .line 77
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method protected childrenChanged()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    .line 126
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 150
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 151
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
    .line 53
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 116
    return-void
.end method

.method public invalidateHierarchy()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    .line 122
    :cond_0
    return-void
.end method

.method public layout()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public needsLayout()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    return v0
.end method

.method public pack()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    .line 130
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v1

    .line 131
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getWidth()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getHeight()F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setWidth(F)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setHeight(F)V

    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 135
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 137
    :cond_1
    return-void
.end method

.method public setFillParent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->fillParent:Z

    .line 141
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    .line 66
    invoke-direct {p0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    .line 68
    :cond_0
    return-void
.end method

.method public validate()V
    .locals 3

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 84
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->fillParent:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 89
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    .line 90
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    .line 96
    :cond_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setWidth(F)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setHeight(F)V

    .line 98
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 102
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layout()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v1

    .line 93
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getHeight()F

    move-result v0

    goto :goto_1
.end method
