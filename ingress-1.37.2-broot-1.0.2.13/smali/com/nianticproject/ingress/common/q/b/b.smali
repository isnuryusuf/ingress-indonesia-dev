.class public Lcom/nianticproject/ingress/common/q/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:[B

.field private final c:I

.field private d:I

.field private e:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/nianticproject/ingress/common/q/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nianticproject/ingress/common/q/b/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 28
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/q/b/b;-><init>([BI)V

    .line 29
    return-void
.end method

.method private constructor <init>([BI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-boolean v0, Lcom/nianticproject/ingress/common/q/b/b;->a:Z

    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    .line 46
    add-int/lit8 v0, p2, 0x0

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length v0, p1

    add-int/lit8 p2, v0, 0x0

    :cond_0
    iput p2, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    .line 48
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->e:[C

    .line 49
    return-void
.end method

.method private static a([B[CII)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x80

    .line 226
    move v0, v1

    move v2, v1

    .line 229
    :goto_0
    if-ge v2, p3, :cond_8

    .line 230
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v2, p0, v2

    int-to-char v2, v2

    aput-char v2, p1, v0

    if-ge v2, v7, :cond_0

    .line 231
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 232
    :cond_0
    aget-char v5, p1, v0

    and-int/lit16 v2, v5, 0xe0

    const/16 v4, 0xc0

    if-ne v2, v4, :cond_3

    .line 233
    if-lt v3, p3, :cond_1

    .line 234
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Second byte at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not match UTF8 specification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int v2, p2, v3

    aget-byte v3, p0, v2

    .line 238
    and-int/lit16 v2, v3, 0xc0

    if-eq v2, v7, :cond_2

    .line 239
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Second byte at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not match UTF8 specification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, p1, v0

    move v0, v2

    move v2, v4

    .line 243
    goto :goto_0

    :cond_3
    and-int/lit16 v2, v5, 0xf0

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_7

    .line 244
    add-int/lit8 v2, v3, 0x1

    if-lt v2, p3, :cond_4

    .line 245
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Third byte at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not match UTF8 specification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_4
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, p2

    aget-byte v4, p0, v3

    .line 249
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v6, p0, v2

    .line 250
    and-int/lit16 v2, v4, 0xc0

    if-ne v2, v7, :cond_5

    and-int/lit16 v2, v6, 0xc0

    if-eq v2, v7, :cond_6

    .line 251
    :cond_5
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Second or third byte at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not match UTF8 specification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_6
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v0

    move v0, v2

    move v2, v3

    .line 255
    goto/16 :goto_0

    .line 256
    :cond_7
    new-instance v0, Ljava/io/UTFDataFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Input at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not match UTF8 specification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method


# virtual methods
.method public readBoolean()Z
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByte()B
    .locals 3

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 65
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readChar()C
    .locals 4

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v0, v0, v1

    .line 73
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    .line 74
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    .line 76
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/q/b/b;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/q/b/b;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/q/b/b;->readFully([BII)V

    .line 93
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    if-nez p3, :cond_0

    .line 109
    :goto_0
    return-void

    .line 100
    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 103
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    .line 104
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    .line 105
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    goto :goto_0
.end method

.method public readInt()I
    .locals 6

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v0, v0, v1

    .line 115
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 116
    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 117
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v4, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v3, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0xff

    .line 118
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0

    .line 120
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 126
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    .line 131
    if-ne v1, v4, :cond_2

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 134
    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_3

    .line 135
    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    .line 137
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    if-ne v1, v2, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readLong()J
    .locals 19

    .prologue
    .line 150
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    .line 153
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    .line 154
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v16, v16, v17
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 159
    const/16 v18, 0x38

    shl-long v2, v2, v18

    const/16 v18, 0x30

    shl-long v4, v4, v18

    or-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v8, v4

    or-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long v4, v10, v4

    or-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long v4, v12, v4

    or-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long v4, v14, v4

    or-long/2addr v2, v4

    or-long v2, v2, v16

    return-wide v2

    .line 162
    :catch_0
    move-exception v2

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readShort()S
    .locals 4

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v0, v0, v1

    .line 170
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    .line 171
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 173
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/q/b/b;->readUnsignedShort()I

    move-result v1

    .line 180
    if-nez v1, :cond_0

    .line 181
    const-string/jumbo v0, ""

    .line 192
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1

    .line 184
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    .line 185
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->e:[C

    array-length v0, v0

    if-le v1, v0, :cond_2

    .line 188
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->e:[C

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->e:[C

    iget v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    invoke-static {v0, v2, v3, v1}, Lcom/nianticproject/ingress/common/q/b/b;->a([B[CII)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    goto :goto_0
.end method

.method public readUnsignedByte()I
    .locals 3

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 200
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 4

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 208
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->b:[B

    iget v2, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    .line 209
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 211
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)I
    .locals 2
    .parameter

    .prologue
    .line 217
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 218
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->c:I

    iget v1, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    sub-int p1, v0, v1

    .line 220
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/b;->d:I

    .line 221
    return p1
.end method
