.class public abstract Lcom/nianticproject/ingress/common/j/al;
.super Lcom/nianticproject/ingress/common/j/ad;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ad;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/al;->d()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/al;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 20
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/al;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v1, :cond_0

    .line 28
    :goto_0
    return v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/al;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 24
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/al;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/al;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/al;->k()V

    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/al;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 36
    return-void
.end method

.method protected abstract d()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/al;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/al;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 15
    return-void
.end method

.method protected abstract j()Z
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
