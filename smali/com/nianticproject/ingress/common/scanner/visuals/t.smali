.class public final Lcom/nianticproject/ingress/common/scanner/visuals/t;
.super Lcom/nianticproject/ingress/common/scanner/visuals/b/l;
.source "SourceFile"


# instance fields
.field private c:Lcom/nianticproject/ingress/common/scanner/ej;

.field private d:Lcom/nianticproject/ingress/common/scanner/ej;

.field private e:F

.field private f:F

.field private g:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;)V

    .line 17
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->e:F

    .line 18
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->f:F

    .line 20
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->g:Lcom/badlogic/gdx/math/Vector2;

    .line 29
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->c:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 30
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->d:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/high16 v0, 0x41c0

    .line 52
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->e:F

    .line 53
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->f:F

    .line 54
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->d:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 46
    return-void
.end method

.method public final a(F)Z
    .locals 4
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->c:Lcom/nianticproject/ingress/common/scanner/ej;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->g:Lcom/badlogic/gdx/math/Vector2;

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->e:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->d:Lcom/nianticproject/ingress/common/scanner/ej;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->g:Lcom/badlogic/gdx/math/Vector2;

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->f:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 62
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->a(F)Z

    move-result v0

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->c:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/t;->d:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    goto :goto_1
.end method
