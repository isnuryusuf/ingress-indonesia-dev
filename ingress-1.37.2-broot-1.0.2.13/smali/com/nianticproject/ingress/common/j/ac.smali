.class public final Lcom/nianticproject/ingress/common/j/ac;
.super Lcom/nianticproject/ingress/common/j/f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 21
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/f;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    .line 25
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/ac;->a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 27
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/ac;->b()F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/j/g;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ac;->b:F

    .line 135
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    return v0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iput p1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    .line 45
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ac;->l()V

    .line 46
    return-void
.end method

.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 121
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    cmpl-float v0, p2, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iput p1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->near:F

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iput p2, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->far:F

    .line 124
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ac;->l()V

    .line 125
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    int-to-float v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    .line 57
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    int-to-float v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    .line 58
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ac;->l()V

    .line 59
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->lookAt(FFF)V

    .line 37
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ac;->l()V

    .line 38
    return-void
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v1, v1, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    div-float/2addr v0, v1

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->near:F

    return v0
.end method

.method public final d()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public final e()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public final f()Lcom/badlogic/gdx/math/Frustum;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    return-object v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ac;->b:F

    return v0
.end method

.method public final h()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public final k()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ac;->a:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method
