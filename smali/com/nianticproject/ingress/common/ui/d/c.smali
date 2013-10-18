.class public Lcom/nianticproject/ingress/common/ui/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/d/b;


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/ui/d/b;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    .line 21
    return-void
.end method

.method public final a(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fling(FFII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/d/b;->fling(FFII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longPress(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->longPress(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pan(FFFF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/d/b;->pan(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/d/b;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tap(FFIII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/d/b;->tap(FFIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/d/b;->touchDown(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoom(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/c;->a:Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->zoom(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
