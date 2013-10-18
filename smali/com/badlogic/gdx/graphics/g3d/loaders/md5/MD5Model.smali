.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

.field public meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

.field public numJoints:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumTriangles()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    move v1, v0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    add-int/2addr v1, v2

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return v1
.end method

.method public getNumVertices()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    move v1, v0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    add-int/2addr v1, v2

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return v1
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->numJoints:I

    .line 53
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->read(Ljava/io/DataInputStream;)V

    .line 55
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 56
    new-array v0, v1, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    .line 57
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;-><init>()V

    aput-object v3, v2, v0

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->read(Ljava/io/DataInputStream;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->numJoints:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->write(Ljava/io/DataOutputStream;)V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 67
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->write(Ljava/io/DataOutputStream;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
