.class final Lcom/google/a/b/t;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/a/b/ap",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3821
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3822
    new-instance v0, Lcom/google/a/b/u;

    invoke-direct {v0, p0}, Lcom/google/a/b/u;-><init>(Lcom/google/a/b/t;)V

    iput-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    return-void
.end method

.method private a()Lcom/google/a/b/ap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3873
    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    .line 3874
    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 3924
    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    .line 3925
    :goto_0
    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    if-eq v0, v1, :cond_0

    .line 3926
    invoke-interface {v0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v1

    .line 3927
    invoke-static {v0}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;)V

    move-object v0, v1

    .line 3929
    goto :goto_0

    .line 3931
    :cond_0
    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0, v1}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/ap;)V

    .line 3932
    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0, v1}, Lcom/google/a/b/ap;->b(Lcom/google/a/b/ap;)V

    .line 3933
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3903
    check-cast p1, Lcom/google/a/b/ap;

    .line 3904
    invoke-interface {p1}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    sget-object v1, Lcom/google/a/b/ao;->a:Lcom/google/a/b/ao;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 3909
    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3937
    new-instance v0, Lcom/google/a/b/v;

    invoke-direct {p0}, Lcom/google/a/b/t;->a()Lcom/google/a/b/ap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/v;-><init>(Lcom/google/a/b/t;Lcom/google/a/b/ap;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3821
    check-cast p1, Lcom/google/a/b/ap;

    invoke-interface {p1}, Lcom/google/a/b/ap;->g()Lcom/google/a/b/ap;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->g()Lcom/google/a/b/ap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-static {p1, v0}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3821
    invoke-direct {p0}, Lcom/google/a/b/t;->a()Lcom/google/a/b/ap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3821
    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/a/b/t;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3891
    check-cast p1, Lcom/google/a/b/ap;

    .line 3892
    invoke-interface {p1}, Lcom/google/a/b/ap;->g()Lcom/google/a/b/ap;

    move-result-object v0

    .line 3893
    invoke-interface {p1}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v1

    .line 3894
    invoke-static {v0, v1}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    .line 3895
    invoke-static {p1}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;)V

    .line 3897
    sget-object v0, Lcom/google/a/b/ao;->a:Lcom/google/a/b/ao;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    .prologue
    .line 3914
    const/4 v1, 0x0

    .line 3915
    iget-object v0, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    invoke-interface {v0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/a/b/t;->a:Lcom/google/a/b/ap;

    if-eq v0, v2, :cond_0

    .line 3917
    add-int/lit8 v1, v1, 0x1

    .line 3916
    invoke-interface {v0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    goto :goto_0

    .line 3919
    :cond_0
    return v1
.end method
