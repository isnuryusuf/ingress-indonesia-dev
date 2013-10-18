.class public final Lcom/nianticproject/ingress/common/scanner/gd;
.super Lcom/nianticproject/ingress/common/j/at;
.source "SourceFile"


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/at;-><init>()V

    .line 18
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gd;->b:Lcom/badlogic/gdx/graphics/Texture;

    .line 19
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gd;->h:Lcom/nianticproject/ingress/common/j/ai;

    .line 20
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/gd;->i:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ae;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nianticproject/ingress/common/j/ae;->b:Lcom/nianticproject/ingress/common/j/ae;

    return-object v0
.end method

.method protected final d()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aA:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gd;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected final j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ag;->a()V

    .line 38
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/at;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/gd;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v2, "u_texture"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 40
    const/4 v0, 0x1

    .line 42
    :cond_0
    return v0
.end method
