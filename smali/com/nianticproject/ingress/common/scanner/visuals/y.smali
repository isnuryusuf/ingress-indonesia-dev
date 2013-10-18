.class public abstract Lcom/nianticproject/ingress/common/scanner/visuals/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/aj;
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field protected a:Z

.field protected b:F

.field protected c:F

.field private final d:Lcom/nianticproject/ingress/common/j/aj;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->d:Lcom/nianticproject/ingress/common/j/aj;

    .line 41
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->f:F

    .line 42
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->f:F

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->e:F

    const/high16 v0, 0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->c:F

    .line 43
    return-void
.end method

.method private e()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 117
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->a:Z

    if-eqz v0, :cond_0

    .line 118
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->b:F

    div-float/2addr v0, v2

    .line 120
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->c:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->d:Lcom/nianticproject/ingress/common/j/aj;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/y;->c()F

    move-result v0

    .line 74
    sub-float v1, v0, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 75
    div-float v0, v5, v0

    .line 76
    new-instance v1, Lcom/badlogic/gdx/math/collision/Ray;

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/collision/Ray;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 77
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    invoke-virtual {v2, v0, v0, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/collision/Ray;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/Ray;

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->d:Lcom/nianticproject/ingress/common/j/aj;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/j/aj;->a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->d:Lcom/nianticproject/ingress/common/j/aj;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/j/aj;->a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/j/ak;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->d:Lcom/nianticproject/ingress/common/j/aj;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/y;->c()F

    move-result v0

    .line 92
    const/high16 v1, 0x3f80

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 93
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    .line 94
    invoke-virtual {v1, v0, v0, v0}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->d:Lcom/nianticproject/ingress/common/j/aj;

    invoke-interface {v0, p1, v1, p3}, Lcom/nianticproject/ingress/common/j/aj;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->d:Lcom/nianticproject/ingress/common/j/aj;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/aj;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->b:F

    .line 62
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->c:F

    .line 63
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->a:Z

    .line 56
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->b:F

    .line 57
    return-void
.end method

.method protected final c()F
    .locals 3

    .prologue
    .line 106
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->e:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/y;->f:F

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/y;->e()F

    move-result v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected final d()F
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/y;->e()F

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
