.class public Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private final groupList:Lcom/badlogic/gdx/utils/SortedIntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private final groupPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final usedGroups:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;>;"
        }
    .end annotation
.end field

.field private vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    const/16 v0, 0x3e8

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/decals/DefaultGroupStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DefaultGroupStrategy;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;-><init>(ILcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x10

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SortedIntList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    .line 74
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->initialize(I)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->setGroupStrategy(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const/16 v0, 0x3e8

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;-><init>(ILcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V

    .line 71
    return-void
.end method

.method private render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/utils/Array;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .line 154
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    :cond_0
    if-lez v1, :cond_1

    .line 156
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    move v1, v3

    .line 159
    :cond_1
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->set()V

    .line 160
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 162
    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->update()V

    .line 163
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    array-length v7, v7

    invoke-static {v5, v3, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    array-length v0, v0

    add-int/2addr v0, v1

    .line 166
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    move v0, v3

    :cond_3
    move v1, v0

    .line 168
    goto :goto_0

    .line 172
    :cond_4
    if-lez v1, :cond_5

    .line 173
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 175
    :cond_5
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->decideGroup(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I

    move-result v1

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SortedIntList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 119
    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 121
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 122
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/utils/SortedIntList;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method protected clear()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList;->clear()V

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Lcom/badlogic/gdx/utils/Array;)V

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->usedGroups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 194
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->clear()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    .line 202
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->render()V

    .line 131
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->clear()V

    .line 132
    return-void
.end method

.method protected flush(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    invoke-virtual {v0, v1, v2, p2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)V

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    div-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    div-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, v3, v2, v1}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public initialize(I)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v2, 0x0

    .line 88
    mul-int/lit8 v0, p1, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->vertices:[F

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    mul-int/lit8 v3, p1, 0x4

    mul-int/lit8 v4, p1, 0x6

    new-array v5, v11, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v7, "a_position"

    invoke-direct {v6, v2, v11, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v2

    const/4 v6, 0x1

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v8, 0x5

    const/4 v9, 0x4

    const-string/jumbo v10, "a_color"

    invoke-direct {v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v5, v6

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v7, "a_texCoord0"

    invoke-direct {v6, v11, v12, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 94
    mul-int/lit8 v0, p1, 0x6

    new-array v1, v0, [S

    move v0, v2

    .line 96
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 97
    int-to-short v3, v0

    aput-short v3, v1, v2

    .line 98
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x2

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 99
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v0, 0x1

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 100
    add-int/lit8 v3, v2, 0x3

    add-int/lit8 v4, v0, 0x1

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 101
    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v0, 0x2

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 102
    add-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, v0, 0x3

    int-to-short v4, v4

    aput-short v4, v1, v3

    .line 96
    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    .line 105
    return-void
.end method

.method protected render()V
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->beforeGroups()V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupList:Lcom/badlogic/gdx/utils/SortedIntList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SortedIntList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;

    .line 138
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v4, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    iget-object v1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    invoke-interface {v3, v4, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->beforeGroup(ILcom/badlogic/gdx/utils/Array;)V

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v3, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->getGroupShader(I)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v3

    .line 140
    iget-object v1, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->value:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/utils/Array;)V

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    iget v0, v0, Lcom/badlogic/gdx/utils/SortedIntList$Node;->index:I

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->afterGroup(I)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;->afterGroups()V

    .line 144
    return-void
.end method

.method public setGroupStrategy(Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalBatch;->groupStrategy:Lcom/badlogic/gdx/graphics/g3d/decals/GroupStrategy;

    .line 82
    return-void
.end method
