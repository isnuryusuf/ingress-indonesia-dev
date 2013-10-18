.class final Lcom/google/a/c/ds;
.super Lcom/google/a/c/du;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/du",
        "<",
        "Lcom/google/a/c/hu",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/dq;


# direct methods
.method private constructor <init>(Lcom/google/a/c/dq;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/a/c/ds;->a:Lcom/google/a/c/dq;

    invoke-direct {p0}, Lcom/google/a/c/du;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c/dq;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/google/a/c/ds;-><init>(Lcom/google/a/c/dq;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/a/c/ds;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 389
    instance-of v1, p1, Lcom/google/a/c/hu;

    if-eqz v1, :cond_0

    .line 390
    check-cast p1, Lcom/google/a/c/hu;

    .line 391
    invoke-interface {p1}, Lcom/google/a/c/hu;->b()I

    move-result v1

    if-gtz v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/google/a/c/ds;->a:Lcom/google/a/c/dq;

    invoke-interface {p1}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/a/c/dq;->a(Ljava/lang/Object;)I

    move-result v1

    .line 395
    invoke-interface {p1}, Lcom/google/a/c/hu;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/a/c/ds;->a:Lcom/google/a/c/dq;

    invoke-virtual {v0}, Lcom/google/a/c/dq;->e()Z

    move-result v0

    return v0
.end method

.method final f()Lcom/google/a/c/dc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lcom/google/a/c/dt;

    invoke-direct {v0, p0}, Lcom/google/a/c/dt;-><init>(Lcom/google/a/c/ds;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/a/c/ds;->a:Lcom/google/a/c/dq;

    invoke-virtual {v0}, Lcom/google/a/c/dq;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/a/c/ds;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/a/c/ds;->a:Lcom/google/a/c/dq;

    invoke-virtual {v0}, Lcom/google/a/c/dq;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
