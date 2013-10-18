.class final Lcom/nianticproject/ingress/common/scanner/visuals/b/n;
.super Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/u;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    .line 69
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->f()V

    .line 70
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0
    .parameter

    .prologue
    .line 103
    return p1
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-static {p1}, Lcom/nianticproject/ingress/common/w/ao;->a(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    iget v1, v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;->d:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;->e:F

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/w/y;->a(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 77
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/b/d;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    const/high16 v0, 0x3f80

    iput v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->a:F

    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    iget v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;->b:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    iget v1, v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;->c:F

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/w/y;->a(FF)F

    move-result v0

    iput v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->b:F

    .line 83
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->c:F

    .line 84
    return-void
.end method

.method public final g()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aQ:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/n;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    iget v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;->a:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method
