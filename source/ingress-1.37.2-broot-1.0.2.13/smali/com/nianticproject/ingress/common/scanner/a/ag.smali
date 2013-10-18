.class public final Lcom/nianticproject/ingress/common/scanner/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

.field private b:I

.field private final c:Lcom/nianticproject/ingress/common/scanner/a/ah;

.field private d:I

.field private e:I

.field private final f:[Lcom/nianticproject/ingress/common/scanner/a/ai;

.field private g:I

.field private final h:[Lcom/nianticproject/ingress/common/scanner/a/ai;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/a/aj;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    move v0, v1

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/a/aj;

    invoke-direct {v3, v1}, Lcom/nianticproject/ingress/common/scanner/a/aj;-><init>(B)V

    aput-object v3, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    new-array v0, v4, [Lcom/nianticproject/ingress/common/scanner/a/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->f:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    .line 136
    new-array v0, v4, [Lcom/nianticproject/ingress/common/scanner/a/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->h:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    move v0, v1

    .line 137
    :goto_1
    if-ge v0, v4, :cond_1

    .line 138
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->f:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/a/ai;

    invoke-direct {v3, v1}, Lcom/nianticproject/ingress/common/scanner/a/ai;-><init>(B)V

    aput-object v3, v2, v0

    .line 139
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->h:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/a/ai;

    invoke-direct {v3, v1}, Lcom/nianticproject/ingress/common/scanner/a/ai;-><init>(B)V

    aput-object v3, v2, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/ah;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/ah;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->c:Lcom/nianticproject/ingress/common/scanner/a/ah;

    .line 143
    return-void
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 243
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/nianticproject/ingress/common/scanner/a/aj;Lcom/nianticproject/ingress/common/scanner/a/aj;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x3e7ad7f29abcaf48L

    .line 289
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iget-wide v4, p1, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-wide v6, p1, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    sub-double v0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(IIILa/a/a/a/b/bw;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    :goto_0
    if-gt p0, p1, :cond_0

    .line 169
    const/16 v0, 0x11

    invoke-static {v0, p0, p2}, Lcom/nianticproject/ingress/common/q/c;->a(III)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, La/a/a/a/b/bw;->d(J)Z

    .line 168
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    .line 151
    return-void
.end method

.method public final a(DD)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    aget-object v0, v0, v1

    iput-wide p1, v0, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iput-wide p3, v0, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    .line 161
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(La/a/a/a/b/bw;)V
    .locals 33
    .parameter

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/a/a/an;->b(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->d:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->e:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->c:Lcom/nianticproject/ingress/common/scanner/a/ah;

    iget-object v3, v2, Lcom/nianticproject/ingress/common/scanner/a/ah;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-object v4, v2, Lcom/nianticproject/ingress/common/scanner/a/ah;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    const-wide v5, 0x7fefffffffffffffL

    iput-wide v5, v4, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iput-wide v5, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-object v3, v2, Lcom/nianticproject/ingress/common/scanner/a/ah;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/scanner/a/ah;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    const-wide v4, -0x10000000000001L

    iput-wide v4, v2, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iput-wide v4, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->b:I

    if-ge v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v3, v3, v2

    iget-wide v4, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    const-wide/high16 v6, 0x3f20

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-wide v4, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    const-wide/high16 v6, 0x3f20

    mul-double/2addr v4, v6

    iput-wide v4, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->c:Lcom/nianticproject/ingress/common/scanner/a/ah;

    iget-wide v5, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-object v7, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v7, v7, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_5

    iget-object v5, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v6, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iput-wide v6, v5, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    :cond_0
    :goto_2
    iget-wide v5, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iget-object v7, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v7, v7, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_6

    iget-object v4, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v5, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iput-wide v5, v4, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->d:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/scanner/a/ag;->a(Lcom/nianticproject/ingress/common/scanner/a/aj;Lcom/nianticproject/ingress/common/scanner/a/aj;)I

    move-result v4

    if-gez v4, :cond_2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->d:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->e:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/scanner/a/ag;->a(Lcom/nianticproject/ingress/common/scanner/a/aj;Lcom/nianticproject/ingress/common/scanner/a/aj;)I

    move-result v3

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->e:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    iget-wide v5, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iget-object v7, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v7, v7, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    iget-object v5, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v6, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    iput-wide v6, v5, Lcom/nianticproject/ingress/common/scanner/a/aj;->a:D

    goto :goto_2

    :cond_6
    iget-wide v5, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iget-object v7, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v7, v7, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    iget-object v4, v4, Lcom/nianticproject/ingress/common/scanner/a/ah;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v5, v3, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    iput-wide v5, v4, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->g:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->d:I

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->e:I

    if-eq v2, v3, :cond_9

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/ag;->a(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v4, v4, v3

    iget-wide v4, v4, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v6, v6, v2

    iget-wide v6, v6, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e7ad7f29abcaf48L

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->f:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->g:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->g:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v5, v5, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v2, v6, v2

    invoke-virtual {v4, v5, v2}, Lcom/nianticproject/ingress/common/scanner/a/ai;->a(Lcom/nianticproject/ingress/common/scanner/a/aj;Lcom/nianticproject/ingress/common/scanner/a/aj;)V

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->i:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->d:I

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->e:I

    if-eq v2, v3, :cond_b

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/ag;->a(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v6, v6, v3

    iget-wide v6, v6, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e7ad7f29abcaf48L

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->h:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->i:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->i:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v2, v5, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    aget-object v5, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/nianticproject/ingress/common/scanner/a/ai;->a(Lcom/nianticproject/ingress/common/scanner/a/aj;Lcom/nianticproject/ingress/common/scanner/a/aj;)V

    :cond_a
    move v2, v3

    goto :goto_5

    .line 181
    :cond_b
    invoke-virtual/range {p1 .. p1}, La/a/a/a/b/bw;->clear()V

    .line 184
    const/4 v11, 0x0

    .line 185
    const/4 v10, 0x0

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->d:I

    aget-object v2, v2, v3

    iget-wide v8, v2, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->a:[Lcom/nianticproject/ingress/common/scanner/a/aj;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->e:I

    aget-object v2, v2, v3

    iget-wide v0, v2, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    move-wide/from16 v18, v0

    .line 191
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v6, v2

    .line 192
    const-wide v4, 0x7fffffffffffffffL

    .line 193
    const-wide/high16 v2, -0x8000

    .line 194
    :cond_c
    :goto_6
    cmpg-double v8, v8, v18

    if-gtz v8, :cond_10

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->g:I

    if-ge v11, v8, :cond_10

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->i:I

    if-ge v10, v8, :cond_10

    .line 195
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->f:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    aget-object v20, v8, v11

    .line 196
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/a/ag;->h:[Lcom/nianticproject/ingress/common/scanner/a/ai;

    aget-object v21, v8, v10

    .line 198
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/nianticproject/ingress/common/scanner/a/ai;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v8, v8, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/nianticproject/ingress/common/scanner/a/ai;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v12, v12, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 199
    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/nianticproject/ingress/common/scanner/a/ai;->a:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v0, v12, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    move-wide/from16 v22, v0

    .line 200
    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/nianticproject/ingress/common/scanner/a/ai;->b:Lcom/nianticproject/ingress/common/scanner/a/aj;

    iget-wide v0, v12, Lcom/nianticproject/ingress/common/scanner/a/aj;->b:D

    move-wide/from16 v24, v0

    .line 201
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v26

    .line 203
    :goto_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/nianticproject/ingress/common/scanner/a/ai;->a(D)D

    move-result-wide v12

    .line 204
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lcom/nianticproject/ingress/common/scanner/a/ai;->a(D)D

    move-result-wide v14

    .line 206
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-long v0, v12

    move-wide/from16 v28, v0

    .line 207
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-long v0, v12

    move-wide/from16 v30, v0

    .line 208
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 209
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 210
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 212
    cmp-long v32, v16, v6

    if-eqz v32, :cond_d

    .line 213
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    long-to-int v3, v6

    move-object/from16 v0, p1

    invoke-static {v4, v2, v3, v0}, Lcom/nianticproject/ingress/common/scanner/a/ag;->a(IIILa/a/a/a/b/bw;)V

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    .line 223
    :goto_8
    cmpl-double v12, v8, v26

    if-eqz v12, :cond_e

    .line 224
    const-wide/high16 v12, 0x3ff0

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    goto :goto_7

    .line 219
    :cond_d
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 220
    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_8

    .line 230
    :cond_e
    cmpl-double v12, v8, v22

    if-ltz v12, :cond_f

    .line 231
    add-int/lit8 v11, v11, 0x1

    .line 233
    :cond_f
    cmpl-double v12, v8, v24

    if-ltz v12, :cond_c

    .line 234
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 237
    :cond_10
    cmp-long v8, v4, v2

    if-gtz v8, :cond_11

    .line 238
    long-to-int v4, v4

    long-to-int v2, v2

    long-to-int v3, v6

    move-object/from16 v0, p1

    invoke-static {v4, v2, v3, v0}, Lcom/nianticproject/ingress/common/scanner/a/ag;->a(IIILa/a/a/a/b/bw;)V

    .line 240
    :cond_11
    return-void
.end method
