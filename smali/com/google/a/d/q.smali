.class public final Lcom/google/a/d/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/a/d/y;

.field private b:Lcom/google/a/d/u;

.field private c:Lcom/google/a/d/v;


# direct methods
.method public strictfp constructor <init>()V
    .locals 6

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/google/a/d/v;

    new-instance v1, Lcom/google/a/d/b;

    const-wide/high16 v2, 0x3ff0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/a/d/b;-><init>(DD)V

    invoke-static {}, Lcom/google/a/d/e;->a()Lcom/google/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    iput-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    .line 186
    return-void
.end method


# virtual methods
.method public final strictfp a()Lcom/google/a/d/v;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    return-object v0
.end method

.method public final strictfp a(Lcom/google/a/d/y;)V
    .locals 12
    .parameter

    .prologue
    const-wide v10, 0x3cd203af9ee75616L

    const-wide/16 v1, 0x0

    .line 202
    new-instance v7, Lcom/google/a/d/u;

    invoke-direct {v7, p1}, Lcom/google/a/d/u;-><init>(Lcom/google/a/d/y;)V

    iget-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    invoke-virtual {v0}, Lcom/google/a/d/v;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    invoke-virtual {v0, v7}, Lcom/google/a/d/v;->a(Lcom/google/a/d/u;)Lcom/google/a/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/google/a/d/q;->a:Lcom/google/a/d/y;

    iput-object v7, p0, Lcom/google/a/d/q;->b:Lcom/google/a/d/u;

    .line 203
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    iget-object v3, p0, Lcom/google/a/d/q;->b:Lcom/google/a/d/u;

    invoke-static {v3, v7}, Lcom/google/a/d/v;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)Lcom/google/a/d/v;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/a/d/v;->c(Lcom/google/a/d/v;)Lcom/google/a/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    iget-object v0, p0, Lcom/google/a/d/q;->a:Lcom/google/a/d/y;

    invoke-static {v0, p1}, Lcom/google/a/d/f;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v8

    new-instance v0, Lcom/google/a/d/y;

    const-wide/high16 v5, 0x3ff0

    move-wide v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/a/d/y;-><init>(DDD)V

    invoke-static {v8, v0}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;Lcom/google/a/d/y;)Lcom/google/a/d/y;

    move-result-object v0

    iget-object v3, p0, Lcom/google/a/d/q;->a:Lcom/google/a/d/y;

    invoke-virtual {v0, v3}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v3

    invoke-virtual {v0, p1}, Lcom/google/a/d/y;->b(Lcom/google/a/d/y;)D

    move-result-wide v5

    mul-double/2addr v5, v3

    cmpg-double v0, v5, v1

    if-gez v0, :cond_0

    iget-wide v5, v8, Lcom/google/a/d/y;->j:D

    invoke-virtual {v8}, Lcom/google/a/d/y;->b()D

    move-result-wide v8

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    iget-object v0, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    invoke-virtual {v0}, Lcom/google/a/d/v;->c()Lcom/google/a/d/b;

    move-result-object v8

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    const-wide v0, 0x3ff921fb54442d18L

    add-double v2, v5, v10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    new-instance v0, Lcom/google/a/d/b;

    invoke-virtual {v8}, Lcom/google/a/d/b;->a()D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    invoke-virtual {v5}, Lcom/google/a/d/v;->c()Lcom/google/a/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/d/b;->b()D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/a/d/b;-><init>(DD)V

    :goto_1
    new-instance v1, Lcom/google/a/d/v;

    iget-object v2, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    invoke-virtual {v2}, Lcom/google/a/d/v;->d()Lcom/google/a/d/e;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/a/d/v;-><init>(Lcom/google/a/d/b;Lcom/google/a/d/e;)V

    iput-object v1, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    goto :goto_0

    :cond_2
    const-wide v0, -0x4006de04abbbd2e8L

    sub-double v2, v5, v10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    new-instance v0, Lcom/google/a/d/b;

    neg-double v1, v1

    iget-object v3, p0, Lcom/google/a/d/q;->c:Lcom/google/a/d/v;

    invoke-virtual {v3}, Lcom/google/a/d/v;->c()Lcom/google/a/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/d/b;->a()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-virtual {v8}, Lcom/google/a/d/b;->b()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/a/d/b;-><init>(DD)V

    goto :goto_1
.end method
