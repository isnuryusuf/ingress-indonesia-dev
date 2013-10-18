.class public Lcom/badlogic/gdx/assets/loaders/TextureLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/badlogic/gdx/graphics/TextureData;

.field texture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    check-cast p2, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    if-eqz p3, :cond_0

    if-eqz p3, :cond_4

    iget-object v0, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    if-nez v0, :cond_4

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 58
    if-eqz p3, :cond_1

    .line 59
    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 60
    iget-boolean v0, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 61
    iget-object v2, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v2, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 64
    :cond_1
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 65
    const-string/jumbo v2, ".etc1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 66
    const-string/jumbo v2, ".cim"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    .line 68
    :goto_0
    new-instance v4, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    iput-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 77
    :goto_1
    return-void

    .line 67
    :cond_2
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    goto :goto_0

    .line 70
    :cond_3
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    goto :goto_1

    .line 73
    :cond_4
    iget-object v0, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 75
    :cond_5
    iget-object v0, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_1
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 87
    :goto_0
    if-eqz p3, :cond_0

    .line 88
    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 89
    iget-object v1, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 91
    :cond_0
    return-object v0

    .line 85
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    goto :goto_0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method
