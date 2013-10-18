.class final Lcom/google/a/e/j;
.super Lcom/google/a/e/c;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/a/e/n;


# instance fields
.field private final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/google/a/e/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/a/e/k;->a:Lcom/google/a/e/k;

    :goto_0
    sput-object v0, Lcom/google/a/e/j;->b:Lcom/google/a/e/n;

    return-void

    :cond_0
    sget-object v0, Lcom/google/a/e/k;->b:Lcom/google/a/e/k;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/a/e/c;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/e/j;->a:[J

    .line 59
    return-void
.end method

.method static synthetic a(JJ)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a([BIIJJ)Lcom/google/a/e/u;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const/16 v2, 0x10

    move/from16 v0, p2

    if-gt v0, v2, :cond_4

    const-wide v2, -0x72a753d9501ed1b9L

    mul-long v4, p5, v2

    const/16 v2, 0x8

    move/from16 v0, p2

    if-le v0, v2, :cond_0

    invoke-static {p0, p1}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v2

    add-int v6, p1, p2

    add-int/lit8 v6, v6, -0x8

    invoke-static {p0, v6}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v6

    move/from16 v0, p2

    int-to-long v8, v0

    add-long/2addr v8, v6

    move/from16 v0, p2

    invoke-static {v8, v9, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v2

    xor-long/2addr v2, v6

    :goto_0
    add-long/2addr v4, v2

    const/16 v2, 0x8

    move/from16 v0, p2

    if-lt v0, v2, :cond_3

    invoke-static {p0, p1}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v2

    :goto_1
    add-long v2, v2, p3

    const/16 v6, 0x20

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    :goto_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v5}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v4

    move-wide/from16 v0, p5

    invoke-static {v2, v3, v0, v1}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v2

    const/16 v6, 0x10

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/google/a/e/af;->a([BIJ)V

    const/16 v7, 0x8

    xor-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Lcom/google/a/e/af;->a([BIJ)V

    invoke-static {v6}, Lcom/google/a/e/v;->a([B)Lcom/google/a/e/u;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x4

    move/from16 v0, p2

    if-lt v0, v2, :cond_1

    invoke-static {p0, p1}, Lcom/google/a/e/af;->b([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    move/from16 v0, p2

    int-to-long v6, v0

    const/4 v8, 0x3

    shl-long/2addr v2, v8

    add-long/2addr v2, v6

    add-int v6, p1, p2

    add-int/lit8 v6, v6, -0x4

    invoke-static {p0, v6}, Lcom/google/a/e/af;->b([BI)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    aget-byte v2, p0, p1

    shr-int/lit8 v3, p2, 0x1

    aget-byte v3, p0, v3

    add-int/lit8 v6, p2, -0x1

    aget-byte v6, p0, v6

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    and-int/lit16 v3, v6, 0xff

    shl-int/lit8 v3, v3, 0x2

    add-int v3, v3, p2

    int-to-long v6, v2

    const-wide v8, -0x3b849161c568f12dL

    mul-long/2addr v6, v8

    int-to-long v2, v3

    const-wide v8, -0x38f096f8187d55f5L

    mul-long/2addr v2, v8

    xor-long/2addr v2, v6

    const/16 v6, 0x2f

    ushr-long v6, v2, v6

    xor-long/2addr v2, v6

    const-wide v6, -0x3b849161c568f12dL

    mul-long/2addr v2, v6

    goto/16 :goto_0

    :cond_2
    const-wide v2, -0x3b849161c568f12dL

    goto/16 :goto_0

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1

    :cond_4
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x8

    invoke-static {p0, v2}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v2

    const-wide v4, -0x72a753d9501ed1b9L

    add-long/2addr v2, v4

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v4

    move/from16 v0, p2

    int-to-long v2, v0

    add-long v2, v2, p5

    add-int v6, p1, p2

    add-int/lit8 v6, v6, -0x10

    invoke-static {p0, v6}, Lcom/google/a/e/af;->a([BI)J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Lcom/google/a/e/j;->b(JJ)J

    move-result-wide v2

    add-long v6, p3, v2

    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move/from16 v0, p2

    invoke-virtual {v9, p0, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v8, p2, -0x10

    :cond_5
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    const-wide v12, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v12

    const/16 v12, 0x2f

    ushr-long v12, v10, v12

    xor-long/2addr v10, v12

    const-wide v12, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v12

    xor-long/2addr v6, v10

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v6, v10

    xor-long p5, p5, v6

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    const-wide v12, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v12

    const/16 v12, 0x2f

    ushr-long v12, v10, v12

    xor-long/2addr v10, v12

    const-wide v12, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v12

    xor-long/2addr v4, v10

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v10

    xor-long/2addr v2, v4

    add-int/lit8 v8, v8, -0x10

    if-gtz v8, :cond_5

    move-wide/from16 p3, v6

    goto/16 :goto_2
.end method

.method private static b(JJ)J
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x2f

    const-wide v4, -0x395b586ca42e166bL

    .line 371
    xor-long v0, p2, p0

    mul-long/2addr v0, v4

    .line 372
    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    .line 373
    xor-long/2addr v0, p0

    mul-long/2addr v0, v4

    .line 374
    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    .line 375
    mul-long/2addr v0, v4

    .line 376
    return-wide v0
.end method


# virtual methods
.method public final a([B)Lcom/google/a/e/u;
    .locals 1
    .parameter

    .prologue
    .line 63
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/e/j;->a([BI)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method

.method public final a([BI)Lcom/google/a/e/u;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    const-string/jumbo v0, "offset (%s) cannot be negative"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "length (%s) cannot be negative"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    add-int/lit8 v0, p2, 0x0

    array-length v3, p1

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "offset (%s) + length (%s) cannot be greater than the byte array length (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/google/a/e/j;->b:Lcom/google/a/e/n;

    iget-object v1, p0, Lcom/google/a/e/j;->a:[J

    invoke-interface {v0, p1, v2, p2, v1}, Lcom/google/a/e/n;->a([BII[J)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v0, v2

    .line 70
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "Hashing.cityHash128()"

    return-object v0
.end method
