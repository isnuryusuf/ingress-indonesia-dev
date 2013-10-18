.class final Lcom/nianticproject/ingress/common/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/badlogic/gdx/graphics/TextureData;

.field final synthetic b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field final synthetic c:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field final synthetic d:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field final synthetic e:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field final synthetic f:Lcom/nianticproject/ingress/common/b/o;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/nianticproject/ingress/common/b/d;->a:Lcom/badlogic/gdx/graphics/TextureData;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/b/d;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/b/d;->c:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/b/d;->d:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object p5, p0, Lcom/nianticproject/ingress/common/b/d;->e:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object p6, p0, Lcom/nianticproject/ingress/common/b/d;->f:Lcom/nianticproject/ingress/common/b/o;

    iput-object p7, p0, Lcom/nianticproject/ingress/common/b/d;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/d;->a:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/graphics/TextureData;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/d;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/b/d;->c:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 415
    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/d;->d:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/b/d;->e:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 416
    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/d;->f:Lcom/nianticproject/ingress/common/b/o;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/b/o;->a(Ljava/lang/Object;)V

    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/d;->g:Ljava/lang/String;

    return-object v0
.end method
