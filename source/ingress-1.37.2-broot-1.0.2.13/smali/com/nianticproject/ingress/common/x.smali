.class public final Lcom/nianticproject/ingress/common/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[D

.field private final b:[D

.field private final c:[D

.field private final d:[D

.field private final e:[D

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x14

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x;->a:[D

    .line 21
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x;->b:[D

    .line 22
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x;->c:[D

    .line 23
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x;->d:[D

    .line 24
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x;->e:[D

    .line 25
    iput v2, p0, Lcom/nianticproject/ingress/common/x;->f:I

    .line 26
    iput v2, p0, Lcom/nianticproject/ingress/common/x;->g:I

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x;->h:J

    return-void
.end method

.method private a([D)D
    .locals 5
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/nianticproject/ingress/common/x;->g:I

    if-nez v0, :cond_0

    .line 104
    const-wide/high16 v0, 0x7ff8

    .line 111
    :goto_0
    return-wide v0

    .line 107
    :cond_0
    const-wide/16 v1, 0x0

    .line 108
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/nianticproject/ingress/common/x;->g:I

    if-ge v0, v3, :cond_1

    .line 109
    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/x;->g:I

    int-to-double v3, v0

    div-double v0, v1, v3

    goto :goto_0
.end method

.method private b([D)D
    .locals 9
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 115
    iget v0, p0, Lcom/nianticproject/ingress/common/x;->g:I

    if-nez v0, :cond_0

    .line 116
    const-wide/high16 v0, 0x7ff8

    .line 130
    :goto_0
    return-wide v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    move-wide v3, v1

    :goto_1
    iget v5, p0, Lcom/nianticproject/ingress/common/x;->g:I

    if-ge v0, v5, :cond_1

    .line 122
    aget-wide v5, p1, v0

    add-double/2addr v3, v5

    .line 123
    aget-wide v5, p1, v0

    aget-wide v7, p1, v0

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/x;->g:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 128
    iget v0, p0, Lcom/nianticproject/ingress/common/x;->g:I

    int-to-double v5, v0

    div-double v0, v1, v5

    .line 130
    mul-double v2, v3, v3

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public final a()D
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x;->a:[D

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x;->b([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a(DDDDJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/x;->h:J

    cmp-long v2, v2, p9

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/x;->a:[D

    iget v3, p0, Lcom/nianticproject/ingress/common/x;->f:I

    aput-wide p1, v2, v3

    .line 68
    iget-object v2, p0, Lcom/nianticproject/ingress/common/x;->b:[D

    iget v3, p0, Lcom/nianticproject/ingress/common/x;->f:I

    aput-wide p3, v2, v3

    .line 69
    iget-object v2, p0, Lcom/nianticproject/ingress/common/x;->d:[D

    iget v3, p0, Lcom/nianticproject/ingress/common/x;->f:I

    aput-wide p5, v2, v3

    .line 70
    iget-object v2, p0, Lcom/nianticproject/ingress/common/x;->c:[D

    iget v3, p0, Lcom/nianticproject/ingress/common/x;->f:I

    aput-wide p7, v2, v3

    .line 72
    iget v2, p0, Lcom/nianticproject/ingress/common/x;->g:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    .line 73
    iget v2, p0, Lcom/nianticproject/ingress/common/x;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/x;->g:I

    .line 78
    :cond_2
    iget v2, p0, Lcom/nianticproject/ingress/common/x;->g:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 79
    iget v2, p0, Lcom/nianticproject/ingress/common/x;->f:I

    if-nez v2, :cond_4

    const/16 v2, 0x13

    .line 80
    :goto_1
    iget-object v3, p0, Lcom/nianticproject/ingress/common/x;->a:[D

    aget-wide v6, v3, v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/x;->b:[D

    aget-wide v8, v3, v2

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v2 .. v9}, Lcom/nianticproject/ingress/shared/b/a;->a(DDDD)D

    move-result-wide v2

    .line 81
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/x;->h:J

    sub-long v4, p9, v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    .line 82
    iget-object v6, p0, Lcom/nianticproject/ingress/common/x;->e:[D

    iget v7, p0, Lcom/nianticproject/ingress/common/x;->f:I

    div-double v8, v2, v4

    aput-wide v8, v6, v7

    .line 83
    iget v6, p0, Lcom/nianticproject/ingress/common/x;->g:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 84
    iget-object v6, p0, Lcom/nianticproject/ingress/common/x;->e:[D

    const/4 v7, 0x0

    div-double/2addr v2, v4

    aput-wide v2, v6, v7

    .line 88
    :cond_3
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x;->h:J

    .line 89
    iget v2, p0, Lcom/nianticproject/ingress/common/x;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/x;->f:I

    .line 91
    iget v2, p0, Lcom/nianticproject/ingress/common/x;->f:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 92
    const/4 v2, 0x0

    iput v2, p0, Lcom/nianticproject/ingress/common/x;->f:I

    goto :goto_0

    .line 79
    :cond_4
    iget v2, p0, Lcom/nianticproject/ingress/common/x;->f:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x;->b:[D

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x;->b([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x;->d:[D

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x;->b([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x;->c:[D

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x;->b([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()D
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x;->e:[D

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x;->b([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final f()D
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x;->e:[D

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x;->a([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final g()D
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x;->a:[D

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x;->a([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/nianticproject/ingress/common/x;->g:I

    return v0
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/nianticproject/ingress/common/x;->f:I

    .line 98
    iput v0, p0, Lcom/nianticproject/ingress/common/x;->g:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/x;->h:J

    .line 100
    return-void
.end method
