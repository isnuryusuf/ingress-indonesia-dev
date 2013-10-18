.class public final Lcom/nianticproject/ingress/common/g/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Indexed:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:La/a/a/a/b/bv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bv",
            "<",
            "Ljava/util/Collection",
            "<TIndexed;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, La/a/a/a/b/ap;

    invoke-direct {v0}, La/a/a/a/b/ap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 39
    iput v1, p0, Lcom/nianticproject/ingress/common/g/aa;->a:I

    .line 40
    invoke-static {v1}, Lcom/google/a/d/j;->e(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/g/aa;->b:J

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/Collection;)I
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/a/d/j;",
            ">;",
            "Ljava/util/Collection",
            "<TIndexed;>;)I"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    .line 158
    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-virtual {v0}, Lcom/google/a/d/j;->i()Lcom/google/a/d/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/a/d/j;->d()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/a/d/j;->j()Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-interface {v3, v4, v5, v6, v7}, La/a/a/a/b/bv;->b(JJ)La/a/a/a/b/bv;

    move-result-object v0

    .line 162
    invoke-interface {v0}, La/a/a/a/b/bv;->b()La/a/a/a/c/j;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/j;->a()La/a/a/a/c/l;

    move-result-object v3

    .line 163
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 165
    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    .line 170
    :cond_2
    return v1
.end method

.method final a(Lcom/google/a/d/j;)J
    .locals 4
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/google/a/d/j;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/g/aa;->b:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/g/aa;->b:J

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-interface {v0}, La/a/a/a/b/bv;->clear()V

    .line 56
    return-void
.end method

.method public final a(Lcom/google/a/d/j;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/j;",
            "TIndexed;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/g/aa;->a(Lcom/google/a/d/j;)J

    move-result-wide v1

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-interface {v0, v1, v2}, La/a/a/a/b/bv;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 73
    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/aa;->c:La/a/a/a/b/bv;

    invoke-interface {v3, v1, v2, v0}, La/a/a/a/b/bv;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method
