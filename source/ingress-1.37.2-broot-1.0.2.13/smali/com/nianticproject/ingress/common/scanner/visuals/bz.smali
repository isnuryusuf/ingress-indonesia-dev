.class final Lcom/nianticproject/ingress/common/scanner/visuals/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/m;
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

.field private final b:Lcom/badlogic/gdx/math/Matrix4;

.field private final c:Lcom/badlogic/gdx/math/Matrix4;

.field private final d:Lcom/nianticproject/ingress/common/scanner/eo;

.field private final e:F

.field private f:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/google/a/d/u;F)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->b:Lcom/badlogic/gdx/math/Matrix4;

    .line 596
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->c:Lcom/badlogic/gdx/math/Matrix4;

    .line 600
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->f:F

    .line 603
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-virtual {p2, p3}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->d:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 605
    iput p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->e:F

    .line 606
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    .line 618
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->d:Lcom/nianticproject/ingress/common/scanner/eo;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/scanner/eo;->a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)F

    move-result v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)F

    move-result v2

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 623
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->e:Lcom/nianticproject/ingress/common/j/ad;

    invoke-virtual {p3, v0, p0}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 624
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 3
    .parameter

    .prologue
    .line 628
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ai;->k()V

    .line 629
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->o(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 630
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->p(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->f:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/high16 v2, 0x40a0

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 631
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->o(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 632
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->o(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->j()V

    .line 633
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 610
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->f:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->f:F

    .line 611
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 642
    return-void
.end method
