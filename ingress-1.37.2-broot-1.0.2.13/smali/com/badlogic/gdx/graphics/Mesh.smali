.class public Lcom/badlogic/gdx/graphics/Mesh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static forceVBO:Z

.field static final meshes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field autoBind:Z

.field final indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

.field final isVertexArray:Z

.field final vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/Mesh;->forceVBO:Z

    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 136
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObject:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    if-ne p1, v0, :cond_0

    .line 137
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 138
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 139
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 149
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 150
    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectSubData:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    if-ne p1, v0, :cond_1

    .line 141
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;

    invoke-direct {v0, p2, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 142
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 143
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;

    invoke-direct {v0, p3, p5}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 146
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/graphics/glutils/IndexArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 147
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_0
.end method

.method public constructor <init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 112
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/badlogic/gdx/graphics/Mesh;->forceVBO:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 122
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 123
    return-void

    .line 117
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 119
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_0
.end method

.method public varargs constructor <init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 91
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/badlogic/gdx/graphics/Mesh;->forceVBO:Z

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    .line 101
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Mesh;->addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V

    .line 102
    return-void

    .line 96
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;

    invoke-direct {v0, p2, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    .line 97
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    .line 98
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    goto :goto_0
.end method

.method private static addManagedMesh(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Mesh;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 495
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 496
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v1, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    return-void
.end method

.method public static clearAllMeshes(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 516
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    const-string/jumbo v0, "Managed meshes/app: { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

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

    .line 524
    sget-object v3, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 527
    :cond_0
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateAllMeshes(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .parameter

    .prologue
    .line 504
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 505
    if-nez v0, :cond_1

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 507
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    instance-of v1, v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    if-eqz v1, :cond_2

    .line 508
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->invalidate()V

    .line 510
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->invalidate()V

    .line 506
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t use this render method with OpenGL ES 2.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->bind()V

    .line 250
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->bind()V

    .line 251
    :cond_1
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2
    .parameter

    .prologue
    .line 266
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t use this render method with OpenGL ES 1.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->bind()V

    .line 270
    :cond_1
    return-void
.end method

.method public calculateBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    .line 448
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 449
    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v2

    .line 458
    if-nez v2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string/jumbo v1, "No vertices defined"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 461
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 462
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v4

    .line 463
    iget v1, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    .line 464
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v5, v5, 0x4

    .line 467
    iget v4, v4, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    packed-switch v4, :pswitch_data_0

    .line 487
    :cond_1
    return-void

    .line 469
    :goto_0
    :pswitch_0
    if-ge v0, v2, :cond_1

    .line 470
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {p1, v4, v7, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 471
    add-int/2addr v1, v5

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :goto_1
    :pswitch_1
    if-ge v0, v2, :cond_1

    .line 476
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {p1, v4, v6, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 477
    add-int/2addr v1, v5

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    :goto_2
    :pswitch_2
    if-ge v0, v2, :cond_1

    .line 482
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-virtual {p1, v4, v6, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 483
    add-int/2addr v1, v5

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh;->meshes:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->dispose()V

    .line 416
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->dispose()V

    .line 417
    return-void
.end method

.method public getIndices([S)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 201
    array-length v0, p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not enough room in indices array, has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " floats, needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 207
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    return-void
.end method

.method public getIndicesBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIndices()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    return v0
.end method

.method public getMaxVertices()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumMaxVertices()I

    move-result v0

    return v0
.end method

.method public getNumIndices()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getNumVertices()I

    move-result v0

    return v0
.end method

.method public getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v2

    .line 426
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 427
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 429
    :goto_1
    return-object v0

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getVertexSize()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    return v0
.end method

.method public getVertices([F)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 173
    array-length v0, p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not enough room in vertices array, has "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " floats, needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, p1, v4, v2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 179
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    return-void
.end method

.method public getVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public render(I)V
    .locals 2
    .parameter

    .prologue
    .line 294
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(III)V

    .line 295
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    goto :goto_0
.end method

.method public render(III)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x1403

    .line 311
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t use this render method with OpenGL ES 2.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    if-nez p3, :cond_2

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->bind()V

    .line 315
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    if-eqz v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 319
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    .line 320
    invoke-virtual {v0, p2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 321
    add-int v3, p2, p3

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 322
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    invoke-interface {v3, p1, p3, v4, v0}, Lcom/badlogic/gdx/graphics/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 323
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 324
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 334
    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->unbind()V

    goto :goto_0

    .line 326
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL10;->glDrawArrays(III)V

    goto :goto_1

    .line 328
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_6

    .line 329
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    mul-int/lit8 v1, p2, 0x2

    invoke-interface {v0, p1, p3, v4, v1}, Lcom/badlogic/gdx/graphics/GL11;->glDrawElements(IIII)V

    goto :goto_1

    .line 331
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL11;->glDrawArrays(III)V

    goto :goto_1
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 357
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumMaxIndices()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    .line 358
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v0

    goto :goto_0
.end method

.method public render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x1403

    .line 384
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t use this render method with OpenGL ES 1.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    if-nez p4, :cond_2

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 389
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_4

    .line 391
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 393
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    .line 394
    invoke-virtual {v0, p3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 395
    add-int v3, p3, p4

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 396
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, p2, p4, v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 397
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 398
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 409
    :goto_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    .line 400
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    goto :goto_1

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_6

    .line 404
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    mul-int/lit8 v1, p3, 0x2

    invoke-interface {v0, p2, p4, v4, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    goto :goto_1

    .line 406
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    .line 539
    iget v1, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    .line 540
    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 541
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v3

    .line 542
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    .line 544
    mul-int v5, v3, v4

    new-array v5, v5, [F

    .line 545
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)V

    .line 548
    packed-switch v2, :pswitch_data_0

    .line 572
    :cond_0
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 573
    return-void

    .line 550
    :goto_0
    :pswitch_0
    if-ge v0, v3, :cond_0

    .line 551
    aget v2, v5, v1

    mul-float/2addr v2, p1

    aput v2, v5, v1

    .line 552
    add-int/2addr v1, v4

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :goto_1
    :pswitch_1
    if-ge v0, v3, :cond_0

    .line 557
    aget v2, v5, v1

    mul-float/2addr v2, p1

    aput v2, v5, v1

    .line 558
    add-int/lit8 v2, v1, 0x1

    aget v6, v5, v2

    mul-float/2addr v6, p2

    aput v6, v5, v2

    .line 559
    add-int/2addr v1, v4

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    :goto_2
    :pswitch_2
    if-ge v0, v3, :cond_0

    .line 564
    aget v2, v5, v1

    mul-float/2addr v2, p1

    aput v2, v5, v1

    .line 565
    add-int/lit8 v2, v1, 0x1

    aget v6, v5, v2

    mul-float/2addr v6, p2

    aput v6, v5, v2

    .line 566
    add-int/lit8 v2, v1, 0x2

    aget v6, v5, v2

    mul-float/2addr v6, p3

    aput v6, v5, v2

    .line 567
    add-int/2addr v1, v4

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoBind(Z)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/Mesh;->autoBind:Z

    .line 243
    return-void
.end method

.method public setIndices([S)V
    .locals 3
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 187
    return-void
.end method

.method public setIndices([SII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->setIndices([SII)V

    .line 196
    return-void
.end method

.method public setVertices([F)V
    .locals 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 158
    return-void
.end method

.method public setVertices([FII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->setVertices([FII)V

    .line 168
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t use this render method with OpenGL ES 2.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->unbind()V

    .line 258
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->isVertexArray:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->unbind()V

    .line 259
    :cond_1
    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL20Available()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t use this render method with OpenGL ES 1.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->vertices:Lcom/badlogic/gdx/graphics/glutils/VertexData;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->getNumIndices()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Mesh;->indices:Lcom/badlogic/gdx/graphics/glutils/IndexData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexData;->unbind()V

    .line 281
    :cond_1
    return-void
.end method
