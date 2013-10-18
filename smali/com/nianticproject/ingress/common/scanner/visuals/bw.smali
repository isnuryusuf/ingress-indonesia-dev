.class final Lcom/nianticproject/ingress/common/scanner/visuals/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/eo;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

.field private final b:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->b:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Player model should not be culled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 171
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v2, 0x0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v1, v2, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->c()Lcom/google/a/d/u;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/scanner/fp;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->b:Lcom/badlogic/gdx/math/Vector2;

    .line 157
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0
.end method

.method public final c()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bw;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->b(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->D()Lcom/google/a/d/u;

    move-result-object v0

    return-object v0
.end method
