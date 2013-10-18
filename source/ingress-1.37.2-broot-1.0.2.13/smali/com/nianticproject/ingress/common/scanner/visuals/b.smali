.class final Lcom/nianticproject/ingress/common/scanner/visuals/b;
.super Lcom/nianticproject/ingress/common/scanner/visuals/f;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final d()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aU:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method protected final j()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/f;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aV:Lcom/badlogic/gdx/graphics/Texture;

    .line 51
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_texture"

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 53
    const/4 v0, 0x1

    .line 55
    :cond_0
    return v0
.end method
