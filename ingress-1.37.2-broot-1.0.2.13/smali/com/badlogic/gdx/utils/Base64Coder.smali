.class public Lcom/badlogic/gdx/utils/Base64Coder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static map1:[C = null

.field private static map2:[B = null

.field private static final systemLineSeparator:Ljava/lang/String; = "\n"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v1, 0x0

    .line 36
    new-array v0, v5, [C

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    .line 39
    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    .line 40
    sget-object v4, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 39
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    .line 41
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 42
    sget-object v4, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 41
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    .line 43
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 44
    sget-object v4, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 43
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    .line 45
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    .line 46
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    .line 50
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    move v0, v1

    .line 52
    :goto_3
    sget-object v2, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 53
    sget-object v2, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 54
    :cond_3
    :goto_4
    if-ge v1, v5, :cond_4

    .line 55
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    sget-object v2, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 56
    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 2
    .parameter

    .prologue
    .line 187
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x41

    const/16 v11, 0x7f

    .line 198
    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    .line 200
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 201
    :cond_1
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v6, v0, 0x4

    .line 202
    new-array v7, v6, [B

    .line 204
    add-int v8, p1, p2

    .line 205
    const/4 v0, 0x0

    move v5, v0

    .line 206
    :goto_1
    if-ge p1, v8, :cond_8

    .line 207
    add-int/lit8 v1, p1, 0x1

    aget-char v9, p0, p1

    .line 208
    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    .line 209
    if-ge v0, v8, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    .line 210
    :goto_2
    if-ge v0, v8, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    .line 211
    :goto_3
    if-gt v9, v11, :cond_2

    if-gt v10, v11, :cond_2

    if-gt v4, v11, :cond_2

    if-le v0, v11, :cond_5

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v4, v2

    .line 209
    goto :goto_2

    :cond_4
    move v3, v0

    move v0, v2

    .line 210
    goto :goto_3

    .line 213
    :cond_5
    sget-object v1, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v1, v1, v9

    .line 214
    sget-object v9, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v9, v9, v10

    .line 215
    sget-object v10, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v4, v10, v4

    .line 216
    sget-object v10, Lcom/badlogic/gdx/utils/Base64Coder;->map2:[B

    aget-byte v0, v10, v0

    .line 217
    if-ltz v1, :cond_6

    if-ltz v9, :cond_6

    if-ltz v4, :cond_6

    if-gez v0, :cond_7

    .line 218
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_7
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v1, v10

    .line 220
    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v10, v4, 0x2

    or-int/2addr v9, v10

    .line 221
    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    .line 222
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v7, v5

    .line 223
    if-ge v0, v6, :cond_a

    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v9

    aput-byte v5, v7, v0

    .line 224
    :goto_4
    if-ge v1, v6, :cond_9

    add-int/lit8 v0, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    :goto_5
    move v5, v0

    move p1, v3

    .line 225
    goto :goto_1

    .line 226
    :cond_8
    return-object v7

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    move v1, v0

    goto :goto_4
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    .line 165
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 167
    const/16 v3, 0x20

    if-eq v5, v3, :cond_0

    const/16 v3, 0xd

    if-eq v5, v3, :cond_0

    const/16 v3, 0xa

    if-eq v5, v3, :cond_0

    const/16 v3, 0x9

    if-eq v5, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-char v5, v4, v2

    move v2, v3

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {v4, v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 153
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 2
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x3d

    const/4 v1, 0x0

    .line 123
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    .line 124
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 125
    new-array v7, v0, [C

    .line 127
    add-int v8, p1, p2

    move v5, v1

    .line 129
    :goto_0
    if-ge p1, v8, :cond_4

    .line 130
    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v9, v2, 0xff

    .line 131
    if-ge v0, v8, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    .line 132
    :goto_1
    if-ge v0, v8, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 133
    :goto_2
    ushr-int/lit8 v10, v9, 0x2

    .line 134
    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    .line 135
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    .line 136
    and-int/lit8 v11, v0, 0x3f

    .line 137
    add-int/lit8 v0, v5, 0x1

    sget-object v12, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v10, v12, v10

    aput-char v10, v7, v5

    .line 138
    add-int/lit8 v5, v0, 0x1

    sget-object v10, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v9, v10, v9

    aput-char v9, v7, v0

    .line 139
    if-ge v5, v6, :cond_2

    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v7, v5

    .line 140
    add-int/lit8 v4, v5, 0x1

    .line 141
    if-ge v4, v6, :cond_3

    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->map1:[C

    aget-char v0, v0, v11

    :goto_4
    aput-char v0, v7, v4

    .line 142
    add-int/lit8 v0, v4, 0x1

    move v5, v0

    move p1, v2

    .line 143
    goto :goto_0

    :cond_0
    move v4, v1

    .line 131
    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    .line 132
    goto :goto_2

    :cond_2
    move v0, v3

    .line 139
    goto :goto_3

    :cond_3
    move v0, v3

    .line 141
    goto :goto_4

    .line 144
    :cond_4
    return-object v7
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p0

    const/16 v2, 0x4c

    const-string/jumbo v3, "\n"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v1, v0, 0x4

    .line 85
    if-gtz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_0
    add-int v0, p2, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    .line 87
    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 88
    new-instance v2, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 89
    const/4 v0, 0x0

    .line 90
    :goto_0
    if-ge v0, p2, :cond_1

    .line 91
    sub-int v3, p2, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 92
    add-int v4, p1, v0

    invoke-static {p0, v4, v3}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII)[C

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 93
    invoke-virtual {v2, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 94
    add-int/2addr v0, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
