.class public abstract Lcom/nianticproject/ingress/common/j/ab;
.super Lcom/nianticproject/ingress/common/j/at;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/at;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ab;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Data-based shaders can only be set once."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 10
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/ab;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 11
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ab;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method
