.class Lcom/nianticproject/ingress/common/scanner/visuals/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/m;


# instance fields
.field private a:Z

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-boolean p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->a:Z

    .line 175
    return-void
.end method


# virtual methods
.method public a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->a(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->b(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F

    move-result v1

    div-float/2addr v0, v1

    .line 184
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->c(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F

    move-result v1

    const/high16 v2, -0x4100

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->c(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 186
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->d(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F

    move-result v1

    .line 191
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    const-string/jumbo v3, "u_modelViewProject"

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->e(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 192
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->a:Z

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    const-string/jumbo v3, "u_color"

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->f(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v2

    const-string/jumbo v3, "u_rampTargetInvWidth"

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->c(Lcom/nianticproject/ingress/common/scanner/visuals/a/a;)F

    move-result v4

    div-float v4, v5, v4

    invoke-static {v0}, La;->au(F)F

    move-result v0

    invoke-static {v4}, La;->at(F)F

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 196
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v2, "u_contributionsAndAlpha"

    sub-float v3, v5, v1

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/d;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->f()F

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    .line 199
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/af;->i()V

    .line 200
    return-void
.end method
