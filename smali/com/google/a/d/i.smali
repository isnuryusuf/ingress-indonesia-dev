.class public final Lcom/google/a/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/d/ad;


# static fields
.field private static final k:D


# instance fields
.field a:B

.field b:B

.field c:B

.field d:Lcom/google/a/d/j;

.field e:D

.field f:D

.field g:D

.field h:D

.field i:D

.field j:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 308
    const-wide v0, 0x3fd5555555555555L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3cc0

    sub-double/2addr v0, v2

    sput-wide v0, Lcom/google/a/d/i;->k:D

    return-void
.end method

.method strictfp constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public strictfp constructor <init>(Lcom/google/a/d/j;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/google/a/d/i;->a(Lcom/google/a/d/j;)V

    .line 54
    return-void
.end method

.method public strictfp constructor <init>(Lcom/google/a/d/u;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/google/a/d/j;->a(Lcom/google/a/d/u;)Lcom/google/a/d/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/d/i;->a(Lcom/google/a/d/j;)V

    .line 68
    return-void
.end method

.method public static strictfp a(I)Lcom/google/a/d/i;
    .locals 2
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/google/a/d/i;

    invoke-static {p0}, Lcom/google/a/d/j;->a(I)Lcom/google/a/d/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/i;-><init>(Lcom/google/a/d/j;)V

    return-object v0
.end method

.method private strictfp a(II)Lcom/google/a/d/y;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 435
    iget-byte v4, p0, Lcom/google/a/d/i;->a:B

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/i;->e:D

    move-wide v2, v0

    :goto_0
    if-nez p2, :cond_1

    iget-wide v0, p0, Lcom/google/a/d/i;->g:D

    :goto_1
    invoke-static {v4, v2, v3, v0, v1}, Lcom/google/a/d/aa;->a(IDD)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/d/i;->f:D

    move-wide v2, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/a/d/i;->h:D

    goto :goto_1
.end method

.method private strictfp a(DDDD)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-wide p1, p0, Lcom/google/a/d/i;->e:D

    .line 417
    iput-wide p3, p0, Lcom/google/a/d/i;->g:D

    .line 418
    iput-wide p5, p0, Lcom/google/a/d/i;->f:D

    .line 419
    iput-wide p7, p0, Lcom/google/a/d/i;->h:D

    .line 422
    new-instance v0, Lcom/google/a/d/a;

    invoke-direct {v0}, Lcom/google/a/d/a;-><init>()V

    .line 423
    new-instance v1, Lcom/google/a/d/a;

    invoke-direct {v1}, Lcom/google/a/d/a;-><init>()V

    .line 424
    iget-object v2, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/a/d/j;->a(Lcom/google/a/d/a;Lcom/google/a/d/a;Lcom/google/a/d/a;)I

    .line 425
    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/google/a/d/i;->b:B

    rsub-int/lit8 v3, v3, 0x1e

    shl-int/2addr v2, v3

    .line 427
    invoke-virtual {v0}, Lcom/google/a/d/a;->a()I

    move-result v0

    neg-int v3, v2

    and-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    const/high16 v3, 0x4000

    sub-int/2addr v0, v3

    .line 428
    const-wide/high16 v3, 0x3e10

    int-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/a/d/i;->i:D

    .line 430
    invoke-virtual {v1}, Lcom/google/a/d/a;->a()I

    move-result v0

    neg-int v1, v2

    and-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    const/high16 v1, 0x4000

    sub-int/2addr v0, v1

    .line 431
    const-wide/high16 v1, 0x3e10

    int-to-double v3, v0

    mul-double v0, v1, v3

    invoke-static {v0, v1}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/a/d/i;->j:D

    .line 432
    return-void
.end method

.method private strictfp a(Lcom/google/a/d/j;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const-wide/high16 v9, 0x3e10

    .line 391
    iput-object p1, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    .line 392
    new-instance v0, Lcom/google/a/d/a;

    invoke-direct {v0}, Lcom/google/a/d/a;-><init>()V

    .line 393
    new-instance v1, Lcom/google/a/d/a;

    invoke-direct {v1}, Lcom/google/a/d/a;-><init>()V

    .line 394
    new-instance v2, Lcom/google/a/d/a;

    invoke-direct {v2}, Lcom/google/a/d/a;-><init>()V

    .line 396
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/d/j;->a(Lcom/google/a/d/a;Lcom/google/a/d/a;Lcom/google/a/d/a;)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/google/a/d/i;->a:B

    .line 397
    invoke-virtual {v2}, Lcom/google/a/d/a;->a()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/google/a/d/i;->c:B

    .line 398
    invoke-virtual {p1}, Lcom/google/a/d/j;->f()I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/google/a/d/i;->b:B

    .line 399
    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/google/a/d/i;->b:B

    rsub-int/lit8 v3, v3, 0x1e

    shl-int/2addr v2, v3

    .line 401
    invoke-virtual {v0}, Lcom/google/a/d/a;->a()I

    move-result v0

    neg-int v3, v2

    and-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    .line 402
    mul-int/lit8 v3, v2, 0x2

    add-int v5, v0, v3

    .line 403
    invoke-virtual {v1}, Lcom/google/a/d/a;->a()I

    move-result v1

    neg-int v3, v2

    and-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, v1, v4

    .line 404
    mul-int/lit8 v1, v2, 0x2

    add-int v7, v3, v1

    .line 405
    int-to-double v0, v0

    mul-double/2addr v0, v9

    invoke-static {v0, v1}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v1

    int-to-double v3, v3

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v3

    int-to-double v5, v5

    mul-double/2addr v5, v9

    invoke-static {v5, v6}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v5

    int-to-double v7, v7

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Lcom/google/a/d/aa;->a(D)D

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/a/d/i;->a(DDDD)V

    .line 410
    return-void
.end method

.method private strictfp b(II)D
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lcom/google/a/d/i;->a(II)Lcom/google/a/d/y;

    move-result-object v0

    .line 442
    iget-wide v1, v0, Lcom/google/a/d/y;->j:D

    iget-wide v3, v0, Lcom/google/a/d/y;->h:D

    iget-wide v5, v0, Lcom/google/a/d/y;->h:D

    mul-double/2addr v3, v5

    iget-wide v5, v0, Lcom/google/a/d/y;->i:D

    iget-wide v7, v0, Lcom/google/a/d/y;->i:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private strictfp c(II)D
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Lcom/google/a/d/i;->a(II)Lcom/google/a/d/y;

    move-result-object v0

    .line 447
    iget-wide v1, v0, Lcom/google/a/d/y;->i:D

    iget-wide v3, v0, Lcom/google/a/d/y;->h:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static strictfp d(I)D
    .locals 2
    .parameter

    .prologue
    .line 206
    sget-object v0, Lcom/google/a/d/aa;->c:Lcom/google/a/d/g;

    invoke-virtual {v0, p0}, Lcom/google/a/d/g;->a(I)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final strictfp a()Lcom/google/a/d/j;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    return-object v0
.end method

.method public final strictfp a(Lcom/google/a/d/i;)Z
    .locals 2
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    iget-object v1, p1, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->a(Lcom/google/a/d/j;)Z

    move-result v0

    return v0
.end method

.method public final strictfp a(Lcom/google/a/d/y;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-byte v1, p0, Lcom/google/a/d/i;->a:B

    invoke-static {v1, p1}, Lcom/google/a/d/aa;->b(ILcom/google/a/d/y;)Lcom/google/a/d/c;

    move-result-object v1

    .line 377
    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/a/d/c;->a()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/a/d/i;->e:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/a/d/c;->a()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/a/d/i;->f:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/a/d/c;->b()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/a/d/i;->g:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/a/d/c;->b()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/a/d/i;->h:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp a([Lcom/google/a/d/i;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    invoke-virtual {v1}, Lcom/google/a/d/j;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    invoke-virtual {v1}, Lcom/google/a/d/j;->l()Lcom/google/a/d/j;

    move-result-object v1

    move v9, v0

    move-object v10, v1

    .line 148
    :goto_1
    const/4 v0, 0x4

    if-ge v9, v0, :cond_3

    .line 149
    aget-object v0, p1, v9

    .line 150
    iget-byte v1, p0, Lcom/google/a/d/i;->a:B

    iput-byte v1, v0, Lcom/google/a/d/i;->a:B

    .line 151
    iget-byte v1, p0, Lcom/google/a/d/i;->b:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/google/a/d/i;->b:B

    .line 152
    iget-byte v1, p0, Lcom/google/a/d/i;->c:B

    invoke-static {v9}, Lcom/google/a/d/f;->a(I)I

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/google/a/d/i;->c:B

    .line 153
    iput-object v10, v0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    .line 154
    iget-byte v1, p0, Lcom/google/a/d/i;->c:B

    invoke-static {v1, v9}, Lcom/google/a/d/f;->a(II)I

    move-result v3

    .line 157
    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_1

    .line 158
    iget-wide v1, p0, Lcom/google/a/d/i;->i:D

    .line 159
    iget-wide v5, p0, Lcom/google/a/d/i;->f:D

    .line 165
    :goto_2
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 166
    iget-wide v3, p0, Lcom/google/a/d/i;->j:D

    .line 167
    iget-wide v7, p0, Lcom/google/a/d/i;->h:D

    .line 172
    :goto_3
    invoke-direct/range {v0 .. v8}, Lcom/google/a/d/i;->a(DDDD)V

    .line 148
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v10}, Lcom/google/a/d/j;->m()Lcom/google/a/d/j;

    move-result-object v1

    move v9, v0

    move-object v10, v1

    goto :goto_1

    .line 161
    :cond_1
    iget-wide v1, p0, Lcom/google/a/d/i;->e:D

    .line 162
    iget-wide v5, p0, Lcom/google/a/d/i;->i:D

    goto :goto_2

    .line 169
    :cond_2
    iget-wide v3, p0, Lcom/google/a/d/i;->g:D

    .line 170
    iget-wide v7, p0, Lcom/google/a/d/i;->j:D

    goto :goto_3

    .line 174
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp b()B
    .locals 1

    .prologue
    .line 80
    iget-byte v0, p0, Lcom/google/a/d/i;->b:B

    return v0
.end method

.method public final strictfp b(I)Lcom/google/a/d/y;
    .locals 5
    .parameter

    .prologue
    .line 92
    iget-byte v4, p0, Lcom/google/a/d/i;->a:B

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/a/d/i;->e:D

    move-wide v2, v0

    :goto_0
    shr-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/a/d/i;->g:D

    :goto_1
    invoke-static {v4, v2, v3, v0, v1}, Lcom/google/a/d/aa;->a(IDD)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/d/i;->f:D

    move-wide v2, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/a/d/i;->h:D

    goto :goto_1
.end method

.method public final strictfp b(Lcom/google/a/d/i;)Z
    .locals 2
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    iget-object v1, p1, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->b(Lcom/google/a/d/j;)Z

    move-result v0

    return v0
.end method

.method public final strictfp c()Lcom/google/a/d/v;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide v7, 0x3fe921fb54442d18L

    const-wide/16 v9, 0x0

    const-wide v5, -0x4016de04abbbd2e8L

    .line 314
    iget-byte v0, p0, Lcom/google/a/d/i;->b:B

    if-lez v0, :cond_8

    .line 326
    iget-wide v3, p0, Lcom/google/a/d/i;->e:D

    iget-wide v5, p0, Lcom/google/a/d/i;->f:D

    add-double/2addr v3, v5

    .line 327
    iget-wide v5, p0, Lcom/google/a/d/i;->g:D

    iget-wide v7, p0, Lcom/google/a/d/i;->h:D

    add-double/2addr v5, v7

    .line 328
    iget-byte v0, p0, Lcom/google/a/d/i;->a:B

    invoke-static {v0}, Lcom/google/a/d/aa;->a(I)Lcom/google/a/d/y;

    move-result-object v0

    iget-wide v7, v0, Lcom/google/a/d/y;->j:D

    cmpl-double v0, v7, v9

    if-nez v0, :cond_3

    cmpg-double v0, v3, v9

    if-gez v0, :cond_2

    move v0, v1

    .line 329
    :goto_0
    iget-byte v3, p0, Lcom/google/a/d/i;->a:B

    invoke-static {v3}, Lcom/google/a/d/aa;->b(I)Lcom/google/a/d/y;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/a/d/y;->j:D

    cmpl-double v3, v3, v9

    if-nez v3, :cond_6

    cmpg-double v3, v5, v9

    if-gez v3, :cond_5

    .line 332
    :cond_0
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/a/d/i;->b(II)D

    move-result-wide v2

    rsub-int/lit8 v4, v0, 0x1

    rsub-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v5}, Lcom/google/a/d/i;->b(II)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/a/d/b;->a(DD)Lcom/google/a/d/b;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Lcom/google/a/d/b;->e()Lcom/google/a/d/b;

    move-result-object v2

    invoke-static {}, Lcom/google/a/d/v;->b()Lcom/google/a/d/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/a/d/b;->d(Lcom/google/a/d/b;)Lcom/google/a/d/b;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Lcom/google/a/d/b;->a()D

    move-result-wide v3

    const-wide v5, -0x4006de04abbbd2e8L

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/a/d/b;->b()D

    move-result-wide v3

    const-wide v5, 0x3ff921fb54442d18L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_7

    .line 335
    :cond_1
    new-instance v0, Lcom/google/a/d/v;

    invoke-static {}, Lcom/google/a/d/e;->b()Lcom/google/a/d/e;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    .line 361
    :goto_2
    return-object v0

    :cond_2
    move v0, v2

    .line 328
    goto :goto_0

    :cond_3
    cmpl-double v0, v3, v9

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    .line 329
    goto :goto_1

    :cond_6
    cmpl-double v3, v5, v9

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_1

    .line 337
    :cond_7
    rsub-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v3}, Lcom/google/a/d/i;->c(II)D

    move-result-wide v3

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/a/d/i;->c(II)D

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Lcom/google/a/d/e;->a(DD)Lcom/google/a/d/e;

    move-result-object v1

    .line 338
    new-instance v0, Lcom/google/a/d/v;

    invoke-virtual {v1}, Lcom/google/a/d/e;->h()Lcom/google/a/d/e;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    goto :goto_2

    .line 344
    :cond_8
    iget-byte v0, p0, Lcom/google/a/d/i;->a:B

    packed-switch v0, :pswitch_data_0

    .line 361
    new-instance v0, Lcom/google/a/d/v;

    new-instance v1, Lcom/google/a/d/b;

    const-wide v2, -0x4006de04abbbd2e8L

    sget-wide v4, Lcom/google/a/d/i;->k:D

    neg-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/a/d/b;-><init>(DD)V

    new-instance v2, Lcom/google/a/d/e;

    const-wide v3, -0x3ff6de04abbbd2e8L

    const-wide v5, 0x400921fb54442d18L

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/e;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    goto :goto_2

    .line 346
    :pswitch_0
    new-instance v0, Lcom/google/a/d/v;

    new-instance v1, Lcom/google/a/d/b;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/a/d/b;-><init>(DD)V

    new-instance v2, Lcom/google/a/d/e;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/google/a/d/e;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    goto :goto_2

    .line 349
    :pswitch_1
    new-instance v0, Lcom/google/a/d/v;

    new-instance v1, Lcom/google/a/d/b;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/a/d/b;-><init>(DD)V

    new-instance v2, Lcom/google/a/d/e;

    const-wide v3, 0x4002d97c7f3321d2L

    invoke-direct {v2, v7, v8, v3, v4}, Lcom/google/a/d/e;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    goto :goto_2

    .line 352
    :pswitch_2
    new-instance v0, Lcom/google/a/d/v;

    new-instance v1, Lcom/google/a/d/b;

    sget-wide v2, Lcom/google/a/d/i;->k:D

    const-wide v4, 0x3ff921fb54442d18L

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/a/d/b;-><init>(DD)V

    new-instance v2, Lcom/google/a/d/e;

    const-wide v3, -0x3ff6de04abbbd2e8L

    const-wide v5, 0x400921fb54442d18L

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/e;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    goto/16 :goto_2

    .line 355
    :pswitch_3
    new-instance v0, Lcom/google/a/d/v;

    new-instance v1, Lcom/google/a/d/b;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/a/d/b;-><init>(DD)V

    new-instance v2, Lcom/google/a/d/e;

    const-wide v3, 0x4002d97c7f3321d2L

    const-wide v5, -0x3ffd268380ccde2eL

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/e;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    goto/16 :goto_2

    .line 358
    :pswitch_4
    new-instance v0, Lcom/google/a/d/v;

    new-instance v1, Lcom/google/a/d/b;

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/google/a/d/b;-><init>(DD)V

    new-instance v2, Lcom/google/a/d/e;

    const-wide v3, -0x3ffd268380ccde2eL

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/a/d/e;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    goto/16 :goto_2

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final strictfp c(I)Lcom/google/a/d/y;
    .locals 3
    .parameter

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 120
    iget-byte v0, p0, Lcom/google/a/d/i;->a:B

    iget-wide v1, p0, Lcom/google/a/d/i;->e:D

    invoke-static {v0, v1, v2}, Lcom/google/a/d/aa;->a(ID)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    :goto_0
    return-object v0

    .line 114
    :pswitch_0
    iget-byte v0, p0, Lcom/google/a/d/i;->a:B

    iget-wide v1, p0, Lcom/google/a/d/i;->g:D

    invoke-static {v0, v1, v2}, Lcom/google/a/d/aa;->b(ID)Lcom/google/a/d/y;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_1
    iget-byte v0, p0, Lcom/google/a/d/i;->a:B

    iget-wide v1, p0, Lcom/google/a/d/i;->f:D

    invoke-static {v0, v1, v2}, Lcom/google/a/d/aa;->a(ID)Lcom/google/a/d/y;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_2
    iget-byte v0, p0, Lcom/google/a/d/i;->a:B

    iget-wide v1, p0, Lcom/google/a/d/i;->h:D

    invoke-static {v0, v1, v2}, Lcom/google/a/d/aa;->b(ID)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->a(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/google/a/d/i;

    invoke-direct {v0}, Lcom/google/a/d/i;-><init>()V

    iget-byte v1, p0, Lcom/google/a/d/i;->a:B

    iput-byte v1, v0, Lcom/google/a/d/i;->a:B

    iget-byte v1, p0, Lcom/google/a/d/i;->b:B

    iput-byte v1, v0, Lcom/google/a/d/i;->b:B

    iget-byte v1, p0, Lcom/google/a/d/i;->c:B

    iput-byte v1, v0, Lcom/google/a/d/i;->c:B

    iget-wide v1, p0, Lcom/google/a/d/i;->e:D

    iput-wide v1, v0, Lcom/google/a/d/i;->e:D

    iget-wide v1, p0, Lcom/google/a/d/i;->i:D

    iput-wide v1, v0, Lcom/google/a/d/i;->i:D

    iget-wide v1, p0, Lcom/google/a/d/i;->f:D

    iput-wide v1, v0, Lcom/google/a/d/i;->f:D

    iget-wide v1, p0, Lcom/google/a/d/i;->g:D

    iput-wide v1, v0, Lcom/google/a/d/i;->g:D

    iget-wide v1, p0, Lcom/google/a/d/i;->j:D

    iput-wide v1, v0, Lcom/google/a/d/i;->j:D

    iget-wide v1, p0, Lcom/google/a/d/i;->h:D

    iput-wide v1, v0, Lcom/google/a/d/i;->h:D

    return-object v0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 467
    instance-of v1, p1, Lcom/google/a/d/i;

    if-eqz v1, :cond_0

    .line 468
    check-cast p1, Lcom/google/a/d/i;

    .line 469
    iget-byte v1, p0, Lcom/google/a/d/i;->a:B

    iget-byte v2, p1, Lcom/google/a/d/i;->a:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Lcom/google/a/d/i;->b:B

    iget-byte v2, p1, Lcom/google/a/d/i;->b:B

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Lcom/google/a/d/i;->c:B

    iget-byte v2, p1, Lcom/google/a/d/i;->c:B

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    iget-object v2, p1, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    invoke-virtual {v1, v2}, Lcom/google/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 472
    :cond_0
    return v0
.end method

.method public final strictfp f()Lcom/google/a/d/h;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3fe0

    .line 288
    iget-wide v0, p0, Lcom/google/a/d/i;->e:D

    iget-wide v2, p0, Lcom/google/a/d/i;->f:D

    add-double/2addr v0, v2

    mul-double/2addr v0, v6

    .line 289
    iget-wide v2, p0, Lcom/google/a/d/i;->g:D

    iget-wide v4, p0, Lcom/google/a/d/i;->h:D

    add-double/2addr v2, v4

    mul-double/2addr v2, v6

    .line 290
    iget-byte v4, p0, Lcom/google/a/d/i;->a:B

    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/a/d/aa;->a(IDD)Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/d/y;->d(Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;D)Lcom/google/a/d/h;

    move-result-object v1

    .line 291
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcom/google/a/d/i;->b(I)Lcom/google/a/d/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;)Lcom/google/a/d/h;

    move-result-object v1

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-object v1
.end method

.method public final strictfp hashCode()I
    .locals 2

    .prologue
    .line 460
    iget-byte v0, p0, Lcom/google/a/d/i;->a:B

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Lcom/google/a/d/i;->c:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Lcom/google/a/d/i;->b:B

    add-int/2addr v0, v1

    .line 462
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    invoke-virtual {v1}, Lcom/google/a/d/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/google/a/d/i;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/a/d/i;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/a/d/i;->c:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/d/i;->d:Lcom/google/a/d/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
