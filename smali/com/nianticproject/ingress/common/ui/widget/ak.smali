.class public abstract Lcom/nianticproject/ingress/common/ui/widget/ak;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Lcom/badlogic/gdx/math/Rectangle;

.field private d:Z


# direct methods
.method public constructor <init>(FFLcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/nianticproject/ingress/common/ui/widget/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    .line 32
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->a:F

    .line 33
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->b:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->d:Z

    .line 35
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 37
    if-eqz p3, :cond_0

    .line 38
    invoke-virtual {p0, p3}, Lcom/nianticproject/ingress/common/ui/widget/ak;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/badlogic/gdx/math/Rectangle;)V
.end method

.method public final e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->validate()V

    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 57
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->d:Z

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 70
    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 71
    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 72
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()V

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v4, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 77
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->a()V

    .line 79
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-interface {v0, v5, v5, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    goto :goto_0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->b:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->a:F

    return v0
.end method

.method public layout()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layout()V

    .line 87
    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/b;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 89
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 90
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->getWidth()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->getHeight()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ak;->c:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ak;->a(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 95
    return-void
.end method
