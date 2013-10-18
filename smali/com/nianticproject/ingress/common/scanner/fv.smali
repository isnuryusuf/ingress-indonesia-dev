.class final Lcom/nianticproject/ingress/common/scanner/fv;
.super Lcom/nianticproject/ingress/common/j/al;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ae;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/nianticproject/ingress/common/j/ae;->f:Lcom/nianticproject/ingress/common/j/ae;

    return-object v0
.end method

.method protected final d()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aF:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method protected final j()Z
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 269
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 270
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 271
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 272
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aZ:Lcom/nianticproject/ingress/common/j/an;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fv;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/an;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method protected final k()V
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aZ:Lcom/nianticproject/ingress/common/j/an;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fv;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/an;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 279
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 280
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 281
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 282
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 283
    return-void
.end method
