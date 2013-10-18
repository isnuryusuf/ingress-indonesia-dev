.class abstract Lcom/google/a/b/r;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/a/b/o;


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
    .line 4532
    iput-object p1, p0, Lcom/google/a/b/r;->b:Lcom/google/a/b/o;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4533
    iput-object p2, p0, Lcom/google/a/b/r;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 4534
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4548
    iget-object v0, p0, Lcom/google/a/b/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4549
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4543
    iget-object v0, p0, Lcom/google/a/b/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4538
    iget-object v0, p0, Lcom/google/a/b/r;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
