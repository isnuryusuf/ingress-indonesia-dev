.class public final Lcom/google/a/d/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/d/ad;


# instance fields
.field private final a:Lcom/google/a/d/b;

.field private final b:Lcom/google/a/d/e;


# direct methods
.method public strictfp constructor <init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    .line 46
    iput-object p2, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    .line 48
    return-void
.end method

.method private strictfp constructor <init>(Lcom/google/a/d/u;Lcom/google/a/d/u;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/a/d/b;

    invoke-virtual {p1}, Lcom/google/a/d/u;->a()Lcom/google/a/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/d;->a()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/a/d/u;->a()Lcom/google/a/d/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/d;->a()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/b;-><init>(DD)V

    iput-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    .line 39
    new-instance v0, Lcom/google/a/d/e;

    invoke-virtual {p1}, Lcom/google/a/d/u;->d()Lcom/google/a/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/d;->a()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/a/d/u;->d()Lcom/google/a/d/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/d;->a()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/e;-><init>(DD)V

    iput-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    .line 41
    return-void
.end method

.method public static strictfp a()Lcom/google/a/d/v;
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/google/a/d/v;

    invoke-static {}, Lcom/google/a/d/v;->b()Lcom/google/a/d/b;

    move-result-object v1

    invoke-static {}, Lcom/google/a/d/e;->b()Lcom/google/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    return-object v0
.end method

.method public static strictfp a(Lcom/google/a/d/u;Lcom/google/a/d/u;)Lcom/google/a/d/v;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/google/a/d/v;

    invoke-virtual {p0}, Lcom/google/a/d/u;->a()Lcom/google/a/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/d;->a()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/a/d/u;->a()Lcom/google/a/d/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/d;->a()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/a/d/b;->a(DD)Lcom/google/a/d/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/u;->d()Lcom/google/a/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/d;->a()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/a/d/u;->d()Lcom/google/a/d/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/d/d;->a()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/a/d/e;->a(DD)Lcom/google/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    return-object v0
.end method

.method public static strictfp b()Lcom/google/a/d/b;
    .locals 5

    .prologue
    .line 62
    new-instance v0, Lcom/google/a/d/b;

    const-wide v1, -0x4006de04abbbd2e8L

    const-wide v3, 0x3ff921fb54442d18L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/b;-><init>(DD)V

    return-object v0
.end method

.method private strictfp h()Lcom/google/a/d/u;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Lcom/google/a/d/u;

    iget-object v1, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v1}, Lcom/google/a/d/b;->a()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v2}, Lcom/google/a/d/e;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/d;Lcom/google/a/d/d;)V

    return-object v0
.end method

.method private strictfp i()Lcom/google/a/d/u;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/google/a/d/u;

    iget-object v1, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v1}, Lcom/google/a/d/b;->b()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v2}, Lcom/google/a/d/e;->d()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/d;Lcom/google/a/d/d;)V

    return-object v0
.end method


# virtual methods
.method public final strictfp a(Lcom/google/a/d/u;)Lcom/google/a/d/v;
    .locals 4
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {p1}, Lcom/google/a/d/u;->a()Lcom/google/a/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/d;->a()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/a/d/b;->b(D)Lcom/google/a/d/b;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {p1}, Lcom/google/a/d/u;->d()Lcom/google/a/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/d;->a()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/a/d/e;->b(D)Lcom/google/a/d/e;

    move-result-object v1

    .line 467
    new-instance v2, Lcom/google/a/d/v;

    invoke-direct {v2, v0, v1}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    return-object v2
.end method

.method public final strictfp a(Lcom/google/a/d/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 639
    invoke-virtual {p1}, Lcom/google/a/d/i;->c()Lcom/google/a/d/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/d/v;->a(Lcom/google/a/d/v;)Z

    move-result v0

    return v0
.end method

.method public final strictfp a(Lcom/google/a/d/v;)Z
    .locals 2
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    iget-object v1, p1, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0, v1}, Lcom/google/a/d/b;->a(Lcom/google/a/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    iget-object v1, p1, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0, v1}, Lcom/google/a/d/e;->a(Lcom/google/a/d/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp a(Lcom/google/a/d/y;)Z
    .locals 4
    .parameter

    .prologue
    .line 657
    new-instance v0, Lcom/google/a/d/u;

    invoke-direct {v0, p1}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/y;)V

    iget-object v1, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/u;->b()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/a/d/b;->a(D)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/u;->e()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/a/d/e;->a(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp b(Lcom/google/a/d/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 652
    invoke-virtual {p1}, Lcom/google/a/d/i;->c()Lcom/google/a/d/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/a/d/v;->b(Lcom/google/a/d/v;)Z

    move-result v0

    return v0
.end method

.method public final strictfp b(Lcom/google/a/d/v;)Z
    .locals 2
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    iget-object v1, p1, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0, v1}, Lcom/google/a/d/b;->b(Lcom/google/a/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    iget-object v1, p1, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0, v1}, Lcom/google/a/d/e;->b(Lcom/google/a/d/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp c()Lcom/google/a/d/b;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    return-object v0
.end method

.method public final strictfp c(Lcom/google/a/d/v;)Lcom/google/a/d/v;
    .locals 4
    .parameter

    .prologue
    .line 495
    new-instance v0, Lcom/google/a/d/v;

    iget-object v1, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    iget-object v2, p1, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v1, v2}, Lcom/google/a/d/b;->c(Lcom/google/a/d/b;)Lcom/google/a/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    iget-object v3, p1, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v2, v3}, Lcom/google/a/d/e;->c(Lcom/google/a/d/e;)Lcom/google/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/google/a/d/v;

    invoke-direct {p0}, Lcom/google/a/d/v;->h()Lcom/google/a/d/u;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/v;->i()Lcom/google/a/d/u;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/u;Lcom/google/a/d/u;)V

    return-object v0
.end method

.method public final strictfp d()Lcom/google/a/d/e;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    return-object v0
.end method

.method public final strictfp e()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->c()Z

    move-result v0

    return v0
.end method

.method public final strictfp equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 552
    instance-of v1, p1, Lcom/google/a/d/v;

    if-nez v1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 555
    :cond_1
    check-cast p1, Lcom/google/a/d/v;

    .line 556
    iget-object v1, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    iget-object v2, p1, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v1, v2}, Lcom/google/a/d/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    iget-object v2, p1, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v1, v2}, Lcom/google/a/d/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final strictfp f()Lcom/google/a/d/h;
    .locals 11

    .prologue
    const-wide v9, 0x401921fb54442d18L

    const-wide v7, 0x3ff921fb54442d18L

    const-wide/16 v1, 0x0

    .line 594
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-static {}, Lcom/google/a/d/h;->a()Lcom/google/a/d/h;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->a()D

    move-result-wide v3

    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->b()D

    move-result-wide v5

    add-double/2addr v3, v5

    cmpg-double v0, v3, v1

    if-gez v0, :cond_1

    .line 601
    const-wide/high16 v5, -0x4010

    .line 602
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->b()D

    move-result-wide v3

    add-double/2addr v3, v7

    move-wide v7, v3

    .line 607
    :goto_1
    new-instance v0, Lcom/google/a/d/y;

    move-wide v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    invoke-static {v7, v8}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;Lcom/google/a/d/d;)Lcom/google/a/d/h;

    move-result-object v3

    .line 614
    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->d()D

    move-result-wide v4

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->c()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 615
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v6

    cmpl-double v0, v6, v1

    if-ltz v0, :cond_3

    .line 616
    cmpg-double v0, v4, v9

    if-gez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->d()D

    move-result-wide v4

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->f()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;Lcom/google/a/d/d;)Lcom/google/a/d/h;

    move-result-object v1

    .line 619
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    const/4 v0, 0x4

    if-ge v2, v0, :cond_2

    .line 620
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid vertex index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    const-wide/high16 v5, 0x3ff0

    .line 605
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->a()D

    move-result-wide v3

    sub-double v3, v7, v3

    move-wide v7, v3

    goto :goto_1

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->a()D

    move-result-wide v4

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->c()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;)Lcom/google/a/d/h;

    move-result-object v1

    .line 619
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 620
    :pswitch_1
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->a()D

    move-result-wide v4

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->d()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->b()D

    move-result-wide v4

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->d()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->b()D

    move-result-wide v4

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->c()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/a/d/u;->a(DD)Lcom/google/a/d/u;

    move-result-object v0

    goto :goto_3

    .line 622
    :cond_2
    invoke-virtual {v1}, Lcom/google/a/d/h;->c()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/a/d/h;->c()D

    move-result-wide v6

    cmpg-double v0, v4, v6

    if-gez v0, :cond_3

    move-object v0, v1

    .line 623
    goto/16 :goto_0

    :cond_3
    move-object v0, v3

    .line 627
    goto/16 :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final strictfp g()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-static {}, Lcom/google/a/d/v;->b()Lcom/google/a/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v0}, Lcom/google/a/d/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final strictfp hashCode()I
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/a/d/v;->a:Lcom/google/a/d/b;

    invoke-virtual {v0}, Lcom/google/a/d/b;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    .line 577
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/a/d/v;->b:Lcom/google/a/d/e;

    invoke-virtual {v1}, Lcom/google/a/d/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final strictfp toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Lo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/a/d/v;->h()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Hi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/a/d/v;->i()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
