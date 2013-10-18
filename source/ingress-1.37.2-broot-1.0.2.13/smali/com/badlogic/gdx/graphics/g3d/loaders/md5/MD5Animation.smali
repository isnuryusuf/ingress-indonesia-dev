.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
.super Lcom/badlogic/gdx/graphics/g3d/Animation;
.source "SourceFile"


# static fields
.field static jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;


# instance fields
.field public bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

.field public frameRate:I

.field public frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

.field public name:Ljava/lang/String;

.field public secondsPerFrame:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 80
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Animation;-><init>()V

    return-void
.end method

.method public static interpolate(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;F)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    .line 85
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    .line 86
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v0, 0x3

    aget v4, v4, v5

    .line 88
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v0, 0x4

    aget v6, v6, v7

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 89
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v0, 0x5

    aget v6, v6, v7

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 90
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v0, 0x6

    aget v6, v6, v7

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 91
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v0, 0x7

    aget v6, v6, v7

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 93
    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    .line 94
    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    .line 95
    iget-object v7, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    .line 97
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v0, 0x4

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 98
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v0, 0x5

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 99
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v0, 0x6

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 100
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v9, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v0, 0x7

    aget v9, v9, v10

    iput v9, v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 102
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    aget v9, v9, v0

    aput v9, v8, v0

    .line 104
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v0, 0x1

    sub-float/2addr v5, v2

    mul-float/2addr v5, p3

    add-float/2addr v2, v5

    aput v2, v8, v9

    .line 105
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v0, 0x2

    sub-float/2addr v6, v3

    mul-float/2addr v6, p3

    add-float/2addr v3, v6

    aput v3, v2, v5

    .line 106
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v0, 0x3

    sub-float v5, v7, v4

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 108
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointBOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v2, v3, p3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->slerp(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;F)V

    .line 110
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v0, 0x4

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v4, v2, v3

    .line 111
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v0, 0x5

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v4, v2, v3

    .line 112
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v0, 0x6

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v4, v2, v3

    .line 113
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v0, 0x7

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->jointAOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v4, v2, v3

    .line 83
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_0

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public getLength()F
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v0, v0

    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frameRate:I

    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    .line 60
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 61
    new-array v1, v2, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    move v1, v0

    .line 62
    :goto_0
    if-ge v1, v2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    new-instance v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    aput-object v4, v3, v1

    .line 64
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->read(Ljava/io/DataInputStream;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 67
    new-array v2, v1, [Lcom/badlogic/gdx/math/collision/BoundingBox;

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 68
    :goto_1
    if-ge v0, v1, :cond_1

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    new-instance v3, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    aput-object v3, v2, v0

    .line 70
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 72
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 73
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 74
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 75
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frameRate:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v0, v1

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->write(Ljava/io/DataOutputStream;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method
