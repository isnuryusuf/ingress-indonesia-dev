.class final Lcom/google/a/b/be;
.super Lcom/google/a/b/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/o",
        "<TK;TV;>.com/google/a/b/r<TV;>;"
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
    .line 4576
    iput-object p1, p0, Lcom/google/a/b/be;->c:Lcom/google/a/b/o;

    .line 4577
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/r;-><init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4578
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/google/a/b/be;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4582
    new-instance v0, Lcom/google/a/b/bc;

    iget-object v1, p0, Lcom/google/a/b/be;->c:Lcom/google/a/b/o;

    invoke-direct {v0, v1}, Lcom/google/a/b/bc;-><init>(Lcom/google/a/b/o;)V

    return-object v0
.end method
