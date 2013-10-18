.class public abstract Lcom/nianticproject/ingress/common/j/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/math/Vector3;

.field private final b:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/f;->a:Lcom/badlogic/gdx/math/Vector3;

    .line 17
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/f;->b:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract a(II)V
.end method

.method public abstract b()F
.end method

.method public abstract c()F
.end method

.method public abstract d()Lcom/badlogic/gdx/math/Matrix4;
.end method

.method public abstract e()Lcom/badlogic/gdx/math/Matrix4;
.end method

.method public abstract f()Lcom/badlogic/gdx/math/Frustum;
.end method

.method public abstract g()F
.end method

.method public abstract h()Lcom/badlogic/gdx/math/Vector3;
.end method

.method public final i()Lcom/badlogic/gdx/math/Vector3;
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/f;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->h()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/f;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    const v1, 0x38d1b717

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/f;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v3, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/f;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/f;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->i()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/f;->h()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public abstract k()Lcom/badlogic/gdx/math/Vector3;
.end method
