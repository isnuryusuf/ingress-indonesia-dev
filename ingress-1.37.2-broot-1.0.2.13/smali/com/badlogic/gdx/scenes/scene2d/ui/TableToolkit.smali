.class Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;
.super Lcom/a/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Table;",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;",
        ">;"
    }
.end annotation


# static fields
.field static drawDebug:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/a/a/d;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 37
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setWidget"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error calling setWidget."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_1
    move-exception v0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public bridge synthetic addChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->addChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public bridge synthetic addDebugRectangle(Lcom/a/a/a;Lcom/a/a/b;FFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->addDebugRectangle(Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;Lcom/a/a/b;FFFF)V

    return-void
.end method

.method public addDebugRectangle(Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;Lcom/a/a/b;FFFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->drawDebug:Z

    .line 94
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    .line 95
    :cond_0
    iget-object v6, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->getTable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    sub-float v3, v1, p4

    move-object v1, p2

    move v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit$DebugRect;-><init>(Lcom/a/a/b;FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public bridge synthetic clearDebugRectangles(Lcom/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->clearDebugRectangles(Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;)V

    return-void
.end method

.method public clearDebugRectangles(Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TableLayout;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 90
    :cond_0
    return-void
.end method

.method public getHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeight(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 76
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMaxHeight(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getMaxHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 71
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMaxWidth(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getMaxWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 56
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getMinHeight(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getMinHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 51
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getMinWidth(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getMinWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 66
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getPrefHeight(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getPrefHeight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 61
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getPrefWidth(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getPrefWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->getWidth(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public removeChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 48
    return-void
.end method

.method public bridge synthetic removeChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TableToolkit;->removeChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method
