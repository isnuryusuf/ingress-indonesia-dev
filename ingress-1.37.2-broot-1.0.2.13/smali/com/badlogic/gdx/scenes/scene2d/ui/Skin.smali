.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

.field resources:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".atlas"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 95
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 96
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 103
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 104
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

    .line 105
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 81
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".atlas"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 112
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 113
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 119
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 120
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

    .line 121
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 122
    return-void
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 531
    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 532
    aget-object v0, v2, v1

    .line 533
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    :goto_1
    return-object v0

    .line 531
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 144
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resource cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 150
    if-nez v0, :cond_2

    .line 151
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 6
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    .line 136
    const/4 v0, 0x0

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 137
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 138
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    const-class v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v4, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->dispose()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 410
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 411
    instance-of v3, v0, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_0

    .line 413
    :cond_3
    return-void
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 334
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 336
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->findKey(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 158
    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 162
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 174
    :cond_2
    :goto_0
    return-object v0

    .line 166
    :cond_3
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_5
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-ne p2, v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 171
    if-nez v0, :cond_7

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " registered with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_7
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    if-nez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " registered with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAll(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 197
    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 6
    .parameter

    .prologue
    .line 292
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 293
    if-eqz v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v1

    .line 295
    :cond_1
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 296
    if-nez v1, :cond_0

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 301
    instance-of v2, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_8

    .line 302
    move-object v0, v3

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v2, v0

    .line 303
    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    if-eqz v4, :cond_3

    .line 304
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    if-nez v2, :cond_7

    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :goto_2
    if-nez v1, :cond_2

    .line 314
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 315
    if-eqz v1, :cond_5

    .line 316
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    move-object v1, v2

    .line 327
    :cond_2
    :goto_3
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 305
    :cond_3
    :try_start_2
    iget-boolean v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v4, :cond_4

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v5, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v4, v5, :cond_4

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v4, v2, :cond_8

    .line 306
    :cond_4
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 309
    :catch_0
    move-exception v2

    goto :goto_2

    .line 318
    :cond_5
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 319
    if-eqz v1, :cond_6

    .line 320
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    move-object v1, v2

    goto :goto_3

    .line 322
    :cond_6
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No Drawable, NinePatch, TextureRegion, Texture, or Sprite registered with name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_2

    :cond_8
    move-object v2, v1

    goto :goto_1
.end method

.method public getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1
    .parameter

    .prologue
    .line 201
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method protected getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
    .locals 3
    .parameter

    .prologue
    .line 432
    .line 434
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 442
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setTypeName(Ljava/lang/String;)V

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setUsePrototypes(Z)V

    .line 445
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;

    invoke-direct {v2, p0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 476
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;

    invoke-direct {v2, p0, p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 504
    const-class v1, Lcom/badlogic/gdx/graphics/Color;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 517
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 526
    return-object v0
.end method

.method public getPaddingProvider()Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

    return-object v0
.end method

.method public getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 8
    .parameter

    .prologue
    .line 241
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 242
    if-eqz v1, :cond_0

    .line 261
    :goto_0
    return-object v1

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 246
    instance-of v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v3, :cond_1

    .line 247
    move-object v0, v2

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v3, v0

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->splits:[I

    .line 248
    if-eqz v6, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v4, 0x1

    aget v4, v6, v4

    const/4 v5, 0x2

    aget v5, v6, v5

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 250
    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 251
    :cond_2
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setName(Ljava/lang/String;)V

    .line 254
    const/4 v2, 0x0

    .line 255
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

    if-eqz v3, :cond_3

    .line 257
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;->getPadding(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;

    move-result-object v2

    .line 259
    :cond_3
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setPadding(Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;)V

    .line 260
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3
    .parameter

    .prologue
    .line 207
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 208
    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    .line 211
    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No TextureRegion or Texture registered with name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 213
    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v0, v1

    .line 214
    goto :goto_0
.end method

.method public getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 6
    .parameter

    .prologue
    .line 271
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 272
    if-eqz v1, :cond_0

    .line 283
    :goto_0
    return-object v1

    .line 275
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 276
    instance-of v2, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_2

    .line 277
    move-object v0, v3

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-object v2, v0

    .line 278
    iget-boolean v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v4, :cond_1

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v5, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v4, v5, :cond_1

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v5, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v4, v5, :cond_2

    .line 279
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    .line 281
    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 282
    :cond_3
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTiledDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .locals 4
    .parameter

    .prologue
    .line 220
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    .line 221
    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 224
    if-eqz v0, :cond_2

    .line 225
    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    if-nez v2, :cond_0

    .line 226
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Drawable found but is not a TiledDrawable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 233
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public has(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 187
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4
    .parameter

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error reading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 343
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    move-object v0, v1

    .line 345
    :goto_0
    return-object v0

    .line 344
    :cond_0
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V

    move-object v0, v1

    goto :goto_0

    .line 345
    :cond_1
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V

    move-object v0, v1

    goto :goto_0

    .line 346
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to copy, unknown drawable type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newDrawable(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .line 352
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v1, :cond_0

    .line 353
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 354
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 355
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 367
    :goto_0
    return-object v0

    .line 357
    :cond_0
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v1, :cond_1

    .line 358
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V

    .line 359
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->getPatch()Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->setPatch(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    move-object v0, v1

    .line 360
    goto :goto_0

    .line 362
    :cond_1
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v1, :cond_2

    .line 363
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V

    .line 364
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->getSprite()Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 365
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 366
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->setSprite(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    move-object v0, v1

    .line 367
    goto :goto_0

    .line 369
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to copy, unknown drawable type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 178
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 181
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getStyle"

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 379
    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 387
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->find(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_0

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-disabled"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setStyle"

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_0

    .line 395
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    goto :goto_0

    .line 389
    :cond_2
    const-string/jumbo v0, "-disabled"

    goto :goto_1

    .line 384
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setPaddingProvider(Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->paddingProvider:Lcom/badlogic/gdx/scenes/scene2d/ui/Padding$PaddingProvider;

    .line 429
    return-void
.end method
