.class final Lcom/nianticproject/ingress/common/j/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/d;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/j/v;

.field private final b:Lcom/nianticproject/ingress/common/j/u;

.field private final c:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field private final d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/v;Lcom/nianticproject/ingress/common/j/u;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/x;->a:Lcom/nianticproject/ingress/common/j/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v2, p0, Lcom/nianticproject/ingress/common/j/x;->e:I

    .line 97
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/x;->b:Lcom/nianticproject/ingress/common/j/u;

    .line 99
    invoke-static {p1}, Lcom/nianticproject/ingress/common/j/v;->a(Lcom/nianticproject/ingress/common/j/v;)Lcom/nianticproject/ingress/common/w/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->c:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->c:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/x;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 103
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/nianticproject/ingress/common/j/x;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/x;->e:I

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/x;->f()V

    .line 124
    :cond_0
    return-void
.end method

.method final e()V
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/nianticproject/ingress/common/j/x;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/x;->e:I

    .line 107
    return-void
.end method

.method final f()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->a:Lcom/nianticproject/ingress/common/j/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/v;->a(Lcom/nianticproject/ingress/common/j/v;)Lcom/nianticproject/ingress/common/w/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/x;->c:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/ab;->b(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->a:Lcom/nianticproject/ingress/common/j/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/v;->b(Lcom/nianticproject/ingress/common/j/v;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/x;->b:Lcom/nianticproject/ingress/common/j/u;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method final g()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->c:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->b:Lcom/nianticproject/ingress/common/j/u;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/u;->b()V

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/x;->c:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 135
    return-void
.end method
