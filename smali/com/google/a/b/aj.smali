.class final Lcom/google/a/b/aj;
.super Lcom/google/a/b/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/o",
        "<TK;TV;>.com/google/a/b/r<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/a/b/o;


# direct methods
.method constructor <init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 4554
    iput-object p1, p0, Lcom/google/a/b/aj;->c:Lcom/google/a/b/o;

    .line 4555
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/r;-><init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4556
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 4565
    iget-object v0, p0, Lcom/google/a/b/aj;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4560
    new-instance v0, Lcom/google/a/b/ai;

    iget-object v1, p0, Lcom/google/a/b/aj;->c:Lcom/google/a/b/o;

    invoke-direct {v0, v1}, Lcom/google/a/b/ai;-><init>(Lcom/google/a/b/o;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 4570
    iget-object v0, p0, Lcom/google/a/b/aj;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
