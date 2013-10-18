.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final stride:I = 0x8


# instance fields
.field public joints:[F

.field public names:[Ljava/lang/String;

.field public numJoints:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/DataInputStream;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 32
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    move v1, v0

    .line 33
    :goto_0
    if-ge v1, v2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    .line 37
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    mul-int/lit8 v1, v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    .line 38
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_1
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v0, v1

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    mul-int/lit8 v0, v0, 0x8

    if-ge v1, v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :cond_1
    return-void
.end method
