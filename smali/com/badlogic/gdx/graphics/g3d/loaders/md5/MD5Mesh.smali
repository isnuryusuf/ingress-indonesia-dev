.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static _A:Lcom/badlogic/gdx/math/Vector3;

.field static _B:Lcom/badlogic/gdx/math/Vector3;

.field static _n:Lcom/badlogic/gdx/math/Vector3;

.field static bn:Lcom/badlogic/gdx/math/Vector3;

.field static quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static vn:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public floatsPerVertex:I

.field public floatsPerWeight:I

.field public indices:[S

.field public numTriangles:I

.field public numVertices:I

.field public numWeights:I

.field public shader:Ljava/lang/String;

.field public vertices:[F

.field public weights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    .line 214
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    .line 215
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    .line 216
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    .line 227
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 228
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcNor(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 220
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 221
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 222
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 223
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 224
    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public static calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[S[FII)V
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    const/4 v2, 0x2

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 233
    const/4 v7, 0x0

    .line 234
    const/4 v6, 0x0

    .line 235
    const/4 v5, 0x0

    .line 237
    aget v3, p2, v2

    float-to-int v3, v3

    .line 238
    add-int/lit8 v4, v2, 0x1

    aget v4, p2, v4

    float-to-int v8, v4

    .line 239
    mul-int v4, v3, p6

    .line 241
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_0

    .line 242
    add-int/lit8 v9, v4, 0x1

    aget v4, p1, v4

    float-to-int v4, v4

    shl-int/lit8 v10, v4, 0x3

    .line 243
    add-int/lit8 v4, v9, 0x1

    aget v9, p1, v9

    .line 244
    add-int/lit8 v11, v4, 0x1

    aget v12, p1, v4

    .line 245
    add-int/lit8 v4, v11, 0x1

    aget v11, p1, v11

    .line 246
    add-int/lit8 v13, v4, 0x1

    aget v14, p1, v4

    .line 247
    add-int/lit8 v4, v13, 0x3

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x4

    aget v13, v13, v15

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v16, v10, 0x5

    aget v15, v15, v16

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x6

    aget v16, v16, v17

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x7

    aget v17, v17, v18

    .line 254
    neg-float v0, v13

    move/from16 v18, v0

    neg-float v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v20, v0

    .line 256
    neg-float v0, v13

    move/from16 v21, v0

    mul-float v21, v21, v12

    mul-float v22, v15, v11

    sub-float v21, v21, v22

    mul-float v22, v16, v14

    sub-float v21, v21, v22

    .line 257
    mul-float v22, v17, v12

    mul-float v23, v15, v14

    add-float v22, v22, v23

    mul-float v23, v16, v11

    sub-float v22, v22, v23

    .line 258
    mul-float v23, v17, v11

    mul-float v16, v16, v12

    add-float v16, v16, v23

    mul-float v23, v13, v14

    sub-float v16, v16, v23

    .line 259
    mul-float v14, v14, v17

    mul-float/2addr v11, v13

    add-float/2addr v11, v14

    mul-float/2addr v12, v15

    sub-float/2addr v11, v12

    .line 261
    mul-float v12, v22, v17

    mul-float v13, v21, v18

    add-float/2addr v12, v13

    mul-float v13, v16, v20

    add-float/2addr v12, v13

    mul-float v13, v11, v19

    sub-float/2addr v12, v13

    .line 262
    mul-float v13, v16, v17

    mul-float v14, v21, v19

    add-float/2addr v13, v14

    mul-float v14, v11, v18

    add-float/2addr v13, v14

    mul-float v14, v22, v20

    sub-float/2addr v13, v14

    .line 263
    mul-float v11, v11, v17

    mul-float v14, v21, v20

    add-float/2addr v11, v14

    mul-float v14, v22, v19

    add-float/2addr v11, v14

    mul-float v14, v16, v18

    sub-float/2addr v11, v14

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x1

    aget v14, v14, v15

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    add-float/2addr v7, v12

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    add-float/2addr v12, v13

    mul-float/2addr v12, v9

    add-float/2addr v6, v12

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v10, 0x3

    aget v10, v12, v10

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 270
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aput v7, p4, v1

    .line 271
    add-int/lit8 v1, v3, 0x1

    aput v6, p4, v3

    .line 272
    add-int/lit8 v3, v1, 0x1

    aput v5, p4, v1

    .line 273
    add-int/lit8 v1, v3, 0x2

    .line 275
    add-int/lit8 v1, v1, 0x3

    .line 232
    add-int v2, v2, p5

    goto/16 :goto_0

    .line 278
    :cond_1
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 280
    aget-short v2, p3, v1

    .line 281
    add-int/lit8 v3, v1, 0x1

    aget-short v3, p3, v3

    .line 282
    add-int/lit8 v4, v1, 0x2

    aget-short v4, p3, v4

    .line 283
    mul-int/lit8 v5, v2, 0x8

    .line 284
    mul-int/lit8 v6, v3, 0x8

    .line 285
    mul-int/lit8 v7, v4, 0x8

    .line 287
    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    aget v9, p4, v5

    add-int/lit8 v10, v5, 0x1

    aget v10, p4, v10

    add-int/lit8 v5, v5, 0x2

    aget v5, p4, v5

    invoke-direct {v8, v9, v10, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 288
    new-instance v5, Lcom/badlogic/gdx/math/Vector3;

    aget v9, p4, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p4, v10

    add-int/lit8 v6, v6, 0x2

    aget v6, p4, v6

    invoke-direct {v5, v9, v10, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 289
    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    aget v9, p4, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p4, v10

    add-int/lit8 v7, v7, 0x2

    aget v7, p4, v7

    invoke-direct {v6, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 292
    invoke-static {v8, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calcNor(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .line 295
    mul-int/lit8 v2, v2, 0x7

    .line 296
    mul-int/lit8 v3, v3, 0x7

    .line 297
    mul-int/lit8 v4, v4, 0x7

    .line 299
    add-int/lit8 v6, v2, 0x4

    aget v7, p2, v6

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v7, v8

    aput v7, p2, v6

    .line 300
    add-int/lit8 v6, v2, 0x5

    aget v7, p2, v6

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v7, v8

    aput v7, p2, v6

    .line 301
    add-int/lit8 v2, v2, 0x6

    aget v6, p2, v2

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v6, v7

    aput v6, p2, v2

    .line 302
    add-int/lit8 v2, v3, 0x4

    aget v6, p2, v2

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v6, v7

    aput v6, p2, v2

    .line 303
    add-int/lit8 v2, v3, 0x5

    aget v6, p2, v2

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v6, v7

    aput v6, p2, v2

    .line 304
    add-int/lit8 v2, v3, 0x6

    aget v3, p2, v2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v6

    aput v3, p2, v2

    .line 305
    add-int/lit8 v2, v4, 0x4

    aget v3, p2, v2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v3, v6

    aput v3, p2, v2

    .line 306
    add-int/lit8 v2, v4, 0x5

    aget v3, p2, v2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v3, v6

    aput v3, p2, v2

    .line 307
    add-int/lit8 v2, v4, 0x6

    aget v3, p2, v2

    iget v4, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v4

    aput v3, p2, v2

    .line 278
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    .line 310
    :cond_2
    const/4 v1, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 311
    aget-short v2, p3, v1

    .line 312
    add-int/lit8 v3, v1, 0x1

    aget-short v3, p3, v3

    .line 313
    add-int/lit8 v4, v1, 0x2

    aget-short v4, p3, v4

    .line 314
    mul-int/lit8 v2, v2, 0x7

    .line 315
    mul-int/lit8 v3, v3, 0x7

    .line 316
    mul-int/lit8 v4, v4, 0x7

    .line 318
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x4

    aget v6, p2, v6

    add-int/lit8 v7, v2, 0x5

    aget v7, p2, v7

    add-int/lit8 v8, v2, 0x6

    aget v8, p2, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 319
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 320
    add-int/lit8 v5, v2, 0x4

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v6, p2, v5

    .line 321
    add-int/lit8 v5, v2, 0x5

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v6, p2, v5

    .line 322
    add-int/lit8 v2, v2, 0x6

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v5, p2, v2

    .line 324
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    add-int/lit8 v6, v3, 0x5

    aget v6, p2, v6

    add-int/lit8 v7, v3, 0x6

    aget v7, p2, v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 325
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 326
    add-int/lit8 v2, v3, 0x4

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v5, p2, v2

    .line 327
    add-int/lit8 v2, v3, 0x5

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v5, p2, v2

    .line 328
    add-int/lit8 v2, v3, 0x6

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, p2, v2

    .line 330
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v3, v4, 0x4

    aget v3, p2, v3

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    add-int/lit8 v6, v4, 0x6

    aget v6, p2, v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 331
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 332
    add-int/lit8 v2, v4, 0x4

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p2, v2

    .line 333
    add-int/lit8 v2, v4, 0x5

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p2, v2

    .line 334
    add-int/lit8 v2, v4, 0x6

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, p2, v2

    .line 310
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_3

    .line 338
    :cond_3
    const/4 v1, 0x2

    :goto_4
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 339
    aget v2, p2, v1

    float-to-int v2, v2

    .line 340
    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    float-to-int v4, v3

    .line 341
    mul-int v3, v2, p6

    .line 343
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_4

    .line 344
    add-int/lit8 v5, v3, 0x1

    aget v3, p1, v3

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x3

    .line 351
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v7, v3, 0x4

    aget v6, v6, v7

    .line 352
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v8, v3, 0x5

    aget v7, v7, v8

    .line 353
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v9, v3, 0x6

    aget v8, v8, v9

    .line 354
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v3, v3, 0x7

    aget v3, v9, v3

    .line 356
    add-int/lit8 v9, v1, 0x2

    aget v9, p2, v9

    .line 357
    add-int/lit8 v10, v1, 0x3

    aget v10, p2, v10

    .line 358
    add-int/lit8 v11, v1, 0x4

    aget v11, p2, v11

    .line 360
    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12, v9, v10, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 361
    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v6, v9, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 362
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v7, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 363
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v8, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 364
    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    iput v3, v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 365
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->invert()V

    .line 366
    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 368
    add-int/lit8 v3, v5, 0x1

    aget v6, p1, v5

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v6, v7

    aput v6, p1, v5

    .line 369
    add-int/lit8 v5, v3, 0x1

    aget v6, p1, v3

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v6, v7

    aput v6, p1, v3

    .line 370
    add-int/lit8 v3, v5, 0x1

    aget v6, p1, v5

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v6, v7

    aput v6, p1, v5

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 338
    :cond_4
    add-int v1, v1, p5

    goto/16 :goto_4

    .line 374
    :cond_5
    const/4 v1, 0x0

    :goto_6
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 375
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v3, v1, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, v1, 0x6

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x7

    aget v5, p1, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 376
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 377
    add-int/lit8 v2, v1, 0x5

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v3, p1, v2

    .line 378
    add-int/lit8 v2, v1, 0x6

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p1, v2

    .line 379
    add-int/lit8 v2, v1, 0x7

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v3, p1, v2

    .line 374
    add-int v1, v1, p6

    goto :goto_6

    .line 381
    :cond_6
    return-void
.end method

.method public static calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v2, 0x2

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 161
    const/4 v7, 0x0

    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v5, 0x0

    .line 165
    aget v3, p2, v2

    float-to-int v3, v3

    .line 166
    add-int/lit8 v4, v2, 0x1

    aget v4, p2, v4

    float-to-int v8, v4

    .line 167
    shl-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v3

    .line 169
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_0

    .line 170
    add-int/lit8 v9, v4, 0x1

    aget v4, p1, v4

    float-to-int v4, v4

    shl-int/lit8 v10, v4, 0x3

    .line 171
    add-int/lit8 v4, v9, 0x1

    aget v9, p1, v9

    .line 172
    add-int/lit8 v11, v4, 0x1

    aget v12, p1, v4

    .line 173
    add-int/lit8 v13, v11, 0x1

    aget v11, p1, v11

    .line 174
    add-int/lit8 v4, v13, 0x1

    aget v13, p1, v13

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x4

    aget v14, v14, v15

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v16, v10, 0x5

    aget v15, v15, v16

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x6

    aget v16, v16, v17

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x7

    aget v17, v17, v18

    .line 181
    neg-float v0, v14

    move/from16 v18, v0

    neg-float v0, v15

    move/from16 v19, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v20, v0

    .line 183
    neg-float v0, v14

    move/from16 v21, v0

    mul-float v21, v21, v12

    mul-float v22, v15, v11

    sub-float v21, v21, v22

    mul-float v22, v16, v13

    sub-float v21, v21, v22

    .line 184
    mul-float v22, v17, v12

    mul-float v23, v15, v13

    add-float v22, v22, v23

    mul-float v23, v16, v11

    sub-float v22, v22, v23

    .line 185
    mul-float v23, v17, v11

    mul-float v16, v16, v12

    add-float v16, v16, v23

    mul-float v23, v14, v13

    sub-float v16, v16, v23

    .line 186
    mul-float v13, v13, v17

    mul-float/2addr v11, v14

    add-float/2addr v11, v13

    mul-float/2addr v12, v15

    sub-float/2addr v11, v12

    .line 188
    mul-float v12, v22, v17

    mul-float v13, v21, v18

    add-float/2addr v12, v13

    mul-float v13, v16, v20

    add-float/2addr v12, v13

    mul-float v13, v11, v19

    sub-float/2addr v12, v13

    .line 189
    mul-float v13, v16, v17

    mul-float v14, v21, v19

    add-float/2addr v13, v14

    mul-float v14, v11, v18

    add-float/2addr v13, v14

    mul-float v14, v22, v20

    sub-float/2addr v13, v14

    .line 190
    mul-float v11, v11, v17

    mul-float v14, v21, v20

    add-float/2addr v11, v14

    mul-float v14, v22, v19

    add-float/2addr v11, v14

    mul-float v14, v16, v18

    sub-float/2addr v11, v14

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v15, v10, 0x1

    aget v14, v14, v15

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    add-float/2addr v7, v12

    .line 193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    add-float/2addr v12, v13

    mul-float/2addr v12, v9

    add-float/2addr v6, v12

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v10, v10, 0x3

    aget v10, v12, v10

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 197
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v6, v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 199
    add-int/lit8 v3, v1, 0x1

    aput v7, p3, v1

    .line 200
    add-int/lit8 v1, v3, 0x1

    aput v6, p3, v3

    .line 201
    add-int/lit8 v3, v1, 0x1

    aput v5, p3, v1

    .line 202
    add-int/lit8 v1, v3, 0x2

    .line 160
    add-int v2, v2, p4

    goto/16 :goto_0

    .line 204
    :cond_1
    return-void
.end method

.method public static calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v4, 0x2

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 80
    const/4 v9, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v7, 0x0

    .line 84
    aget v5, p2, v4

    float-to-int v5, v5

    .line 85
    add-int/lit8 v6, v4, 0x1

    aget v6, p2, v6

    float-to-int v10, v6

    .line 86
    mul-int v6, v5, p5

    .line 89
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v11, v4, 0x2

    aget v11, p2, v11

    add-int/lit8 v12, v4, 0x3

    aget v12, p2, v12

    add-int/lit8 v13, v4, 0x4

    aget v13, p2, v13

    invoke-virtual {v5, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 94
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v10, :cond_0

    .line 95
    add-int/lit8 v11, v6, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    shl-int/lit8 v12, v6, 0x3

    .line 96
    add-int/lit8 v6, v11, 0x1

    aget v11, p1, v11

    .line 97
    add-int/lit8 v13, v6, 0x1

    aget v14, p1, v6

    .line 98
    add-int/lit8 v6, v13, 0x1

    aget v13, p1, v13

    .line 99
    add-int/lit8 v15, v6, 0x1

    aget v16, p1, v6

    .line 102
    sget-object v17, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v15, 0x1

    aget v15, p1, v15

    add-int/lit8 v18, v6, 0x1

    aget v19, p1, v6

    add-int/lit8 v6, v18, 0x1

    aget v18, p1, v18

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v15, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v17, v12, 0x4

    aget v15, v15, v17

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v12, 0x5

    aget v17, v17, v18

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, 0x6

    aget v18, v18, v19

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x7

    aget v19, v19, v20

    .line 110
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v0, v20

    iput v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 111
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 112
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 113
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 114
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v21, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v20 .. v21}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 115
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 116
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    sget-object v21, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v20 .. v21}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 119
    neg-float v0, v15

    move/from16 v20, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v22, v0

    .line 121
    neg-float v0, v15

    move/from16 v23, v0

    mul-float v23, v23, v14

    mul-float v24, v17, v13

    sub-float v23, v23, v24

    mul-float v24, v18, v16

    sub-float v23, v23, v24

    .line 122
    mul-float v24, v19, v14

    mul-float v25, v17, v16

    add-float v24, v24, v25

    mul-float v25, v18, v13

    sub-float v24, v24, v25

    .line 123
    mul-float v25, v19, v13

    mul-float v18, v18, v14

    add-float v18, v18, v25

    mul-float v25, v15, v16

    sub-float v18, v18, v25

    .line 124
    mul-float v16, v16, v19

    mul-float/2addr v13, v15

    add-float v13, v13, v16

    mul-float v14, v14, v17

    sub-float/2addr v13, v14

    .line 126
    mul-float v14, v24, v19

    mul-float v15, v23, v20

    add-float/2addr v14, v15

    mul-float v15, v18, v22

    add-float/2addr v14, v15

    mul-float v15, v13, v21

    sub-float/2addr v14, v15

    .line 127
    mul-float v15, v18, v19

    mul-float v16, v23, v21

    add-float v15, v15, v16

    mul-float v16, v13, v20

    add-float v15, v15, v16

    mul-float v16, v24, v22

    sub-float v15, v15, v16

    .line 128
    mul-float v13, v13, v19

    mul-float v16, v23, v22

    add-float v13, v13, v16

    mul-float v16, v24, v21

    add-float v13, v13, v16

    mul-float v16, v18, v20

    sub-float v13, v13, v16

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget v16, v16, v17

    add-float v14, v14, v16

    mul-float/2addr v14, v11

    add-float/2addr v9, v14

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v16, v12, 0x2

    aget v14, v14, v16

    add-float/2addr v14, v15

    mul-float/2addr v14, v11

    add-float/2addr v8, v14

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    add-int/lit8 v12, v12, 0x3

    aget v12, v14, v12

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v7, v11

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 135
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v8, v7}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 137
    add-int/lit8 v5, v3, 0x1

    aput v9, p3, v3

    .line 138
    add-int/lit8 v3, v5, 0x1

    aput v8, p3, v5

    .line 139
    add-int/lit8 v5, v3, 0x1

    aput v7, p3, v3

    .line 140
    add-int/lit8 v3, v5, 0x2

    .line 143
    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 145
    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v6, p3, v3

    .line 146
    add-int/lit8 v6, v5, 0x1

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v3, p3, v5

    .line 147
    add-int/lit8 v3, v6, 0x1

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v5, p3, v6

    .line 79
    add-int v4, v4, p4

    goto/16 :goto_0

    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method public calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[S[FII)V

    .line 212
    return-void
.end method

.method public calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 73
    return-void
.end method

.method public calculateVerticesJni(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v4, v3

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Jni;->calculateVertices([F[F[F[FIII)V

    .line 208
    return-void
.end method

.method public calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 69
    return-void
.end method

.method public createVertexArray()[F
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->createVertexArray(I)[F

    move-result-object v0

    return-object v0
.end method

.method public createVertexArray(I)[F
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    mul-int/2addr v1, p1

    new-array v2, v1, [F

    .line 51
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    move v1, v0

    .line 52
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 53
    add-int/lit8 v0, v0, 0x3

    .line 54
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    aget v5, v5, v1

    aput v5, v2, v0

    .line 55
    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v2, v4

    .line 56
    const/16 v4, 0x8

    if-ne p1, v4, :cond_0

    .line 57
    add-int/lit8 v0, v0, 0x3

    .line 52
    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    .line 60
    :cond_1
    return-object v2
.end method

.method public getIndices()[S
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    return-object v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    .line 386
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    .line 387
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    .line 388
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    .line 389
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    .line 392
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    move v0, v1

    .line 394
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 397
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    aput v2, v0, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 403
    :cond_2
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 407
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 408
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 409
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 410
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 411
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v0, v1

    .line 412
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 415
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    aget-short v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 421
    :cond_2
    return-void
.end method
