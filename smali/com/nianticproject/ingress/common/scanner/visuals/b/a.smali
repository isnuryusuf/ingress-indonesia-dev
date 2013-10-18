.class abstract Lcom/nianticproject/ingress/common/scanner/visuals/b/a;
.super Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/a;->f()V

    .line 9
    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 5
    .parameter

    .prologue
    const-wide/high16 v3, 0x3fe0

    .line 13
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/a;->d()F

    move-result v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sub-double/2addr v1, v3

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 14
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/a;->e()F

    move-result v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 15
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/a;->d()F

    move-result v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sub-double/2addr v1, v3

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 16
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/b/d;)V
    .locals 4
    .parameter

    .prologue
    .line 20
    const v0, 0x3e4ccccd

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/w/y;->a(FF)F

    move-result v0

    iput v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->a:F

    .line 21
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/a;->a()F

    move-result v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/a;->b()F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/w/y;->a(FF)F

    move-result v0

    iput v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->b:F

    .line 22
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/a;->c()F

    move-result v0

    float-to-double v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->a:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->c:F

    .line 23
    return-void
.end method

.method public abstract b()F
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method
