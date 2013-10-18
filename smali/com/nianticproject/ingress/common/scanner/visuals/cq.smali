.class public final Lcom/nianticproject/ingress/common/scanner/visuals/cq;
.super Lcom/nianticproject/ingress/common/scanner/visuals/y;
.source "SourceFile"


# instance fields
.field protected final d:Lcom/nianticproject/ingress/common/scanner/ej;

.field private final e:Lcom/badlogic/gdx/math/Matrix4;

.field private final f:Lcom/nianticproject/ingress/common/gameentity/e;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/y;-><init>()V

    .line 24
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->e:Lcom/badlogic/gdx/math/Matrix4;

    .line 29
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ej;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->d:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 32
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->g(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->f:Lcom/nianticproject/ingress/common/gameentity/e;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x4000

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    .line 37
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->f:Lcom/nianticproject/ingress/common/gameentity/e;

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 41
    :cond_0
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->c:F

    sub-float/2addr v1, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x42f0

    mul-float/2addr v1, v2

    .line 43
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->c()F

    move-result v2

    .line 44
    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->c:F

    const v4, 0x40c90fdb

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v6

    .line 46
    iget-boolean v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->a:Z

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->d()F

    move-result v4

    mul-float/2addr v3, v4

    .line 48
    mul-float/2addr v0, v3

    .line 51
    :cond_1
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v5, v4, v5, v1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v5, v0, v5}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->f:Lcom/nianticproject/ingress/common/gameentity/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, p2}, Lcom/nianticproject/ingress/common/gameentity/e;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;)V

    .line 57
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->d:Lcom/nianticproject/ingress/common/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->f:Lcom/nianticproject/ingress/common/gameentity/e;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    goto :goto_0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/y;->dispose()V

    .line 63
    return-void
.end method
