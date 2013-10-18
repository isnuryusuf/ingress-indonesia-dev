.class final Lcom/nianticproject/ingress/common/ui/s;
.super Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/r;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/s;->a:Lcom/nianticproject/ingress/common/ui/r;

    const/16 v0, 0x7d0

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "SpriteBatch.flush"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 125
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 126
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 127
    return-void
.end method

.method protected final renderMesh()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->g()Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 117
    const-string/jumbo v0, "SpriteBatch.renderMesh"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->renderMesh()V

    .line 119
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 120
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->g()Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 121
    return-void
.end method

.method protected final uploadVertexData()Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->f()Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 108
    const-string/jumbo v0, "SpriteBatch.uploadVertexData"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 109
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->uploadVertexData()Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 111
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->f()Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 112
    return-object v0
.end method
