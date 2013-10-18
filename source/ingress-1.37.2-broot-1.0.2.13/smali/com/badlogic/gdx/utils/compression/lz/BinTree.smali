.class public Lcom/badlogic/gdx/utils/compression/lz/BinTree;
.super Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.source "SourceFile"


# static fields
.field private static final CrcTable:[I = null

.field static final kBT2HashSize:I = 0x10000

.field static final kEmptyHashValue:I = 0x0

.field static final kHash2Size:I = 0x400

.field static final kHash3Offset:I = 0x400

.field static final kHash3Size:I = 0x10000

.field static final kMaxValForNormalize:I = 0x3fffffff

.field static final kStartMaxLen:I = 0x1


# instance fields
.field HASH_ARRAY:Z

.field _cutValue:I

.field _cyclicBufferPos:I

.field _cyclicBufferSize:I

.field _hash:[I

.field _hashMask:I

.field _hashSizeSum:I

.field _matchMaxLen:I

.field _son:[I

.field kFixHashSize:I

.field kMinMatchCheck:I

.field kNumHashDirectBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v2, 0x0

    .line 367
    new-array v0, v5, [I

    sput-object v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    move v3, v2

    .line 371
    :goto_0
    if-ge v3, v5, :cond_2

    move v1, v2

    move v0, v3

    .line 374
    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 375
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 376
    ushr-int/lit8 v0, v0, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v0, v4

    .line 374
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_0
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 379
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    aput v0, v1, v3

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;-><init>()V

    .line 10
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    .line 16
    const/16 v0, 0xff

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 18
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 30
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 32
    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    return-void
.end method


# virtual methods
.method public Create(IIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const v0, 0x3ffffeff

    if-le p1, v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 84
    :cond_0
    shr-int/lit8 v0, p3, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 86
    add-int v0, p1, p2

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x100

    .line 89
    add-int v1, p1, p2

    add-int v2, p3, p4

    invoke-super {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Create(III)V

    .line 91
    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .line 93
    add-int/lit8 v0, p1, 0x1

    .line 94
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-eq v1, v0, :cond_1

    .line 95
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    .line 97
    :cond_1
    const/high16 v0, 0x1

    .line 99
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v1, :cond_3

    .line 101
    add-int/lit8 v0, p1, -0x1

    .line 102
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 103
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 104
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 105
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 106
    shr-int/lit8 v0, v0, 0x1

    .line 107
    const v1, 0xffff

    or-int/2addr v0, v1

    .line 108
    const/high16 v1, 0x100

    if-le v0, v1, :cond_2

    .line 109
    shr-int/lit8 v0, v0, 0x1

    .line 110
    :cond_2
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v0, v1

    .line 114
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-eq v0, v1, :cond_4

    .line 115
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    .line 116
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public GetMatches([I)I
    .locals 21
    .parameter

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    if-gt v2, v3, :cond_6

    .line 122
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .line 133
    :cond_0
    const/4 v8, 0x0

    .line 134
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v3, v4

    .line 135
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int v14, v4, v5

    .line 136
    const/4 v7, 0x1

    .line 137
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 139
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v6, :cond_8

    .line 141
    sget-object v4, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v5, v5, v14

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v6, v14, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v4, v5

    .line 142
    and-int/lit16 v5, v4, 0x3ff

    .line 143
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v9, v14, 0x2

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v6, v4

    .line 144
    const v4, 0xffff

    and-int/2addr v4, v6

    .line 145
    sget-object v9, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v11, v14, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0x5

    xor-int/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int/2addr v6, v9

    .line 150
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v10, v6

    aget v10, v9, v10

    .line 151
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v9, :cond_11

    .line 153
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    aget v11, v9, v5

    .line 154
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    add-int/lit16 v12, v4, 0x400

    aget v9, v9, v12

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v13, v12, v5

    .line 156
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    add-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v12, v5, v4

    .line 157
    if-le v11, v3, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v5, v11

    aget-byte v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v5, v5, v14

    if-ne v4, v5, :cond_1

    .line 160
    const/4 v4, 0x0

    const/4 v7, 0x2

    aput v7, p1, v4

    .line 161
    const/4 v4, 0x1

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v5, v11

    add-int/lit8 v5, v5, -0x1

    aput v5, p1, v4

    :cond_1
    move v5, v7

    move v4, v8

    .line 163
    if-le v9, v3, :cond_10

    .line 164
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v8, v8, v14

    if-ne v7, v8, :cond_10

    .line 166
    if-ne v9, v11, :cond_2

    .line 167
    add-int/lit8 v4, v4, -0x2

    .line 168
    :cond_2
    add-int/lit8 v7, v4, 0x1

    const/4 v5, 0x3

    aput v5, p1, v4

    .line 169
    add-int/lit8 v4, v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    aput v8, p1, v7

    move v7, v9

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    .line 172
    :goto_2
    if-eqz v5, :cond_3

    if-ne v7, v10, :cond_3

    .line 174
    add-int/lit8 v5, v5, -0x2

    .line 175
    const/4 v4, 0x1

    .line 179
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v8, v7, v6

    .line 181
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v6, 0x1

    .line 182
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v8, v6, 0x1

    .line 185
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 187
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    if-eqz v6, :cond_4

    .line 189
    if-le v10, v3, :cond_4

    .line 191
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int/2addr v11, v12

    aget-byte v6, v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int/2addr v12, v14

    aget-byte v11, v11, v12

    if-eq v6, v11, :cond_4

    .line 194
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    aput v4, p1, v5

    .line 195
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    aput v11, p1, v6

    .line 200
    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    move v11, v9

    move v13, v10

    move v9, v7

    move v10, v8

    move v8, v7

    move/from16 v20, v6

    move v6, v5

    move v5, v4

    move/from16 v4, v20

    .line 204
    :goto_4
    if-le v13, v3, :cond_5

    add-int/lit8 v7, v4, -0x1

    if-nez v4, :cond_9

    .line 206
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v4, 0x0

    aput v4, v3, v10

    aput v4, v2, v11

    move v5, v6

    .line 248
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 249
    :goto_6
    return v5

    .line 125
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v2, v3

    .line 126
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-ge v2, v3, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 129
    const/4 v5, 0x0

    goto :goto_6

    .line 134
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 148
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v6, v6, v14

    and-int/lit16 v6, v6, 0xff

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v10, v14, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v6, v9

    goto/16 :goto_1

    .line 209
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int v15, v4, v13

    .line 210
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v15, v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    sub-int/2addr v4, v15

    :goto_7
    shl-int/lit8 v12, v4, 0x1

    .line 214
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int v16, v4, v13

    .line 215
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v17, v0

    add-int v18, v16, v4

    aget-byte v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v18, v0

    add-int v19, v14, v4

    aget-byte v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 218
    :cond_a
    add-int/lit8 v4, v4, 0x1

    if-eq v4, v2, :cond_b

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v17, v0

    add-int v18, v16, v4

    aget-byte v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v18, v0

    add-int v19, v14, v4

    aget-byte v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 220
    :cond_b
    if-ge v5, v4, :cond_e

    .line 223
    add-int/lit8 v17, v6, 0x1

    aput v4, p1, v6

    .line 224
    add-int/lit8 v5, v17, 0x1

    add-int/lit8 v6, v15, -0x1

    aput v6, p1, v17

    .line 225
    if-ne v4, v2, :cond_d

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v3, v3, v12

    aput v3, v2, v10

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    add-int/lit8 v4, v12, 0x1

    aget v3, v3, v4

    aput v3, v2, v11

    goto/16 :goto_5

    .line 210
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    sub-int/2addr v4, v15

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v4, v12

    goto :goto_7

    :cond_d
    move v6, v5

    move v5, v4

    .line 233
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v16, v4

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    move-object/from16 v16, v0

    add-int v17, v14, v4

    aget-byte v16, v16, v17

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 235
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v13, v8, v10

    .line 236
    add-int/lit8 v8, v12, 0x1

    .line 237
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v10, v10, v8

    move v13, v10

    move v10, v8

    move v8, v4

    move v4, v7

    .line 238
    goto/16 :goto_4

    .line 242
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v13, v9, v11

    .line 244
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v9, v9, v12

    move v11, v12

    move v13, v9

    move v9, v4

    move v4, v7

    .line 247
    goto/16 :goto_4

    :cond_10
    move v7, v11

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto/16 :goto_2

    :cond_11
    move v4, v7

    move v5, v8

    goto/16 :goto_3
.end method

.method public Init()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Init()V

    move v0, v1

    .line 57
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-ge v0, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    aput v1, v2, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    .line 61
    return-void
.end method

.method public MovePos()V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-lt v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MovePos()V

    .line 68
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    const v1, 0x3fffffff

    if-ne v0, v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Normalize()V

    .line 70
    :cond_1
    return-void
.end method

.method Normalize()V
    .locals 3

    .prologue
    .line 359
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v0, v1

    .line 360
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 361
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    .line 363
    return-void
.end method

.method NormalizeLinks([III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 346
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 348
    aget v0, p1, v2

    .line 349
    if-gt v0, p3, :cond_0

    move v0, v1

    .line 353
    :goto_1
    aput v0, p1, v2

    .line 346
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 352
    :cond_0
    sub-int/2addr v0, p3

    goto :goto_1

    .line 355
    :cond_1
    return-void
.end method

.method public SetCutValue(I)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    return-void
.end method

.method public SetType(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 36
    if-le p1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 37
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v0, :cond_1

    .line 39
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 41
    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    .line 49
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0

    .line 45
    :cond_1
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 47
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    goto :goto_1
.end method

.method public Skip(I)V
    .locals 15
    .parameter

    .prologue
    .line 257
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    if-gt v0, v1, :cond_3

    .line 258
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .line 264
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v1, v2

    .line 270
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int v10, v2, v3

    .line 274
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v2, :cond_5

    .line 276
    sget-object v2, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v4, v10, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    .line 277
    and-int/lit16 v3, v2, 0x3ff

    .line 278
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v5, v4, v3

    .line 279
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v4, v10, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    .line 280
    const v3, 0xffff

    and-int/2addr v3, v2

    .line 281
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    add-int/lit16 v3, v3, 0x400

    iget v5, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v5, v4, v3

    .line 282
    sget-object v3, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v5, v10, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x5

    xor-int/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int/2addr v2, v3

    .line 287
    :goto_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v4, v2

    aget v6, v3, v4

    .line 288
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v4, v3, v2

    .line 290
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v2, 0x1

    .line 291
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v4, v2, 0x1

    .line 294
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 296
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    move v7, v5

    move v9, v6

    move v6, v4

    move v5, v3

    move v4, v3

    .line 299
    :goto_3
    if-le v9, v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-nez v2, :cond_6

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v2, 0x0

    aput v2, v1, v6

    aput v2, v0, v7

    .line 339
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 341
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 342
    return-void

    .line 261
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v0, v1

    .line 262
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-lt v0, v1, :cond_2

    goto/16 :goto_0

    .line 264
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 285
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v2, v2, v10

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v4, v10, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    goto :goto_2

    .line 305
    :cond_6
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v2, v9

    .line 306
    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v2, v8, :cond_9

    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    sub-int v2, v8, v2

    :goto_5
    shl-int/lit8 v8, v2, 0x1

    .line 310
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int v11, v2, v9

    .line 311
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 312
    iget-object v12, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v13, v11, v2

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v14, v10, v2

    aget-byte v13, v13, v14

    if-ne v12, v13, :cond_a

    .line 314
    :cond_7
    add-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_8

    .line 315
    iget-object v12, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v13, v11, v2

    aget-byte v12, v12, v13

    iget-object v13, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v14, v10, v2

    aget-byte v13, v13, v14

    if-eq v12, v13, :cond_7

    .line 316
    :cond_8
    if-ne v2, v0, :cond_a

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v1, v1, v8

    aput v1, v0, v6

    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    add-int/lit8 v2, v8, 0x1

    aget v1, v1, v2

    aput v1, v0, v7

    goto :goto_4

    .line 306
    :cond_9
    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    sub-int v2, v8, v2

    iget v8, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v2, v8

    goto :goto_5

    .line 324
    :cond_a
    iget-object v12, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/2addr v11, v2

    aget-byte v11, v12, v11

    and-int/lit16 v11, v11, 0xff

    iget-object v12, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v13, v10, v2

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    if-ge v11, v12, :cond_b

    .line 326
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v4, v6

    .line 327
    add-int/lit8 v4, v8, 0x1

    .line 328
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v6, v6, v4

    move v9, v6

    move v6, v4

    move v4, v2

    move v2, v3

    .line 329
    goto/16 :goto_3

    .line 333
    :cond_b
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v5, v7

    .line 335
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v5, v5, v8

    move v7, v8

    move v9, v5

    move v5, v2

    move v2, v3

    .line 338
    goto/16 :goto_3
.end method
