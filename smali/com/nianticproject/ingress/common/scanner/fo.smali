.class Lcom/nianticproject/ingress/common/scanner/fo;
.super Lcom/nianticproject/ingress/common/j/at;
.source "SourceFile"


# instance fields
.field public i:Lcom/nianticproject/ingress/shared/ai;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/ai;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    const-string/jumbo v0, "u_texture"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/at;-><init>(Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fo;->i:Lcom/nianticproject/ingress/shared/ai;

    .line 309
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ae;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/nianticproject/ingress/common/j/ae;->c:Lcom/nianticproject/ingress/common/j/ae;

    return-object v0
.end method

.method protected d()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aG:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method protected j()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 324
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 325
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 326
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 327
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->av:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fo;->b:Lcom/badlogic/gdx/graphics/Texture;

    .line 329
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->au:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fo;->h:Lcom/nianticproject/ingress/common/j/ai;

    .line 330
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fo;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    const-string/jumbo v1, "u_teamColor"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fo;->i:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 332
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/at;->j()Z

    move-result v0

    return v0
.end method

.method protected final k()V
    .locals 2

    .prologue
    .line 337
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/at;->k()V

    .line 338
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 339
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 340
    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 341
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 342
    return-void
.end method
