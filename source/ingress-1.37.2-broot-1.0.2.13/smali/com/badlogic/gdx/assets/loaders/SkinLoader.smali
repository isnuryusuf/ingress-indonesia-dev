.class public Lcom/badlogic/gdx/assets/loaders/SkinLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        "Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p2, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->pathWithoutExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".atlas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, p2, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p3, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->pathWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".atlas"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 59
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    return-object v1

    .line 57
    :cond_0
    iget-object v0, p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v0

    return-object v0
.end method
