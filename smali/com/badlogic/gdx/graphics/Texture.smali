.class public Lcom/badlogic/gdx/graphics/Texture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field private static final buffer:Ljava/nio/IntBuffer;

.field private static enforcePotImages:Z

.field static final managedTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;>;"
        }
    .end annotation
.end field

.field private static useHWMipMap:Z


# instance fields
.field data:Lcom/badlogic/gdx/graphics/TextureData;

.field glHandle:I

.field magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    sput-boolean v1, Lcom/badlogic/gdx/graphics/Texture;->enforcePotImages:Z

    .line 70
    sput-boolean v1, Lcom/badlogic/gdx/graphics/Texture;->useHWMipMap:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    .line 108
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 111
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 112
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 113
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 130
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".etc1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->create(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->create(Lcom/badlogic/gdx/graphics/TextureData;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 111
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 112
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 113
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 154
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;->create(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 119
    return-void
.end method

.method private static addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 340
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 341
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public static clearAllTextures(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method private create(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 159
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 160
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Texture;->addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static createGLHandle()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 167
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    const-string/jumbo v0, "Managed textures/app: { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 423
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    :cond_0
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumManagedTextures()I
    .locals 2

    .prologue
    .line 434
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static invalidateAllTextures(Lcom/badlogic/gdx/Application;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 353
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 354
    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-nez v1, :cond_2

    .line 357
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 358
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 359
    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    .line 357
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 365
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoading()V

    .line 369
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 371
    sget-object v5, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 372
    if-nez v5, :cond_3

    .line 373
    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    goto :goto_2

    .line 379
    :cond_3
    sget-object v6, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/assets/AssetManager;->getReferenceCount(Ljava/lang/String;)I

    move-result v6

    .line 380
    sget-object v7, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v7, v5, v2}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    .line 381
    iput v2, v1, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 385
    new-instance v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v7}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 386
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    .line 387
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 388
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 389
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 390
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 391
    iget-object v8, v1, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v8}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result v8

    iput-boolean v8, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 392
    iput-object v1, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 393
    new-instance v8, Lcom/badlogic/gdx/graphics/Texture$1;

    invoke-direct {v8, v6}, Lcom/badlogic/gdx/graphics/Texture$1;-><init>(I)V

    iput-object v8, v7, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    .line 401
    sget-object v6, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v6

    iput v6, v1, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 403
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v6, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, v5, v6, v7}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    goto :goto_2

    .line 406
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private reload()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "Tried to reload unmanaged Texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 230
    return-void
.end method

.method public static setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    sput-object p0, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 417
    return-void
.end method

.method public static setEnforcePotImages(Z)V
    .locals 0
    .parameter

    .prologue
    .line 336
    sput-boolean p0, Lcom/badlogic/gdx/graphics/Texture;->enforcePotImages:Z

    .line 337
    return-void
.end method

.method private uploadImageData(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0xde1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 195
    sget-boolean v0, Lcom/badlogic/gdx/graphics/Texture;->enforcePotImages:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Texture width and height must be powers of two: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 203
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 204
    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v9

    .line 205
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 206
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 207
    invoke-static {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    move v10, v8

    move-object p1, v0

    .line 212
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v11, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 213
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xcf5

    invoke-interface {v0, v1, v8}, Lcom/badlogic/gdx/graphics/GLCommon;->glPixelStorei(II)V

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1, v10}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V

    .line 223
    :cond_2
    :goto_1
    return-void

    .line 217
    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v1, v11

    move v6, v2

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 219
    if-eqz v10, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_1

    :cond_4
    move v10, v2

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    .line 235
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xde1

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 236
    return-void
.end method

.method public bind(I)V
    .locals 3
    .parameter

    .prologue
    .line 242
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const v1, 0x84c0

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glActiveTexture(I)V

    .line 243
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xde1

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 244
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-virtual {v0, v3, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 327
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    :cond_1
    iput v3, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xde1

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "can\'t draw to a managed texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 256
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 258
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getTextureData()Lcom/badlogic/gdx/graphics/TextureData;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    return-object v0
.end method

.method public getTextureObjectHandle()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    return v0
.end method

.method public getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xde1

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "New data must have the same managed status as the old data"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 175
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 177
    :cond_1
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v0, v1, :cond_3

    .line 178
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->uploadImageData(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 180
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 185
    :cond_3
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Compressed:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v0, v1, :cond_4

    .line 186
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 187
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCompressedData()V

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 191
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 192
    return-void
.end method

.method public setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xde1

    .line 312
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 313
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 314
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 315
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2801

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 316
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2800

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 317
    return-void
.end method

.method public setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xde1

    .line 304
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 305
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 306
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 307
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2802

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 308
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2803

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 309
    return-void
.end method
