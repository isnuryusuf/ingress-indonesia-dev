.class public abstract Lcom/nianticproject/ingress/common/scanner/visuals/f;
.super Lcom/nianticproject/ingress/common/j/al;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/al;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ae;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/nianticproject/ingress/common/j/ae;->f:Lcom/nianticproject/ingress/common/j/ae;

    return-object v0
.end method

.method protected j()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 54
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x302

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    .line 55
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    .line 56
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 57
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/e;->e()Lcom/nianticproject/ingress/common/j/an;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/f;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/an;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 58
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/e;->f()Lcom/nianticproject/ingress/common/j/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/am;->a()V

    .line 59
    return v2
.end method

.method protected final k()V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    .line 65
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDepthMask(Z)V

    .line 66
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 68
    return-void
.end method
