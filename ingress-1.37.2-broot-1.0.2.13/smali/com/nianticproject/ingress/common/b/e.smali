.class final Lcom/nianticproject/ingress/common/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/b/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/common/b/k",
        "<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/badlogic/gdx/graphics/TextureData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field final synthetic e:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field final synthetic f:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field final synthetic g:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/nianticproject/ingress/common/b/e;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/b/e;->c:Z

    iput-object p2, p0, Lcom/nianticproject/ingress/common/b/e;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/b/e;->e:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/b/e;->f:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object p5, p0, Lcom/nianticproject/ingress/common/b/e;->g:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/e;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/b/e;->c:Z

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/b/c;->b(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/b/e;->a:Lcom/badlogic/gdx/graphics/TextureData;

    .line 490
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/e;->a:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/graphics/TextureData;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/e;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/b/e;->e:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/b/e;->f:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/b/e;->g:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-object v0
.end method
