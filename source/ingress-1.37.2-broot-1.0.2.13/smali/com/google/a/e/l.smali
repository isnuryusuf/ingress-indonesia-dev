.class final enum Lcom/google/a/e/l;
.super Lcom/google/a/e/k;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0, v0}, Lcom/google/a/e/k;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private static a([BIJJ[J)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v0

    .line 180
    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v2

    .line 181
    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v4

    .line 182
    add-int/lit8 v6, p1, 0x18

    invoke-static {p0, v6}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v6

    .line 184
    add-long/2addr v0, p2

    .line 185
    add-long v8, p4, v0

    add-long/2addr v8, v6

    const/16 v10, 0x33

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    .line 187
    add-long/2addr v2, v0

    .line 188
    add-long/2addr v2, v4

    .line 189
    const/16 v4, 0x17

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v8

    .line 190
    const/4 v8, 0x0

    add-long/2addr v2, v6

    aput-wide v2, p6, v8

    .line 191
    const/4 v2, 0x1

    add-long/2addr v0, v4

    aput-wide v0, p6, v2

    .line 192
    return-void
.end method


# virtual methods
.method protected final a([BIIJJ)Lcom/google/a/e/u;
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const/16 v1, 0x80

    move/from16 v0, p3

    if-ge v0, v1, :cond_0

    .line 116
    invoke-static/range {p1 .. p7}, Lcom/google/a/e/j;->a([BIIJJ)Lcom/google/a/e/u;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 119
    :cond_0
    const/16 v1, 0x10

    new-array v0, v1, [B

    move-object/from16 v22, v0

    .line 120
    const/4 v1, 0x2

    new-array v7, v1, [J

    const/4 v1, 0x2

    new-array v14, v1, [J

    .line 121
    move/from16 v0, p3

    int-to-long v1, v0

    const-wide v3, -0x72a753d9501ed1b9L

    mul-long/2addr v1, v3

    .line 122
    const/4 v3, 0x0

    const-wide v4, -0x72a753d9501ed1b9L

    xor-long v4, v4, p6

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v8

    invoke-static/range {p1 .. p2}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v8

    add-long/2addr v4, v8

    aput-wide v4, v7, v3

    .line 123
    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-wide v4, v7, v4

    const/16 v6, 0x2a

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v8

    add-long/2addr v4, v8

    aput-wide v4, v7, v3

    .line 124
    const/4 v3, 0x0

    add-long v4, p6, v1

    const/16 v6, 0x23

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v8

    add-long v4, v4, p4

    aput-wide v4, v14, v3

    .line 125
    const/4 v3, 0x1

    add-int/lit8 v4, p2, 0x58

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v4

    add-long v4, v4, p4

    const/16 v6, 0x35

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v8

    aput-wide v4, v14, v3

    move-wide v3, v1

    move/from16 v2, p2

    .line 129
    :goto_1
    add-long v5, p4, p6

    const/4 v1, 0x0

    aget-wide v8, v7, v1

    add-long/2addr v5, v8

    add-int/lit8 v1, v2, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v8

    add-long/2addr v5, v8

    const/16 v1, 0x25

    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    .line 130
    const/4 v1, 0x1

    aget-wide v8, v7, v1

    add-long v8, v8, p6

    add-int/lit8 v1, v2, 0x30

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v1, 0x2a

    invoke-static {v8, v9, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v8, v10

    .line 131
    const/4 v1, 0x1

    aget-wide v10, v14, v1

    xor-long v15, v5, v10

    .line 132
    const/4 v1, 0x0

    aget-wide v5, v7, v1

    xor-long v12, v8, v5

    .line 133
    const/4 v1, 0x0

    aget-wide v5, v14, v1

    xor-long/2addr v3, v5

    const/16 v1, 0x21

    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v17

    .line 134
    const/4 v1, 0x1

    aget-wide v3, v7, v1

    const-wide v5, -0x72a753d9501ed1b9L

    mul-long/2addr v3, v5

    const/4 v1, 0x0

    aget-wide v5, v14, v1

    add-long/2addr v5, v15

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/a/e/l;->a([BIJJ[J)V

    .line 135
    add-int/lit8 v9, v2, 0x20

    const/4 v1, 0x1

    aget-wide v3, v14, v1

    add-long v10, v17, v3

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Lcom/google/a/e/l;->a([BIJJ[J)V

    .line 136
    add-long v3, v17, v12

    const/4 v1, 0x0

    aget-wide v5, v7, v1

    add-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x50

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/16 v1, 0x25

    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v5, -0x72a753d9501ed1b9L

    mul-long/2addr v3, v5

    .line 137
    const/4 v1, 0x1

    aget-wide v5, v7, v1

    add-long/2addr v5, v12

    add-int/lit8 v1, v2, 0x70

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v8

    add-long/2addr v5, v8

    const/16 v1, 0x2a

    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long/2addr v5, v8

    .line 138
    const/4 v1, 0x1

    aget-wide v8, v14, v1

    xor-long/2addr v3, v8

    .line 139
    const/4 v1, 0x0

    aget-wide v8, v7, v1

    xor-long v12, v5, v8

    .line 140
    const/4 v1, 0x0

    aget-wide v5, v14, v1

    xor-long/2addr v5, v15

    const/16 v1, 0x21

    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    .line 141
    add-int/lit8 v16, v2, 0x40

    const/4 v1, 0x1

    aget-wide v5, v7, v1

    const-wide v8, -0x72a753d9501ed1b9L

    mul-long v17, v5, v8

    const/4 v1, 0x0

    aget-wide v5, v14, v1

    add-long v19, v3, v5

    move-object/from16 v15, p1

    move-object/from16 v21, v7

    invoke-static/range {v15 .. v21}, Lcom/google/a/e/l;->a([BIJJ[J)V

    .line 142
    add-int/lit8 v9, v2, 0x60

    const/4 v1, 0x1

    aget-wide v5, v14, v1

    add-long v10, p4, v5

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Lcom/google/a/e/l;->a([BIJJ[J)V

    .line 143
    add-int/lit16 v2, v2, 0x80

    .line 144
    add-int/lit8 p3, p3, -0x80

    .line 145
    const/16 v1, 0x80

    move/from16 v0, p3

    if-ge v0, v1, :cond_2

    .line 147
    const/4 v1, 0x0

    aget-wide v5, v14, v1

    const/16 v1, 0x25

    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    const-wide v8, -0x5a47a3a1e67127b7L

    mul-long/2addr v5, v8

    add-long/2addr v5, v3

    add-long/2addr v5, v12

    .line 148
    const/4 v1, 0x0

    aget-wide v8, v7, v1

    add-long/2addr v3, v8

    const/16 v1, 0x31

    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v8, -0x5a47a3a1e67127b7L

    mul-long/2addr v3, v8

    add-long v3, v3, p4

    .line 151
    add-int/lit8 v1, p3, -0x20

    add-int/2addr v2, v1

    move-wide/from16 v23, v5

    move-wide v5, v3

    move-wide/from16 v3, v23

    .line 152
    :goto_2
    if-lez p3, :cond_1

    .line 153
    sub-long/2addr v3, v5

    const/16 v1, 0x2a

    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v8, -0x5a47a3a1e67127b7L

    mul-long/2addr v3, v8

    const/4 v1, 0x1

    aget-wide v8, v7, v1

    add-long/2addr v8, v3

    .line 154
    const/4 v1, 0x0

    aget-wide v3, v14, v1

    add-int/lit8 v10, v2, 0x10

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v10

    add-long/2addr v3, v10

    aput-wide v3, v14, v1

    .line 155
    const/16 v1, 0x31

    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    const-wide v5, -0x5a47a3a1e67127b7L

    mul-long/2addr v3, v5

    const/4 v1, 0x0

    aget-wide v5, v14, v1

    add-long v10, v3, v5

    .line 156
    const/4 v1, 0x0

    aget-wide v3, v14, v1

    const/4 v5, 0x0

    aget-wide v5, v7, v5

    add-long/2addr v3, v5

    aput-wide v3, v14, v1

    .line 157
    const/4 v1, 0x0

    aget-wide v3, v7, v1

    const/4 v1, 0x1

    aget-wide v5, v7, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/a/e/l;->a([BIJJ[J)V

    .line 158
    add-int/lit8 v2, v2, -0x20

    .line 159
    add-int/lit8 p3, p3, -0x20

    move-wide v3, v8

    move-wide v5, v10

    goto :goto_2

    .line 165
    :cond_1
    const/4 v1, 0x0

    aget-wide v1, v7, v1

    invoke-static {v5, v6, v1, v2}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v1

    .line 166
    const/4 v5, 0x0

    aget-wide v5, v14, v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v3

    .line 167
    const/4 v5, 0x0

    const/4 v6, 0x1

    aget-wide v8, v14, v6

    add-long/2addr v8, v1

    const/4 v6, 0x1

    aget-wide v10, v7, v6

    add-long/2addr v10, v3

    invoke-static {v8, v9, v10, v11}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v8

    move-object/from16 v0, v22

    invoke-static {v0, v5, v8, v9}, Lcom/google/a/e/af;->a([BIJ)V

    .line 168
    const/16 v5, 0x8

    const/4 v6, 0x1

    aget-wide v6, v7, v6

    add-long/2addr v1, v6

    const/4 v6, 0x1

    aget-wide v6, v14, v6

    invoke-static {v1, v2, v6, v7}, Lcom/google/a/e/j;->a(JJ)J

    move-result-wide v1

    add-long/2addr v1, v3

    move-object/from16 v0, v22

    invoke-static {v0, v5, v1, v2}, Lcom/google/a/e/af;->a([BIJ)V

    .line 169
    invoke-static/range {v22 .. v22}, Lcom/google/a/e/v;->a([B)Lcom/google/a/e/u;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    move-wide/from16 p6, v12

    goto/16 :goto_1
.end method
