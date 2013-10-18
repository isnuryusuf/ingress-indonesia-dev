.class final enum Lcom/google/a/e/m;
.super Lcom/google/a/e/k;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/e/k;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;JJ[J)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 281
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 282
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 283
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 285
    add-long/2addr v0, p1

    .line 286
    add-long v8, p3, v0

    add-long/2addr v8, v6

    const/16 v10, 0x33

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    .line 288
    add-long/2addr v2, v0

    .line 289
    add-long/2addr v2, v4

    .line 290
    const/16 v4, 0x17

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v8

    .line 291
    const/4 v8, 0x0

    add-long/2addr v2, v6

    aput-wide v2, p5, v8

    .line 292
    const/4 v2, 0x1

    add-long/2addr v0, v4

    aput-wide v0, p5, v2

    .line 293
    return-void
.end method


# virtual methods
.method protected final a([BIIJJ)Lcom/google/a/e/u;
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    const/16 v2, 0x80

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    .line 205
    invoke-static/range {p1 .. p7}, Lcom/google/a/e/j;->a([BIIJJ)Lcom/google/a/e/u;

    move-result-object v2

    .line 270
    :goto_0
    return-object v2

    .line 208
    :cond_0
    const/4 v2, 0x2

    new-array v7, v2, [J

    const/4 v2, 0x2

    new-array v13, v2, [J

    .line 209
    move/from16 v0, p3

    int-to-long v2, v0

    const-wide v4, -0x72a753d9501ed1b9L

    mul-long v3, v2, v4

    .line 210
    const/4 v2, 0x0

    const-wide v5, -0x72a753d9501ed1b9L

    xor-long v5, v5, p6

    const/16 v8, 0x31

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    invoke-static/range {p1 .. p2}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v8

    add-long/2addr v5, v8

    aput-wide v5, v7, v2

    .line 211
    const/4 v2, 0x1

    const/4 v5, 0x0

    aget-wide v5, v7, v5

    const/16 v8, 0x2a

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    add-int/lit8 v8, p2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v8

    add-long/2addr v5, v8

    aput-wide v5, v7, v2

    .line 212
    const/4 v2, 0x0

    add-long v5, p6, v3

    const/16 v8, 0x23

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    add-long v5, v5, p4

    aput-wide v5, v13, v2

    .line 213
    const/4 v2, 0x1

    add-int/lit8 v5, p2, 0x58

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v5

    add-long v5, v5, p4

    const/16 v8, 0x35

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    aput-wide v5, v13, v2

    .line 216
    const/16 v2, 0x80

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 217
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 219
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    const/16 v5, 0x80

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 221
    add-long v5, p4, p6

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    add-long/2addr v5, v8

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    add-long/2addr v5, v8

    const/16 v8, 0x25

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    .line 222
    const/4 v8, 0x1

    aget-wide v8, v7, v8

    add-long v8, v8, p6

    const/16 v10, 0x30

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v10, 0x2a

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v8, v10

    .line 223
    const/4 v10, 0x1

    aget-wide v10, v13, v10

    xor-long v16, v5, v10

    .line 224
    const/4 v5, 0x0

    aget-wide v5, v7, v5

    xor-long v11, v8, v5

    .line 225
    const/4 v5, 0x0

    aget-wide v5, v13, v5

    xor-long/2addr v3, v5

    const/16 v5, 0x21

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    .line 226
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    const/4 v3, 0x1

    aget-wide v3, v7, v3

    const-wide v5, -0x72a753d9501ed1b9L

    mul-long/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v13, v5

    add-long v5, v5, v16

    invoke-static/range {v2 .. v7}, Lcom/google/a/e/m;->a(Ljava/nio/ByteBuffer;JJ[J)V

    .line 228
    const/4 v3, 0x1

    aget-wide v3, v13, v3

    add-long v9, v14, v3

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lcom/google/a/e/m;->a(Ljava/nio/ByteBuffer;JJ[J)V

    .line 229
    add-long v3, v14, v11

    const/4 v5, 0x0

    aget-wide v5, v7, v5

    add-long/2addr v3, v5

    add-int/lit8 v5, p2, 0x50

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/16 v5, 0x25

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v5, -0x72a753d9501ed1b9L

    mul-long/2addr v3, v5

    .line 230
    const/4 v5, 0x1

    aget-wide v5, v7, v5

    add-long/2addr v5, v11

    add-int/lit8 v8, p2, 0x70

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v8

    add-long/2addr v5, v8

    const/16 v8, 0x2a

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    .line 231
    const/4 v8, 0x1

    aget-wide v8, v13, v8

    xor-long v14, v3, v8

    .line 232
    const/4 v3, 0x0

    aget-wide v3, v7, v3

    xor-long v11, v5, v3

    .line 233
    const/4 v3, 0x0

    aget-wide v3, v13, v3

    xor-long v3, v3, v16

    const/16 v5, 0x21

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    .line 234
    const/4 v3, 0x1

    aget-wide v3, v7, v3

    const-wide v5, -0x72a753d9501ed1b9L

    mul-long/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v13, v5

    add-long/2addr v5, v14

    invoke-static/range {v2 .. v7}, Lcom/google/a/e/m;->a(Ljava/nio/ByteBuffer;JJ[J)V

    .line 235
    const/4 v3, 0x1

    aget-wide v3, v13, v3

    add-long v9, p4, v3

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lcom/google/a/e/m;->a(Ljava/nio/ByteBuffer;JJ[J)V

    .line 236
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0x80

    move/from16 p2, v0

    .line 237
    add-int/lit8 p3, p3, -0x80

    .line 238
    const/16 v3, 0x80

    move/from16 v0, p3

    if-ge v0, v3, :cond_2

    .line 240
    const/4 v3, 0x0

    aget-wide v3, v13, v3

    const/16 v5, 0x25

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v5, -0x5a47a3a1e67127b7L

    mul-long/2addr v3, v5

    add-long/2addr v3, v14

    add-long v4, v11, v3

    .line 241
    const/4 v3, 0x0

    aget-wide v8, v7, v3

    add-long/2addr v8, v14

    const/16 v3, 0x31

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    const-wide v10, -0x5a47a3a1e67127b7L

    mul-long/2addr v8, v10

    add-long v8, v8, p4

    .line 244
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    and-int/lit8 v6, p3, 0x1f

    .line 246
    xor-int v3, p3, v6

    .line 247
    rsub-int/lit8 v14, v6, 0x20

    .line 248
    sub-int v6, p2, v14

    add-int v10, p3, v14

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v3, v19

    move-wide v5, v8

    move/from16 v8, v18

    .line 249
    :goto_2
    if-lez p3, :cond_1

    .line 250
    sub-long/2addr v3, v5

    const/16 v9, 0x2a

    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v9, -0x5a47a3a1e67127b7L

    mul-long/2addr v3, v9

    const/4 v9, 0x1

    aget-wide v9, v7, v9

    add-long/2addr v9, v3

    .line 251
    const/4 v3, 0x0

    aget-wide v11, v13, v3

    add-int v4, p3, v14

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v15

    add-long/2addr v11, v15

    aput-wide v11, v13, v3

    .line 252
    const/16 v3, 0x31

    invoke-static {v5, v6, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v5, -0x5a47a3a1e67127b7L

    mul-long/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v13, v5

    add-long v11, v3, v5

    .line 253
    const/4 v3, 0x0

    aget-wide v4, v13, v3

    const/4 v6, 0x0

    aget-wide v15, v7, v6

    add-long/2addr v4, v15

    aput-wide v4, v13, v3

    .line 254
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    const/4 v3, 0x0

    aget-wide v3, v7, v3

    const/4 v5, 0x1

    aget-wide v5, v7, v5

    invoke-static/range {v2 .. v7}, Lcom/google/a/e/m;->a(Ljava/nio/ByteBuffer;JJ[J)V

    .line 256
    add-int/lit8 v3, v8, -0x20

    .line 257
    add-int/lit8 p3, p3, -0x20

    move v8, v3

    move-wide v5, v11

    move-wide v3, v9

    goto :goto_2

    .line 263
    :cond_1
    const/4 v8, 0x0

    aget-wide v8, v7, v8

    invoke-static {v5, v6, v8, v9}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v5

    .line 264
    const/4 v8, 0x0

    aget-wide v8, v13, v8

    invoke-static {v3, v4, v8, v9}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v3

    .line 265
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    const/4 v8, 0x1

    aget-wide v8, v13, v8

    add-long/2addr v8, v5

    const/4 v10, 0x1

    aget-wide v10, v7, v10

    add-long/2addr v10, v3

    invoke-static {v8, v9, v10, v11}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x1

    aget-wide v9, v7, v9

    add-long/2addr v5, v9

    const/4 v7, 0x1

    aget-wide v9, v13, v7

    invoke-static {v5, v6, v9, v10}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v8, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 267
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 268
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 270
    invoke-static {v3}, Lcom/google/a/e/v;->a([B)Lcom/google/a/e/u;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    move-wide v3, v14

    move-wide/from16 p6, v11

    goto/16 :goto_1
.end method
