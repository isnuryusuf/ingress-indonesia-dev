.class final Lcom/nianticproject/ingress/common/scanner/fy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/m;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/fw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/fw;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 7
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fw;->a(Lcom/nianticproject/ingress/common/scanner/fw;)V

    .line 314
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/fw;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 315
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_elapsedTime"

    const v2, 0x3dcccccd

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/fu;->c(Lcom/nianticproject/ingress/common/scanner/fu;)F

    move-result v3

    const/high16 v4, 0x4396

    rem-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 317
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_teamColor"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/fu;->b(Lcom/nianticproject/ingress/common/scanner/fu;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/fu;->b(Lcom/nianticproject/ingress/common/scanner/fu;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/fu;->b(Lcom/nianticproject/ingress/common/scanner/fu;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/scanner/fw;->g:Lcom/nianticproject/ingress/common/scanner/fu;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/fu;->b(Lcom/nianticproject/ingress/common/scanner/fu;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    iget v6, v6, Lcom/nianticproject/ingress/common/scanner/fw;->f:F

    mul-float/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 320
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->i()V

    .line 322
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fy;->a:Lcom/nianticproject/ingress/common/scanner/fw;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fw;->b(Lcom/nianticproject/ingress/common/scanner/fw;)V

    .line 323
    return-void
.end method
