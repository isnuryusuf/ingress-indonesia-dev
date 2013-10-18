.class final Lcom/nianticproject/ingress/common/scanner/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/m;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/fm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/fm;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v3, 0x3e80

    .line 375
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fk;->a(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v0

    const v1, 0x3d4ccccd

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    .line 376
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/fk;->a(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 380
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/fk;->a(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/fm;->a(Lcom/nianticproject/ingress/common/scanner/fm;)F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f80

    rem-float/2addr v0, v2

    .line 381
    const v2, -0x41e66666

    const v3, 0x3faccccd

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 383
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    const-string/jumbo v3, "u_alpha"

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/fm;->b(Lcom/nianticproject/ingress/common/scanner/fm;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 384
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    const-string/jumbo v3, "u_rampTarget"

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 385
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v2, "u_rotation"

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/fk;->a(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/fm;->a(Lcom/nianticproject/ingress/common/scanner/fm;)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->c(F)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 387
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/fm;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 390
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fk;->b(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/fk;->c(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/fk;->d(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 392
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/fk;->d(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fn;->a:Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/fm;->g:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/fk;->b(Lcom/nianticproject/ingress/common/scanner/fk;)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 393
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    const-string/jumbo v2, "u_fightBoundary"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 396
    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->i()V

    .line 397
    return-void
.end method
