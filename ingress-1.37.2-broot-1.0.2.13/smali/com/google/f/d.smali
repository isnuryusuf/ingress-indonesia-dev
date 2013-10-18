.class public final Lcom/google/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>([BI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/f/d;->d:Ljava/io/OutputStream;

    .line 79
    iput-object p1, p0, Lcom/google/f/d;->a:[B

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/f/d;->c:I

    .line 81
    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/google/f/d;->b:I

    .line 82
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 438
    invoke-static {p0}, Lcom/google/f/d;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static a(Lcom/google/f/c;)I
    .locals 2
    .parameter

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/f/c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/f/d;->g(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/f/c;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a([BI)Lcom/google/f/d;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/google/f/d;

    invoke-direct {v0, p0, p1}, Lcom/google/f/d;-><init>([BI)V

    return-object v0
.end method

.method private a(J)V
    .locals 4
    .parameter

    .prologue
    .line 1004
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1005
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/f/d;->d(I)V

    .line 1006
    return-void

    .line 1008
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/f/d;->d(I)V

    .line 1009
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/f/d;->e(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static b(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-static {p0}, Lcom/google/f/d;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/f/d;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 454
    invoke-static {p0}, Lcom/google/f/d;->e(I)I

    move-result v1

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v2, -0x2

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(ILcom/google/f/c;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-static {p0}, Lcom/google/f/d;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/f/d;->a(Lcom/google/f/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/f/i;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-static {p0}, Lcom/google/f/d;->e(I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/f/i;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/f/d;->g(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 796
    iget-object v0, p0, Lcom/google/f/d;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/google/f/e;

    invoke-direct {v0}, Lcom/google/f/e;-><init>()V

    throw v0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/google/f/d;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/f/d;->a:[B

    iget v2, p0, Lcom/google/f/d;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    iput v3, p0, Lcom/google/f/d;->c:I

    .line 805
    return-void
.end method

.method public static c(I)I
    .locals 1
    .parameter

    .prologue
    .line 656
    if-ltz p0, :cond_0

    .line 657
    invoke-static {p0}, Lcom/google/f/d;->g(I)I

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 964
    invoke-static {p1, p2}, Lcom/google/f/l;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/f/d;->f(I)V

    .line 965
    return-void
.end method

.method private d(I)V
    .locals 4
    .parameter

    .prologue
    .line 870
    int-to-byte v0, p1

    iget v1, p0, Lcom/google/f/d;->c:I

    iget v2, p0, Lcom/google/f/d;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/f/d;->b()V

    :cond_0
    iget-object v1, p0, Lcom/google/f/d;->a:[B

    iget v2, p0, Lcom/google/f/d;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/f/d;->c:I

    aput-byte v0, v1, v2

    .line 871
    return-void
.end method

.method private static e(I)I
    .locals 1
    .parameter

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/f/l;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/f/d;->g(I)I

    move-result v0

    return v0
.end method

.method private f(I)V
    .locals 1
    .parameter

    .prologue
    .line 978
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 979
    invoke-direct {p0, p1}, Lcom/google/f/d;->d(I)V

    .line 980
    return-void

    .line 982
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/f/d;->d(I)V

    .line 983
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method private static g(I)I
    .locals 1
    .parameter

    .prologue
    .line 994
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 998
    :goto_0
    return v0

    .line 995
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 996
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 997
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 998
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/f/d;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 823
    iget v0, p0, Lcom/google/f/d;->b:I

    iget v1, p0, Lcom/google/f/d;->c:I

    sub-int/2addr v0, v1

    return v0

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(IF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/google/f/d;->c(II)V

    .line 145
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lcom/google/f/d;->d(I)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lcom/google/f/d;->d(I)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lcom/google/f/d;->d(I)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/f/d;->d(I)V

    .line 146
    return-void
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/f/d;->c(II)V

    .line 166
    if-ltz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/f/d;->f(I)V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/f/d;->a(J)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/f/d;->c(II)V

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/google/f/d;->a(J)V

    .line 160
    return-void
.end method

.method public final a(ILcom/google/f/c;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 228
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/f/d;->c(II)V

    .line 229
    invoke-virtual {p2}, Lcom/google/f/c;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/f/d;->f(I)V

    invoke-virtual {p2}, Lcom/google/f/c;->a()I

    move-result v0

    iget v1, p0, Lcom/google/f/d;->b:I

    iget v2, p0, Lcom/google/f/d;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/f/d;->a:[B

    iget v2, p0, Lcom/google/f/d;->c:I

    invoke-virtual {p2, v1, v7, v2, v0}, Lcom/google/f/c;->a([BIII)V

    iget v1, p0, Lcom/google/f/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/f/d;->c:I

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget v1, p0, Lcom/google/f/d;->b:I

    iget v2, p0, Lcom/google/f/d;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/f/d;->a:[B

    iget v3, p0, Lcom/google/f/d;->c:I

    invoke-virtual {p2, v2, v7, v3, v1}, Lcom/google/f/c;->a([BIII)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/f/d;->b:I

    iput v1, p0, Lcom/google/f/d;->c:I

    invoke-direct {p0}, Lcom/google/f/d;->b()V

    iget v1, p0, Lcom/google/f/d;->b:I

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/f/d;->a:[B

    invoke-virtual {p2, v1, v2, v7, v0}, Lcom/google/f/c;->a([BIII)V

    iput v0, p0, Lcom/google/f/d;->c:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/f/c;->c()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v3, v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/google/f/d;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/google/f/d;->a:[B

    invoke-virtual {v2, v4, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_0

    iget v2, p0, Lcom/google/f/d;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/f/d;->a:[B

    invoke-virtual {v1, v3, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILcom/google/f/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/f/d;->c(II)V

    .line 222
    invoke-interface {p2}, Lcom/google/f/i;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/f/d;->f(I)V

    invoke-interface {p2, p0}, Lcom/google/f/i;->a(Lcom/google/f/d;)V

    .line 223
    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/google/f/d;->c(II)V

    .line 187
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/f/d;->d(I)V

    .line 188
    return-void
.end method
