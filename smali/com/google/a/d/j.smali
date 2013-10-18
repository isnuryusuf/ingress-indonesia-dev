.class public final Lcom/google/a/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/a/d/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final d:[J

.field private static final e:[I


# instance fields
.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x25

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 100
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lcom/google/a/d/j;->a:[I

    .line 101
    const/16 v1, 0x400

    new-array v1, v1, [I

    sput-object v1, Lcom/google/a/d/j;->b:[I

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    .line 110
    invoke-static/range {v0 .. v5}, Lcom/google/a/d/j;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v6

    move v4, v0

    move v5, v6

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/google/a/d/j;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v7

    move v4, v0

    move v5, v7

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/google/a/d/j;->a(IIIIII)V

    move v1, v0

    move v2, v0

    move v3, v8

    move v4, v0

    move v5, v8

    .line 113
    invoke-static/range {v0 .. v5}, Lcom/google/a/d/j;->a(IIIIII)V

    .line 629
    new-array v0, v9, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/a/d/j;->d:[J

    .line 644
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/a/d/j;->e:[I

    return-void

    .line 629
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x7ft
        0x55t 0x55t 0x55t 0x55t 0x55t 0x55t 0x55t 0x55t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x3ft
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x33t
        0xaat 0xaat 0xaat 0xaat 0xaat 0xaat 0xaat 0x2at
        0x92t 0x24t 0x49t 0x92t 0x24t 0x49t 0x92t 0x24t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x1ft
        0x71t 0x1ct 0xc7t 0x71t 0x1ct 0xc7t 0x71t 0x1ct
        0x99t 0x99t 0x99t 0x99t 0x99t 0x99t 0x99t 0x19t
        0xd1t 0x45t 0x17t 0x5dt 0x74t 0xd1t 0x45t 0x17t
        0x55t 0x55t 0x55t 0x55t 0x55t 0x55t 0x55t 0x15t
        0xb1t 0x13t 0x3bt 0xb1t 0x13t 0x3bt 0xb1t 0x13t
        0x49t 0x92t 0x24t 0x49t 0x92t 0x24t 0x49t 0x12t
        0x11t 0x11t 0x11t 0x11t 0x11t 0x11t 0x11t 0x11t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xft
        0xft 0xft 0xft 0xft 0xft 0xft 0xft 0xft
        0x38t 0x8et 0xe3t 0x38t 0x8et 0xe3t 0x38t 0xet
        0x35t 0x94t 0xd7t 0x50t 0x5et 0x43t 0x79t 0xdt
        0xcct 0xcct 0xcct 0xcct 0xcct 0xcct 0xcct 0xct
        0x30t 0xct 0xc3t 0x30t 0xct 0xc3t 0x30t 0xct
        0xe8t 0xa2t 0x8bt 0x2et 0xbat 0xe8t 0xa2t 0xbt
        0x16t 0xb2t 0x90t 0x85t 0x2ct 0x64t 0x21t 0xbt
        0xaat 0xaat 0xaat 0xaat 0xaat 0xaat 0xaat 0xat
        0x70t 0x3dt 0xat 0xd7t 0xa3t 0x70t 0x3dt 0xat
        0xd8t 0x89t 0x9dt 0xd8t 0x89t 0x9dt 0xd8t 0x9t
        0x25t 0xb4t 0x97t 0xd0t 0x5et 0x42t 0x7bt 0x9t
        0x24t 0x49t 0x92t 0x24t 0x49t 0x92t 0x24t 0x9t
        0x8t 0xcbt 0x3dt 0x8dt 0xb0t 0xdct 0xd3t 0x8t
        0x88t 0x88t 0x88t 0x88t 0x88t 0x88t 0x88t 0x8t
        0x10t 0x42t 0x8t 0x21t 0x84t 0x10t 0x42t 0x8t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0x7t
        0xf0t 0xc1t 0x7t 0x1ft 0x7ct 0xf0t 0xc1t 0x7t
        0x87t 0x87t 0x87t 0x87t 0x87t 0x87t 0x87t 0x7t
        0x50t 0x7t 0x75t 0x50t 0x7t 0x75t 0x50t 0x7t
        0x1ct 0xc7t 0x71t 0x1ct 0xc7t 0x71t 0x1ct 0x7t
    .end array-data

    .line 644
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public strictfp constructor <init>()V
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/d/j;->c:J

    .line 127
    return-void
.end method

.method public strictfp constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-wide p1, p0, Lcom/google/a/d/j;->c:J

    .line 123
    return-void
.end method

.method private static strictfp a(D)I
    .locals 8
    .parameter

    .prologue
    .line 922
    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x3fffffff

    const-wide/high16 v4, 0x41c0

    mul-double/2addr v4, p0

    const-wide v6, 0x41bfffffff800000L

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static strictfp a()Lcom/google/a/d/j;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/google/a/d/j;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    return-object v0
.end method

.method public static strictfp a(I)Lcom/google/a/d/j;
    .locals 5
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/google/a/d/j;

    int-to-long v1, p0

    const/16 v3, 0x3d

    shl-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v0

    return-object v0
.end method

.method private static strictfp a(III)Lcom/google/a/d/j;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 798
    new-array v2, v11, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v2, v10

    shl-int/lit8 v0, p0, 0x1c

    int-to-long v0, v0

    aput-wide v0, v2, v9

    .line 803
    and-int/lit8 v1, p0, 0x1

    .line 811
    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    .line 812
    mul-int/lit8 v3, v0, 0x4

    shr-int v3, p1, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    mul-int/lit8 v3, v0, 0x4

    shr-int v3, p2, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    sget-object v3, Lcom/google/a/d/j;->a:[I

    aget v1, v3, v1

    shr-int/lit8 v3, v0, 0x2

    aget-wide v4, v2, v3

    int-to-long v6, v1

    shr-long/2addr v6, v11

    and-int/lit8 v8, v0, 0x3

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x4

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    and-int/lit8 v1, v1, 0x3

    .line 811
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 815
    :cond_0
    new-instance v0, Lcom/google/a/d/j;

    aget-wide v3, v2, v9

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    aget-wide v1, v2, v10

    add-long/2addr v1, v3

    shl-long/2addr v1, v9

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    .line 816
    return-object v0
.end method

.method private static strictfp a(IIIZ)Lcom/google/a/d/j;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const-wide/high16 v5, 0x3e10

    const/high16 v4, 0x4000

    .line 970
    if-eqz p3, :cond_0

    .line 971
    invoke-static {p0, p1, p2}, Lcom/google/a/d/j;->a(III)Lcom/google/a/d/j;

    move-result-object v0

    .line 973
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v4

    int-to-double v2, v0

    mul-double/2addr v2, v5

    shl-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v4

    int-to-double v0, v0

    mul-double/2addr v0, v5

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/a/d/aa;->a(IDD)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/aa;->a(Lcom/google/a/d/y;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/google/a/d/aa;->a(ILcom/google/a/d/y;)Lcom/google/a/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/c;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/a/d/j;->a(D)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/a/d/c;->b()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/a/d/j;->a(D)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/a/d/j;->a(III)Lcom/google/a/d/j;

    move-result-object v0

    goto :goto_0
.end method

.method public static strictfp a(Lcom/google/a/d/u;)Lcom/google/a/d/j;
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v0

    return-object v0
.end method

.method public static strictfp a(Lcom/google/a/d/y;)Lcom/google/a/d/j;
    .locals 5
    .parameter

    .prologue
    .line 158
    invoke-static {p0}, Lcom/google/a/d/aa;->a(Lcom/google/a/d/y;)I

    move-result v0

    .line 159
    invoke-static {v0, p0}, Lcom/google/a/d/aa;->a(ILcom/google/a/d/y;)Lcom/google/a/d/c;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/google/a/d/c;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/a/d/aa;->b(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/a/d/j;->a(D)I

    move-result v2

    .line 161
    invoke-virtual {v1}, Lcom/google/a/d/c;->b()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/a/d/aa;->b(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/a/d/j;->a(D)I

    move-result v1

    .line 162
    invoke-static {v0, v2, v1}, Lcom/google/a/d/j;->a(III)Lcom/google/a/d/j;

    move-result-object v0

    return-object v0
.end method

.method private static strictfp a(IIIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1030
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 1031
    shl-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    .line 1032
    sget-object v1, Lcom/google/a/d/j;->a:[I

    shl-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v3, p4, 0x2

    add-int/2addr v3, p5

    aput v3, v1, v2

    .line 1033
    sget-object v1, Lcom/google/a/d/j;->b:[I

    shl-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p3

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    aput v0, v1, v2

    .line 1047
    :cond_0
    return-void

    .line 1035
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .line 1036
    shl-int/lit8 v7, p1, 0x1

    .line 1037
    shl-int/lit8 v8, p2, 0x1

    .line 1038
    shl-int/lit8 v9, p4, 0x2

    .line 1040
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v6, v1, :cond_0

    .line 1041
    invoke-static {p5, v6}, Lcom/google/a/d/f;->a(II)I

    move-result v2

    .line 1042
    invoke-static {v6}, Lcom/google/a/d/f;->a(I)I

    move-result v3

    .line 1043
    ushr-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v7

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v8

    add-int v4, v9, v6

    xor-int v5, p5, v3

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/a/d/j;->a(IIIIII)V

    .line 1040
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0
.end method

.method private static strictfp a(JJ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/high16 v2, -0x8000

    .line 990
    add-long v0, p0, v2

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static strictfp b(JJ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/high16 v2, -0x8000

    .line 997
    add-long v0, p0, v2

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static strictfp e(I)J
    .locals 3
    .parameter

    .prologue
    .line 913
    const-wide/16 v0, 0x1

    rsub-int/lit8 v2, p0, 0x1e

    mul-int/lit8 v2, v2, 0x2

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static strictfp n()Lcom/google/a/d/j;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-static {v1}, Lcom/google/a/d/j;->a(I)Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->c(I)Lcom/google/a/d/j;

    move-result-object v0

    return-object v0
.end method

.method public static strictfp o()Lcom/google/a/d/j;
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/a/d/j;->a(I)Lcom/google/a/d/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->d(I)Lcom/google/a/d/j;

    move-result-object v0

    return-object v0
.end method

.method private strictfp q()Lcom/google/a/d/y;
    .locals 9

    .prologue
    const/high16 v8, 0x4000

    const-wide/high16 v6, 0x3e10

    .line 199
    new-instance v1, Lcom/google/a/d/a;

    invoke-direct {v1}, Lcom/google/a/d/a;-><init>()V

    .line 200
    new-instance v2, Lcom/google/a/d/a;

    invoke-direct {v2}, Lcom/google/a/d/a;-><init>()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/a/d/j;->a(Lcom/google/a/d/a;Lcom/google/a/d/a;Lcom/google/a/d/a;)I

    move-result v3

    .line 203
    invoke-virtual {p0}, Lcom/google/a/d/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 205
    :goto_0
    invoke-virtual {v1}, Lcom/google/a/d/a;->a()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    sub-int/2addr v1, v8

    .line 206
    invoke-virtual {v2}, Lcom/google/a/d/a;->a()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    sub-int/2addr v0, v8

    .line 207
    int-to-double v1, v1

    mul-double/2addr v1, v6

    invoke-static {v1, v2}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v1

    int-to-double v4, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v4

    invoke-static {v3, v1, v2, v4, v5}, Lcom/google/a/d/aa;->a(IDD)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    invoke-virtual {v1}, Lcom/google/a/d/a;->a()I

    move-result v0

    iget-wide v4, p0, Lcom/google/a/d/j;->c:J

    long-to-int v4, v4

    ushr-int/lit8 v4, v4, 0x2

    xor-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final strictfp a(Lcom/google/a/d/a;Lcom/google/a/d/a;Lcom/google/a/d/a;)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x7

    .line 840
    invoke-virtual {p0}, Lcom/google/a/d/j;->e()I

    move-result v4

    .line 841
    and-int/lit8 v1, v4, 0x1

    move v2, v3

    .line 853
    :goto_0
    if-ltz v2, :cond_1

    .line 854
    if-ne v2, v3, :cond_0

    const/4 v0, 0x2

    :goto_1
    iget-wide v5, p0, Lcom/google/a/d/j;->c:J

    mul-int/lit8 v7, v2, 0x2

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x1

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    const/4 v6, 0x1

    mul-int/lit8 v0, v0, 0x2

    shl-int v0, v6, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v5

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/a/d/j;->b:[I

    aget v0, v1, v0

    invoke-virtual {p1}, Lcom/google/a/d/a;->a()I

    move-result v1

    shr-int/lit8 v5, v0, 0x6

    mul-int/lit8 v6, v2, 0x4

    shl-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Lcom/google/a/d/a;->a(I)V

    invoke-virtual {p2}, Lcom/google/a/d/a;->a()I

    move-result v1

    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0xf

    mul-int/lit8 v6, v2, 0x4

    shl-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-virtual {p2, v1}, Lcom/google/a/d/a;->a(I)V

    and-int/lit8 v1, v0, 0x3

    .line 853
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 854
    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    .line 858
    :cond_1
    if-eqz p3, :cond_2

    .line 868
    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v2

    const-wide v5, 0x1111111111111110L

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_3

    .line 869
    xor-int/lit8 v0, v1, 0x1

    .line 871
    :goto_2
    invoke-virtual {p3, v0}, Lcom/google/a/d/a;->a(I)V

    .line 873
    :cond_2
    return v4

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final strictfp a(ILjava/util/Collection;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/a/d/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v10, 0x4000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 686
    new-instance v6, Lcom/google/a/d/a;

    invoke-direct {v6}, Lcom/google/a/d/a;-><init>()V

    .line 687
    new-instance v7, Lcom/google/a/d/a;

    invoke-direct {v7}, Lcom/google/a/d/a;-><init>()V

    .line 688
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v7, v0}, Lcom/google/a/d/j;->a(Lcom/google/a/d/a;Lcom/google/a/d/a;Lcom/google/a/d/a;)I

    move-result v8

    .line 693
    add-int/lit8 v0, p1, 0x1

    rsub-int/lit8 v0, v0, 0x1e

    shl-int v5, v1, v0

    .line 694
    shl-int/lit8 v3, v5, 0x1

    .line 697
    invoke-virtual {v6}, Lcom/google/a/d/a;->a()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_3

    .line 699
    invoke-virtual {v6}, Lcom/google/a/d/a;->a()I

    move-result v0

    add-int/2addr v0, v3

    if-ge v0, v10, :cond_2

    move v0, v1

    :goto_0
    move v4, v0

    move v0, v3

    .line 704
    :goto_1
    invoke-virtual {v7}, Lcom/google/a/d/a;->a()I

    move-result v9

    and-int/2addr v5, v9

    if-eqz v5, :cond_6

    .line 706
    invoke-virtual {v7}, Lcom/google/a/d/a;->a()I

    move-result v5

    add-int/2addr v5, v3

    if-ge v5, v10, :cond_5

    move v5, v1

    .line 712
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {v6}, Lcom/google/a/d/a;->a()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v7}, Lcom/google/a/d/a;->a()I

    move-result v10

    invoke-static {v8, v9, v10, v4}, Lcom/google/a/d/j;->a(IIIZ)Lcom/google/a/d/j;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-virtual {v6}, Lcom/google/a/d/a;->a()I

    move-result v9

    invoke-virtual {v7}, Lcom/google/a/d/a;->a()I

    move-result v10

    add-int/2addr v10, v3

    invoke-static {v8, v9, v10, v5}, Lcom/google/a/d/j;->a(IIIZ)Lcom/google/a/d/j;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 721
    if-nez v4, :cond_0

    if-eqz v5, :cond_1

    .line 722
    :cond_0
    invoke-virtual {v6}, Lcom/google/a/d/a;->a()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v7}, Lcom/google/a/d/a;->a()I

    move-result v6

    add-int/2addr v3, v6

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    :goto_3
    invoke-static {v8, v0, v3, v1}, Lcom/google/a/d/j;->a(IIIZ)Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 699
    goto :goto_0

    .line 701
    :cond_3
    neg-int v4, v3

    .line 702
    invoke-virtual {v6}, Lcom/google/a/d/a;->a()I

    move-result v0

    sub-int/2addr v0, v3

    if-ltz v0, :cond_4

    move v0, v1

    :goto_4
    move v11, v4

    move v4, v0

    move v0, v11

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v5, v2

    .line 706
    goto :goto_2

    .line 708
    :cond_6
    neg-int v5, v3

    .line 709
    invoke-virtual {v7}, Lcom/google/a/d/a;->a()I

    move-result v9

    sub-int v3, v9, v3

    if-ltz v3, :cond_7

    move v3, v1

    :goto_5
    move v11, v5

    move v5, v3

    move v3, v11

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_5

    :cond_8
    move v1, v2

    .line 722
    goto :goto_3
.end method

.method public final strictfp a(Lcom/google/a/d/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/j;->d(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/j;->c(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp b(I)Lcom/google/a/d/j;
    .locals 7
    .parameter

    .prologue
    .line 345
    invoke-static {p1}, Lcom/google/a/d/j;->e(I)J

    move-result-wide v0

    .line 346
    new-instance v2, Lcom/google/a/d/j;

    iget-wide v3, p0, Lcom/google/a/d/j;->c:J

    neg-long v5, v0

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Lcom/google/a/d/j;-><init>(J)V

    return-object v2
.end method

.method public final strictfp b()Lcom/google/a/d/y;
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/a/d/j;->q()Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp b(Lcom/google/a/d/j;)Z
    .locals 2
    .parameter

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->c(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->d(Lcom/google/a/d/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp c(I)Lcom/google/a/d/j;
    .locals 5
    .parameter

    .prologue
    .line 394
    new-instance v0, Lcom/google/a/d/j;

    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {p1}, Lcom/google/a/d/j;->e(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    return-object v0
.end method

.method public final strictfp c()Lcom/google/a/d/u;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/google/a/d/u;

    invoke-direct {p0}, Lcom/google/a/d/j;->q()Lcom/google/a/d/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/y;)V

    return-object v0
.end method

.method public final strictfp c(Lcom/google/a/d/j;)Z
    .locals 4
    .parameter

    .prologue
    .line 1009
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    iget-wide v2, p1, Lcom/google/a/d/j;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/j;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    iget-wide v2, p1, Lcom/google/a/d/j;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 60
    check-cast p1, Lcom/google/a/d/j;

    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    iget-wide v2, p1, Lcom/google/a/d/j;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/j;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    iget-wide v2, p1, Lcom/google/a/d/j;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/j;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp d()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    return-wide v0
.end method

.method public final strictfp d(I)Lcom/google/a/d/j;
    .locals 5
    .parameter

    .prologue
    .line 405
    new-instance v0, Lcom/google/a/d/j;

    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {p1}, Lcom/google/a/d/j;->e(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    return-object v0
.end method

.method public final strictfp d(Lcom/google/a/d/j;)Z
    .locals 4
    .parameter

    .prologue
    .line 1013
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    iget-wide v2, p1, Lcom/google/a/d/j;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/j;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    iget-wide v2, p1, Lcom/google/a/d/j;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp e()I
    .locals 3

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    const/16 v2, 0x3d

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 979
    instance-of v1, p1, Lcom/google/a/d/j;

    if-nez v1, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v0

    .line 982
    :cond_1
    check-cast p1, Lcom/google/a/d/j;

    .line 983
    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    iget-wide v3, p1, Lcom/google/a/d/j;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp f()I
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/a/d/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const/16 v0, 0x1e

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    long-to-int v1, v0

    .line 246
    const/4 v0, -0x1

    .line 247
    if-eqz v1, :cond_5

    .line 248
    const/16 v0, 0xf

    .line 254
    :goto_1
    neg-int v2, v1

    and-int/2addr v1, v2

    .line 255
    and-int/lit16 v2, v1, 0x5555

    if-eqz v2, :cond_2

    .line 256
    add-int/lit8 v0, v0, 0x8

    .line 258
    :cond_2
    const v2, 0x550055

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 259
    add-int/lit8 v0, v0, 0x4

    .line 261
    :cond_3
    const v2, 0x5050505

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 262
    add-int/lit8 v0, v0, 0x2

    .line 264
    :cond_4
    const v2, 0x11111111

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_5
    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_1
.end method

.method public final strictfp g()Z
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp h()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    invoke-static {v0}, Lcom/google/a/d/j;->e(I)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final strictfp hashCode()I
    .locals 4

    .prologue
    .line 1018
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/a/d/j;->c:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final strictfp i()Lcom/google/a/d/j;
    .locals 7

    .prologue
    .line 312
    new-instance v0, Lcom/google/a/d/j;

    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    return-object v0
.end method

.method public final strictfp j()Lcom/google/a/d/j;
    .locals 7

    .prologue
    .line 316
    new-instance v0, Lcom/google/a/d/j;

    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    return-object v0
.end method

.method public final strictfp k()Lcom/google/a/d/j;
    .locals 7

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v0

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    .line 336
    new-instance v2, Lcom/google/a/d/j;

    iget-wide v3, p0, Lcom/google/a/d/j;->c:J

    neg-long v5, v0

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Lcom/google/a/d/j;-><init>(J)V

    return-object v2
.end method

.method public final strictfp l()Lcom/google/a/d/j;
    .locals 6

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v0

    .line 389
    new-instance v2, Lcom/google/a/d/j;

    iget-wide v3, p0, Lcom/google/a/d/j;->c:J

    sub-long/2addr v3, v0

    const/4 v5, 0x2

    ushr-long/2addr v0, v5

    add-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Lcom/google/a/d/j;-><init>(J)V

    return-object v2
.end method

.method public final strictfp m()Lcom/google/a/d/j;
    .locals 6

    .prologue
    .line 427
    new-instance v0, Lcom/google/a/d/j;

    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    invoke-virtual {p0}, Lcom/google/a/d/j;->p()J

    move-result-wide v3

    const/4 v5, 0x1

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/j;-><init>(J)V

    return-object v0
.end method

.method public final strictfp p()J
    .locals 4

    .prologue
    .line 903
    iget-wide v0, p0, Lcom/google/a/d/j;->c:J

    iget-wide v2, p0, Lcom/google/a/d/j;->c:J

    neg-long v2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(face="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/j;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/a/d/j;->c:J

    const-wide v3, 0x1fffffffffffffffL

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/d/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
