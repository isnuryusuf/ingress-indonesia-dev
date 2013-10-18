.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static parentPos:Lcom/badlogic/gdx/math/Vector3;

.field static thisOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->thisOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 335
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 336
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    return-void
.end method

.method private static buildFrameSkeleton([Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;[FLcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;I)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v3, v0, p4

    move v0, v1

    .line 394
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_6

    .line 395
    aget-object v2, p1, v0

    .line 396
    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 397
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    .line 400
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 401
    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->set(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 403
    aget-object v2, p0, v0

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 404
    aget-object v2, p0, v0

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/lit8 v2, v2, 0x0

    aget v2, p2, v2

    iput v2, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 405
    const/4 v2, 0x1

    .line 408
    :goto_1
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 409
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 410
    add-int/lit8 v2, v2, 0x1

    .line 413
    :cond_0
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    .line 414
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 418
    :cond_1
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    .line 419
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 420
    add-int/lit8 v2, v2, 0x1

    .line 423
    :cond_2
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_3

    .line 424
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v6, v2

    aget v6, p2, v6

    iput v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 428
    :cond_3
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_4

    .line 429
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    add-int/2addr v2, v6

    aget v2, p2, v2

    iput v2, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 430
    :cond_4
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 435
    shl-int/lit8 v2, v0, 0x3

    .line 436
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    aget-object v7, p0, v0

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->name:Ljava/lang/String;

    aput-object v7, v6, v0

    .line 437
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    aget-object v7, p0, v0

    iget v7, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    int-to-float v7, v7

    aput v7, v6, v2

    .line 439
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    if-gez v6, :cond_5

    .line 440
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x1

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v8, v6, v7

    .line 441
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x2

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v8, v6, v7

    .line 442
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x3

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v4, v6, v7

    .line 444
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v2, 0x4

    iget v7, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v7, v4, v6

    .line 445
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v2, 0x5

    iget v7, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v7, v4, v6

    .line 446
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v2, 0x6

    iget v7, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v7, v4, v6

    .line 447
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v2, v2, 0x7

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v5, v4, v2

    .line 394
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 449
    :cond_5
    aget-object v6, p0, v0

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    shl-int/lit8 v6, v6, 0x3

    .line 450
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 451
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x2

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 452
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x3

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 454
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x4

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 455
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x5

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 456
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v6, 0x6

    aget v8, v8, v9

    iput v8, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 457
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget-object v8, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v6, v6, 0x7

    aget v6, v8, v6

    iput v6, v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 459
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 460
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x1

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 461
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x2

    iget v8, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 462
    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v2, 0x3

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentPos:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v4, v8

    aput v4, v6, v7

    .line 464
    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->multiply(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;)V

    .line 465
    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->normalize()V

    .line 466
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v2, 0x4

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v6, v4, v5

    .line 467
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v2, 0x5

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v6, v4, v5

    .line 468
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v5, v2, 0x6

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v6, v4, v5

    .line 469
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v2, v2, 0x7

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parentOrient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v5, v4, v2

    goto/16 :goto_2

    .line 472
    :cond_6
    return-void

    :cond_7
    move v2, v1

    goto/16 :goto_1
.end method

.method public static loadAnimation(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 195
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;-><init>()V

    move-object v6, v3

    move-object v1, v3

    move-object v5, v3

    .line 205
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 206
    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 207
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "MD5Version"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Not a valid MD5 animation file, version is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", expected 10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    .line 330
    :goto_1
    return-object v0

    .line 215
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "numFrames"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    new-array v7, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput-object v7, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 218
    new-array v0, v0, [Lcom/badlogic/gdx/math/collision/BoundingBox;

    iput-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 221
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "numJoints"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 222
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v4

    .line 223
    :goto_2
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 224
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    aput-object v7, v1, v0

    .line 225
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v1, v1, v0

    iput v5, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    .line 226
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v1, v1, v0

    new-array v7, v5, [Ljava/lang/String;

    iput-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    .line 227
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frames:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    aget-object v1, v1, v0

    mul-int/lit8 v7, v5, 0x8

    new-array v7, v7, [F

    iput-object v7, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 230
    :cond_3
    new-array v1, v5, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;

    .line 231
    new-array v0, v5, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;

    move-object v7, v0

    move-object v8, v1

    .line 234
    :goto_3
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "frameRate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 236
    iput v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->frameRate:I

    .line 237
    const/high16 v1, 0x3f80

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->secondsPerFrame:F

    .line 240
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "numAnimatedComponents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 241
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    new-array v9, v0, [F

    .line 245
    :goto_4
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "hierarchy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v4

    .line 246
    :goto_5
    array-length v0, v8

    if-ge v1, v0, :cond_7

    .line 247
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 249
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "//"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    :cond_5
    add-int/lit8 v0, v1, -0x1

    .line 246
    :goto_6
    add-int/lit8 v1, v0, 0x1

    goto :goto_5

    .line 254
    :cond_6
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;-><init>()V

    .line 255
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->name:Ljava/lang/String;

    .line 256
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->parent:I

    .line 257
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->flags:I

    .line 258
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;->startIndex:I

    .line 260
    aput-object v5, v8, v1

    move v0, v1

    goto :goto_6

    .line 264
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "bounds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v4

    .line 265
    :goto_7
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 266
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 268
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 269
    add-int/lit8 v0, v1, -0x1

    .line 265
    :goto_8
    add-int/lit8 v1, v0, 0x1

    goto :goto_7

    .line 273
    :cond_8
    new-instance v5, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    .line 274
    iget-object v6, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 275
    iget-object v6, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 276
    iget-object v6, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 278
    iget-object v6, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 279
    iget-object v6, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x7

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 280
    iget-object v6, v5, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    const/16 v0, 0x8

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 282
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;->bounds:[Lcom/badlogic/gdx/math/collision/BoundingBox;

    aput-object v5, v0, v1

    move v0, v1

    goto :goto_8

    .line 286
    :cond_9
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "baseframe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v1, v4

    .line 287
    :goto_9
    array-length v0, v7

    if-ge v1, v0, :cond_b

    .line 288
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 290
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 291
    add-int/lit8 v0, v1, -0x1

    .line 287
    :goto_a
    add-int/lit8 v1, v0, 0x1

    goto :goto_9

    .line 295
    :cond_a
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;-><init>()V

    .line 296
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 297
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 298
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->pos:Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 300
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    const/4 v0, 0x6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 301
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    const/4 v0, 0x7

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 302
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    const/16 v0, 0x8

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 303
    iget-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;->orient:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 305
    aput-object v5, v7, v1

    move v0, v1

    goto :goto_a

    .line 309
    :cond_b
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 310
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 313
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    move v1, v4

    .line 315
    :goto_b
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v5, v1

    move v1, v4

    .line 316
    :goto_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 317
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v9, v5

    .line 316
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v5, v6

    goto :goto_c

    .line 319
    :cond_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0, v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    move v1, v5

    goto :goto_b

    .line 323
    :cond_d
    invoke-static {v8, v7, v9, v2, v12}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->buildFrameSkeleton([Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$JointInfo;[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader$BaseFrameJoint;[FLcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Animation;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v9

    move-object v1, v7

    move-object v5, v8

    .line 324
    goto/16 :goto_0

    :cond_e
    move-object v0, v2

    .line 327
    goto/16 :goto_1

    :cond_f
    move-object v9, v6

    goto/16 :goto_4

    :cond_10
    move-object v7, v1

    move-object v8, v5

    goto/16 :goto_3

    :cond_11
    move-object v6, v9

    move-object v1, v7

    move-object v5, v8

    goto/16 :goto_0
.end method

.method public static loadModel(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v4, 0x0

    .line 35
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v8, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 36
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;-><init>()V

    .line 37
    new-instance v9, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    .line 41
    if-eqz p1, :cond_11

    const/4 v0, 0x7

    move v7, v0

    .line 43
    :goto_0
    const/4 v0, 0x5

    .line 44
    if-eqz p1, :cond_10

    const/16 v0, 0x8

    move v1, v0

    :goto_1
    move v6, v4

    .line 50
    :cond_0
    :goto_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 51
    invoke-static {v2, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 52
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "MD5Version"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Not a valid MD5 file, go version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", need 10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "numJoints"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;-><init>()V

    iput-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    .line 69
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    new-array v11, v0, [Ljava/lang/String;

    iput-object v11, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    .line 70
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iput v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    .line 71
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [F

    iput-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    .line 77
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "numMeshes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    .line 85
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "joints"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    move v2, v4

    .line 86
    :goto_4
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->numJoints:I

    if-ge v2, v5, :cond_5

    .line 87
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v5, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 89
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 90
    add-int/lit8 v0, v2, -0x1

    .line 86
    :goto_5
    add-int/lit8 v2, v0, 0x1

    move-object v0, v5

    goto :goto_4

    .line 94
    :cond_4
    shl-int/lit8 v11, v2, 0x3

    .line 95
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->names:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v12, v2

    .line 97
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v12, v11

    .line 99
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v11, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v13

    .line 100
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v11, 0x2

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v13

    .line 101
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v13, v11, 0x3

    const/4 v0, 0x5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v13

    .line 103
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 104
    const/16 v0, 0x9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 105
    const/16 v0, 0xa

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 106
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->computeW()V

    .line 108
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v11, 0x4

    iget v13, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    aput v13, v0, v12

    .line 109
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v11, 0x5

    iget v13, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    aput v13, v0, v12

    .line 110
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v11, 0x6

    iget v13, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    aput v13, v0, v12

    .line 111
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->baseSkeleton:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v11, v11, 0x7

    iget v12, v10, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    aput v12, v0, v11

    move v0, v2

    goto/16 :goto_5

    :cond_5
    move-object v2, v0

    .line 118
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "mesh"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;-><init>()V

    .line 120
    iput v7, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    .line 121
    iput v1, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    .line 123
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Model;->meshes:[Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;

    add-int/lit8 v5, v6, 0x1

    aput-object v11, v0, v6

    :cond_7
    move-object v0, v2

    .line 125
    :goto_6
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 130
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v2, v9}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->tokenize(Ljava/lang/String;Ljava/util/List;)V

    .line 132
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "shader"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    .line 137
    :cond_8
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "numverts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 138
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    .line 139
    iget v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    mul-int/2addr v0, v7

    new-array v0, v0, [F

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    .line 141
    :cond_9
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "numtris"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 142
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [S

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    .line 143
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    iput v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    .line 145
    :cond_a
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "numweights"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    .line 147
    iget v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    .line 149
    :cond_b
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "vert"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 150
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 152
    mul-int v6, v0, v7

    .line 153
    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v13, v6, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v12, v6

    .line 154
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    .line 155
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v13, v12, 0x1

    const/4 v0, 0x6

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v12

    .line 156
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x7

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    .line 157
    if-eqz p1, :cond_c

    .line 158
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v6, v12, 0x1

    const/4 v13, 0x0

    aput v13, v0, v12

    .line 159
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v12, v6, 0x1

    const/4 v13, 0x0

    aput v13, v0, v6

    .line 160
    iget-object v0, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    const/4 v6, 0x0

    aput v6, v0, v12

    .line 163
    :cond_c
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "tri"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    mul-int/lit8 v6, v0, 0x3

    .line 167
    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    add-int/lit8 v13, v6, 0x1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    aput-short v0, v12, v6

    .line 168
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    aput-short v0, v6, v13

    .line 169
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    aput-short v0, v6, v12

    .line 172
    :cond_d
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "weight"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 175
    mul-int v6, v0, v1

    .line 176
    iget-object v12, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v13, v6, 0x1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    aput v0, v12, v6

    .line 177
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    .line 178
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v13, v12, 0x1

    const/4 v0, 0x5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v12

    .line 179
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    add-int/lit8 v12, v13, 0x1

    const/4 v0, 0x6

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v13

    .line 180
    iget-object v6, v11, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    const/4 v0, 0x7

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Loader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v6, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 181
    goto/16 :goto_6

    :cond_e
    move v6, v5

    .line 184
    goto/16 :goto_2

    :cond_f
    move-object v0, v3

    .line 187
    goto/16 :goto_3

    :cond_10
    move v1, v0

    goto/16 :goto_1

    :cond_11
    move v7, v0

    goto/16 :goto_0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 15
    .parameter

    .prologue
    .line 339
    const/4 v5, 0x0

    .line 340
    const/4 v4, 0x0

    .line 341
    const/high16 v3, 0x3f80

    .line 342
    const/4 v2, 0x0

    .line 343
    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 345
    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    :goto_0
    if-ge v6, v7, :cond_4

    .line 346
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_0

    .line 348
    const/high16 v1, -0x4080

    move v3, v4

    move v4, v5

    move v14, v2

    move v2, v1

    move v1, v14

    .line 345
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 351
    :cond_0
    const/16 v8, 0x2b

    if-eq v1, v8, :cond_5

    .line 352
    const/16 v8, 0x2e

    if-eq v1, v8, :cond_1

    const/16 v8, 0x2c

    if-ne v1, v8, :cond_2

    .line 353
    :cond_1
    const/4 v1, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    .line 354
    goto :goto_1

    .line 357
    :cond_2
    add-int/lit8 v1, v1, -0x30

    int-to-float v8, v1

    .line 358
    if-nez v2, :cond_3

    .line 359
    const/high16 v1, 0x4120

    mul-float/2addr v1, v5

    add-float/2addr v1, v8

    move v14, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move v1, v14

    goto :goto_1

    .line 361
    :cond_3
    const/high16 v9, 0x3f80

    const-wide/high16 v10, 0x4024

    add-int/lit8 v1, v0, 0x1

    int-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v0, v10

    div-float v0, v9, v0

    mul-float/2addr v0, v8

    add-float/2addr v0, v4

    move v4, v5

    move v14, v2

    move v2, v3

    move v3, v0

    move v0, v1

    move v1, v14

    goto :goto_1

    .line 364
    :cond_4
    add-float v0, v5, v4

    mul-float/2addr v0, v3

    return v0

    :cond_5
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 368
    .line 369
    const/4 v1, 0x1

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    move v6, v1

    move v1, v0

    move v0, v6

    .line 372
    :goto_0
    if-ge v2, v3, :cond_2

    .line 373
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 374
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 375
    const/4 v0, -0x1

    .line 372
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const/16 v5, 0x2b

    if-eq v4, v5, :cond_0

    .line 379
    const/16 v5, 0x2e

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_2

    .line 380
    add-int/lit8 v4, v4, -0x30

    .line 384
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    goto :goto_1

    .line 387
    :cond_2
    mul-int/2addr v0, v1

    return v0
.end method

.method private static tokenize(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 476
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 477
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method
