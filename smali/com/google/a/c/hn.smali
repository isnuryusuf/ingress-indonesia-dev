.class public final Lcom/google/a/c/hn;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/google/a/c/hp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/hn",
            "<TE;>.com/google/a/c/hp;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/a/c/hp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/hn",
            "<TE;>.com/google/a/c/hp;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/Object;

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(Lcom/google/a/c/ho;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ho",
            "<-TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 227
    invoke-static {p1}, Lcom/google/a/c/ho;->a(Lcom/google/a/c/ho;)Lcom/google/a/c/ih;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/google/a/c/hp;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/hp;-><init>(Lcom/google/a/c/hn;Lcom/google/a/c/ih;)V

    iput-object v1, p0, Lcom/google/a/c/hn;->b:Lcom/google/a/c/hp;

    .line 229
    new-instance v1, Lcom/google/a/c/hp;

    invoke-virtual {v0}, Lcom/google/a/c/ih;->a()Lcom/google/a/c/ih;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/hp;-><init>(Lcom/google/a/c/hn;Lcom/google/a/c/ih;)V

    iput-object v1, p0, Lcom/google/a/c/hn;->c:Lcom/google/a/c/hp;

    .line 230
    iget-object v0, p0, Lcom/google/a/c/hn;->b:Lcom/google/a/c/hp;

    iget-object v1, p0, Lcom/google/a/c/hn;->c:Lcom/google/a/c/hp;

    iput-object v1, v0, Lcom/google/a/c/hp;->b:Lcom/google/a/c/hp;

    .line 231
    iget-object v0, p0, Lcom/google/a/c/hn;->c:Lcom/google/a/c/hp;

    iget-object v1, p0, Lcom/google/a/c/hn;->b:Lcom/google/a/c/hp;

    iput-object v1, v0, Lcom/google/a/c/hp;->b:Lcom/google/a/c/hp;

    .line 233
    invoke-static {p1}, Lcom/google/a/c/ho;->b(Lcom/google/a/c/ho;)I

    move-result v0

    iput v0, p0, Lcom/google/a/c/hn;->a:I

    .line 235
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c/ho;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/hn;-><init>(Lcom/google/a/c/ho;I)V

    return-void
.end method

.method private static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 937
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static a(IILjava/lang/Iterable;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 903
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xb

    .line 908
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 909
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 910
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 914
    :cond_1
    invoke-static {p0, p1}, Lcom/google/a/c/hn;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/a/c/ho;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TB;>;)",
            "Lcom/google/a/c/ho",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/a/c/ho;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ho;-><init>(Ljava/util/Comparator;B)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/c/hn;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/c/hn;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/a/c/hn;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/google/a/c/hn;->f:I

    return v0
.end method

.method private c(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 449
    invoke-virtual {p0, p1}, Lcom/google/a/c/hn;->b(I)Lcom/google/a/c/hq;

    .line 450
    return-object v0
.end method

.method private d(I)Lcom/google/a/c/hp;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/hn",
            "<TE;>.com/google/a/c/hp;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    add-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v4, "negative index"

    invoke-static {v0, v4}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    const v0, 0x55555555

    and-int/2addr v0, v3

    const v4, -0x55555556

    and-int/2addr v3, v4

    if-le v0, v3, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/a/c/hn;->b:Lcom/google/a/c/hp;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/a/c/hn;->c:Lcom/google/a/c/hp;

    goto :goto_2
.end method


# virtual methods
.method final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/a/c/hn;->offer(Ljava/lang/Object;)Z

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/google/a/c/hn;->offer(Ljava/lang/Object;)Z

    .line 259
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return v0
.end method

.method final b(I)Lcom/google/a/c/hq;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/hq",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 381
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    invoke-static {p1, v0}, Lcom/google/a/a/an;->b(II)I

    .line 382
    iget v0, p0, Lcom/google/a/c/hn;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/hn;->f:I

    .line 383
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/hn;->e:I

    .line 384
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    if-ne v0, p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/c/hn;->e:I

    aput-object v3, v0, v1

    move-object v0, v3

    .line 406
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    iget-object v1, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aget-object v4, v1, v0

    .line 389
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    invoke-direct {p0, v0}, Lcom/google/a/c/hn;->d(I)Lcom/google/a/c/hp;

    move-result-object v1

    iget-object v0, v1, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget v0, v0, Lcom/google/a/c/hn;->e:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v2, -0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, v1, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget v5, v5, Lcom/google/a/c/hn;->e:I

    if-lt v2, v5, :cond_1

    iget-object v2, v1, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget-object v2, v2, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v5, v1, Lcom/google/a/c/hp;->a:Lcom/google/a/c/ih;

    invoke-virtual {v5, v2, v4}, Lcom/google/a/c/ih;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, v1, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget-object v5, v5, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aput-object v4, v5, v0

    iget-object v5, v1, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget-object v5, v5, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget v1, v1, Lcom/google/a/c/hn;->e:I

    aput-object v2, v5, v1

    .line 391
    :goto_1
    iget v1, p0, Lcom/google/a/c/hn;->e:I

    iget-object v2, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aget-object v5, v2, v1

    .line 392
    iget-object v1, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/c/hn;->e:I

    aput-object v3, v1, v2

    .line 393
    invoke-direct {p0, p1}, Lcom/google/a/c/hn;->d(I)Lcom/google/a/c/hp;

    move-result-object v6

    move v1, p1

    :goto_2
    invoke-virtual {v6, v1}, Lcom/google/a/c/hp;->a(I)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v7, v6, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget-object v7, v7, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    iget-object v8, v6, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget-object v8, v8, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aget-object v8, v8, v2

    aput-object v8, v7, v1

    move v1, v2

    goto :goto_2

    .line 389
    :cond_1
    iget-object v0, v1, Lcom/google/a/c/hp;->c:Lcom/google/a/c/hn;

    iget v0, v0, Lcom/google/a/c/hn;->e:I

    goto :goto_1

    .line 393
    :cond_2
    invoke-virtual {v6, v1, v5}, Lcom/google/a/c/hp;->a(ILjava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-virtual {v6, p1, v1, v5}, Lcom/google/a/c/hp;->a(IILjava/lang/Object;)Lcom/google/a/c/hq;

    move-result-object v1

    .line 394
    :goto_3
    if-ge v0, p1, :cond_6

    .line 396
    if-nez v1, :cond_5

    .line 398
    new-instance v0, Lcom/google/a/c/hq;

    invoke-direct {v0, v4, v5}, Lcom/google/a/c/hq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 393
    :cond_3
    if-ge v2, p1, :cond_4

    new-instance v1, Lcom/google/a/c/hq;

    iget-object v2, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-direct {v1, v5, v2}, Lcom/google/a/c/hq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object v1, v3

    goto :goto_3

    .line 402
    :cond_5
    new-instance v0, Lcom/google/a/c/hq;

    iget-object v1, v1, Lcom/google/a/c/hq;->b:Ljava/lang/Object;

    invoke-direct {v0, v4, v1}, Lcom/google/a/c/hq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 406
    goto/16 :goto_0
.end method

.method public final clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 871
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/a/c/hn;->e:I

    if-ge v0, v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_0
    iput v1, p0, Lcom/google/a/c/hn;->e:I

    .line 875
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 867
    new-instance v0, Lcom/google/a/c/hr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/hr;-><init>(Lcom/google/a/c/hn;B)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget v0, p0, Lcom/google/a/c/hn;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/hn;->f:I

    .line 273
    iget v1, p0, Lcom/google/a/c/hn;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/a/c/hn;->e:I

    .line 275
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    iget-object v2, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    array-length v2, v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v2, 0x40

    if-ge v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    iget v2, p0, Lcom/google/a/c/hn;->a:I

    invoke-static {v0, v2}, Lcom/google/a/c/hn;->a(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    array-length v6, v6

    invoke-static {v2, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    .line 279
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/a/c/hn;->d(I)Lcom/google/a/c/hp;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/google/a/c/hp;->b(ILjava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_4

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/google/a/c/hp;->a(ILjava/lang/Object;)I

    .line 280
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    iget v1, p0, Lcom/google/a/c/hn;->a:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/a/c/hn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-eq v0, p1, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    .line 275
    :cond_3
    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/google/a/g/a;->a(I)I

    move-result v0

    goto :goto_0

    .line 279
    :cond_4
    iget-object v0, v0, Lcom/google/a/c/hp;->b:Lcom/google/a/c/hp;

    move v1, v2

    goto :goto_1

    .line 280
    :cond_5
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/a/c/hn;->c:Lcom/google/a/c/hp;

    invoke-virtual {v0, v4, v5}, Lcom/google/a/c/hp;->a(II)I

    move-result v0

    if-gtz v0, :cond_6

    move v0, v4

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/a/c/hn;->c(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    move v0, v3

    goto :goto_3

    :pswitch_1
    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/a/c/hn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/a/c/hn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/c/hn;->c(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 878
    iget v0, p0, Lcom/google/a/c/hn;->e:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 879
    iget-object v1, p0, Lcom/google/a/c/hn;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/c/hn;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    return-object v0
.end method
