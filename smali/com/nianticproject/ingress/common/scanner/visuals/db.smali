.class public final Lcom/nianticproject/ingress/common/scanner/visuals/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field private final a:Lcom/badlogic/gdx/graphics/Color;

.field private final b:Lcom/badlogic/gdx/math/Matrix4;

.field private final c:Lcom/nianticproject/ingress/common/j/ai;

.field private final d:F

.field private final e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->b:Lcom/badlogic/gdx/math/Matrix4;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    .line 32
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->g:F

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->c:Lcom/nianticproject/ingress/common/j/ai;

    .line 37
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->d:F

    .line 38
    const/high16 v0, 0x4110

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->e:F

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4040

    const/high16 v5, 0x3f80

    .line 52
    :try_start_0
    const-string/jumbo v0, "ShrinkingVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->d:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 54
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ai;->k()V

    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 57
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 59
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 61
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->e:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->e:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->e:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 62
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->c:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 63
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->i()V

    .line 65
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->g:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    mul-float/2addr v2, v6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 66
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    mul-float/2addr v1, v6

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->g:F

    .line 68
    :cond_0
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->e:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->g:F

    sub-float v2, v5, v2

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    const/4 v3, 0x0

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 69
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->c:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/j/ai;->b(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 71
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->i()V

    .line 72
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->j()V

    .line 74
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    .line 46
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->f:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/db;->d:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

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
    .line 87
    return-void
.end method
