.class public final Lcom/google/a/d/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/google/a/d/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/google/a/d/ad;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/a/d/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/google/a/d/ah;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v1

    .line 71
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 72
    invoke-static {v0}, Lcom/google/a/d/i;->a(I)Lcom/google/a/d/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/google/a/d/ae;->c:Lcom/google/a/c/dc;

    .line 75
    return-void
.end method

.method public strictfp constructor <init>()V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/d/ae;->d:I

    .line 142
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/a/d/ae;->e:I

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/a/d/ae;->f:I

    .line 144
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/a/d/ae;->g:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/ae;->b:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    new-instance v2, Lcom/google/a/d/ag;

    invoke-direct {v2}, Lcom/google/a/d/ag;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/a/d/ae;->j:Ljava/util/PriorityQueue;

    .line 150
    return-void
.end method

.method private strictfp a(Lcom/google/a/d/af;Lcom/google/a/d/i;I)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v0, 0x0

    .line 418
    add-int/lit8 v2, p3, -0x1

    .line 419
    new-array v3, v7, [Lcom/google/a/d/i;

    move v1, v0

    .line 420
    :goto_0
    if-ge v1, v7, :cond_0

    .line 421
    new-instance v4, Lcom/google/a/d/i;

    invoke-direct {v4}, Lcom/google/a/d/i;-><init>()V

    aput-object v4, v3, v1

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p2, v3}, Lcom/google/a/d/i;->a([Lcom/google/a/d/i;)Z

    move v1, v0

    .line 425
    :goto_1
    if-ge v1, v7, :cond_3

    .line 426
    if-lez v2, :cond_2

    .line 427
    iget-object v4, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    aget-object v5, v3, v1

    invoke-interface {v4, v5}, Lcom/google/a/d/ad;->b(Lcom/google/a/d/i;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    aget-object v4, v3, v1

    invoke-direct {p0, p1, v4, v2}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/af;Lcom/google/a/d/i;I)I

    move-result v4

    add-int/2addr v0, v4

    .line 425
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    :cond_2
    aget-object v4, v3, v1

    invoke-direct {p0, v4}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/i;)Lcom/google/a/d/af;

    move-result-object v4

    .line 433
    if-eqz v4, :cond_1

    .line 434
    invoke-static {p1}, Lcom/google/a/d/af;->d(Lcom/google/a/d/af;)[Lcom/google/a/d/af;

    move-result-object v5

    invoke-static {p1}, Lcom/google/a/d/af;->e(Lcom/google/a/d/af;)I

    move-result v6

    aput-object v4, v5, v6

    .line 435
    invoke-static {v4}, Lcom/google/a/d/af;->a(Lcom/google/a/d/af;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 440
    :cond_3
    return v0
.end method

.method private strictfp a(Lcom/google/a/d/i;)Lcom/google/a/d/af;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 332
    iget-object v0, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    invoke-interface {v0, p1}, Lcom/google/a/d/ad;->b(Lcom/google/a/d/i;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 358
    :goto_0
    return-object v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    .line 337
    invoke-virtual {p1}, Lcom/google/a/d/i;->b()B

    move-result v3

    iget v4, p0, Lcom/google/a/d/ae;->d:I

    if-lt v3, v4, :cond_3

    .line 338
    iget-boolean v3, p0, Lcom/google/a/d/ae;->h:Z

    if-eqz v3, :cond_1

    .line 339
    iget-object v3, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    invoke-interface {v3, p1}, Lcom/google/a/d/ad;->a(Lcom/google/a/d/i;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 340
    invoke-virtual {p1}, Lcom/google/a/d/i;->b()B

    move-result v3

    iget v4, p0, Lcom/google/a/d/ae;->f:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/google/a/d/ae;->e:I

    if-le v3, v4, :cond_3

    move-object v0, v2

    .line 342
    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/i;->b()B

    move-result v2

    iget v3, p0, Lcom/google/a/d/ae;->f:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/a/d/ae;->e:I

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    instance-of v2, v2, Lcom/google/a/d/z;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    invoke-interface {v2, p1}, Lcom/google/a/d/ad;->a(Lcom/google/a/d/i;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 351
    :cond_3
    new-instance v2, Lcom/google/a/d/af;

    invoke-direct {v2}, Lcom/google/a/d/af;-><init>()V

    .line 352
    invoke-static {v2, p1}, Lcom/google/a/d/af;->a(Lcom/google/a/d/af;Lcom/google/a/d/i;)Lcom/google/a/d/i;

    .line 353
    invoke-static {v2, v0}, Lcom/google/a/d/af;->a(Lcom/google/a/d/af;Z)Z

    .line 354
    if-nez v0, :cond_4

    .line 355
    iget v0, p0, Lcom/google/a/d/ae;->f:I

    mul-int/lit8 v0, v0, 0x2

    shl-int v0, v1, v0

    new-array v0, v0, [Lcom/google/a/d/af;

    invoke-static {v2, v0}, Lcom/google/a/d/af;->a(Lcom/google/a/d/af;[Lcom/google/a/d/af;)[Lcom/google/a/d/af;

    .line 357
    :cond_4
    iget v0, p0, Lcom/google/a/d/ae;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/ae;->i:I

    move-object v0, v2

    .line 358
    goto :goto_0
.end method

.method private strictfp a(Lcom/google/a/d/af;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 372
    :goto_0
    if-nez p1, :cond_1

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 376
    :cond_1
    invoke-static {p1}, Lcom/google/a/d/af;->a(Lcom/google/a/d/af;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/google/a/d/ae;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/a/d/af;->b(Lcom/google/a/d/af;)Lcom/google/a/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/i;->a()Lcom/google/a/d/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_2
    invoke-static {p1}, Lcom/google/a/d/af;->b(Lcom/google/a/d/af;)Lcom/google/a/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/i;->b()B

    move-result v0

    iget v2, p0, Lcom/google/a/d/ae;->d:I

    if-ge v0, v2, :cond_3

    move v0, v1

    .line 385
    :goto_2
    invoke-static {p1}, Lcom/google/a/d/af;->b(Lcom/google/a/d/af;)Lcom/google/a/d/i;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/af;Lcom/google/a/d/i;I)I

    move-result v0

    .line 387
    invoke-static {p1}, Lcom/google/a/d/af;->c(Lcom/google/a/d/af;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    iget-boolean v2, p0, Lcom/google/a/d/ae;->h:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/a/d/ae;->f:I

    mul-int/lit8 v2, v2, 0x2

    shl-int v2, v1, v2

    if-ne v0, v2, :cond_4

    invoke-static {p1}, Lcom/google/a/d/af;->b(Lcom/google/a/d/af;)Lcom/google/a/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/i;->b()B

    move-result v2

    iget v3, p0, Lcom/google/a/d/ae;->d:I

    if-lt v2, v3, :cond_4

    .line 395
    invoke-static {p1, v1}, Lcom/google/a/d/af;->a(Lcom/google/a/d/af;Z)Z

    goto :goto_0

    .line 384
    :cond_3
    iget v0, p0, Lcom/google/a/d/ae;->f:I

    goto :goto_2

    .line 405
    :cond_4
    invoke-static {p1}, Lcom/google/a/d/af;->b(Lcom/google/a/d/af;)Lcom/google/a/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/i;->b()B

    move-result v1

    iget v2, p0, Lcom/google/a/d/ae;->f:I

    mul-int/lit8 v2, v2, 0x2

    shl-int/2addr v1, v2

    invoke-static {p1}, Lcom/google/a/d/af;->c(Lcom/google/a/d/af;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/a/d/ae;->f:I

    mul-int/lit8 v2, v2, 0x2

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 407
    iget-object v1, p0, Lcom/google/a/d/ae;->j:Ljava/util/PriorityQueue;

    new-instance v2, Lcom/google/a/d/ah;

    invoke-direct {v2, v0, p1}, Lcom/google/a/d/ah;-><init>(ILcom/google/a/d/af;)V

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public final strictfp a(Lcom/google/a/d/ad;)Lcom/google/a/d/k;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    new-instance v4, Lcom/google/a/d/k;

    invoke-direct {v4}, Lcom/google/a/d/k;-><init>()V

    .line 291
    iput-boolean v2, p0, Lcom/google/a/d/ae;->h:Z

    iget-object v0, p0, Lcom/google/a/d/ae;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/d/ae;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iput-object p1, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    iput v2, p0, Lcom/google/a/d/ae;->i:I

    iget v0, p0, Lcom/google/a/d/ae;->g:I

    if-lt v0, v9, :cond_2

    iget-object v0, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    invoke-interface {v0}, Lcom/google/a/d/ad;->f()Lcom/google/a/d/h;

    move-result-object v3

    sget-object v0, Lcom/google/a/d/aa;->g:Lcom/google/a/d/g;

    const-wide/high16 v5, 0x4000

    invoke-virtual {v3}, Lcom/google/a/d/h;->e()Lcom/google/a/d/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/a/d/d;->a()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/google/a/d/g;->a(D)I

    move-result v0

    iget v5, p0, Lcom/google/a/d/ae;->e:I

    const/16 v6, 0x1d

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v5, p0, Lcom/google/a/d/ae;->f:I

    if-le v5, v1, :cond_0

    iget v5, p0, Lcom/google/a/d/ae;->d:I

    if-le v0, v5, :cond_0

    iget v5, p0, Lcom/google/a/d/ae;->d:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/google/a/d/ae;->f:I

    rem-int/2addr v5, v6

    sub-int/2addr v0, v5

    :cond_0
    if-lez v0, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/a/d/h;->b()Lcom/google/a/d/y;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/d/j;->a(Lcom/google/a/d/y;)Lcom/google/a/d/j;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/google/a/d/j;->a(ILjava/util/Collection;)V

    move v3, v2

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    new-instance v6, Lcom/google/a/d/i;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-direct {v6, v0}, Lcom/google/a/d/i;-><init>(Lcom/google/a/d/j;)V

    invoke-direct {p0, v6}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/i;)Lcom/google/a/d/af;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/af;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_2
    const/4 v0, 0x6

    if-ge v3, v0, :cond_4

    sget-object v0, Lcom/google/a/d/ae;->c:Lcom/google/a/c/dc;

    invoke-virtual {v0, v3}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/i;

    invoke-direct {p0, v0}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/i;)Lcom/google/a/d/af;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/af;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    invoke-static {v3, v1}, Lcom/google/a/d/af;->a(Lcom/google/a/d/af;Z)Z

    invoke-direct {p0, v3}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/af;)V

    :cond_4
    iget-object v0, p0, Lcom/google/a/d/ae;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/google/a/d/ae;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/a/d/ae;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/google/a/d/ae;->g:I

    if-ge v0, v3, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/google/a/d/ae;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/ah;

    invoke-static {v0}, Lcom/google/a/d/ah;->b(Lcom/google/a/d/ah;)Lcom/google/a/d/af;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/a/d/ae;->h:Z

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/google/a/d/af;->b(Lcom/google/a/d/af;)Lcom/google/a/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/i;->b()B

    move-result v0

    iget v5, p0, Lcom/google/a/d/ae;->d:I

    if-lt v0, v5, :cond_6

    invoke-static {v3}, Lcom/google/a/d/af;->c(Lcom/google/a/d/af;)I

    move-result v0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/a/d/ae;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v5, p0, Lcom/google/a/d/ae;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v3}, Lcom/google/a/d/af;->c(Lcom/google/a/d/af;)I

    move-result v5

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/a/d/ae;->g:I

    if-gt v0, v5, :cond_3

    :cond_6
    move v0, v2

    :goto_3
    invoke-static {v3}, Lcom/google/a/d/af;->c(Lcom/google/a/d/af;)I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-boolean v5, p0, Lcom/google/a/d/ae;->h:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/a/d/ae;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/google/a/d/ae;->g:I

    if-ge v5, v6, :cond_8

    :cond_7
    invoke-static {v3}, Lcom/google/a/d/af;->d(Lcom/google/a/d/af;)[Lcom/google/a/d/af;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/af;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/google/a/d/ae;->j:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d/ae;->a:Lcom/google/a/d/ad;

    iget-object v0, p0, Lcom/google/a/d/ae;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/google/a/d/k;->b(Ljava/util/ArrayList;)V

    .line 292
    return-object v4
.end method

.method public final strictfp a(I)V
    .locals 2
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/a/d/ae;->e:I

    .line 180
    return-void
.end method

.method public final strictfp b(I)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput p1, p0, Lcom/google/a/d/ae;->g:I

    .line 243
    return-void
.end method
