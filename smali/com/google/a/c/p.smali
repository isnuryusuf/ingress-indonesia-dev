.class Lcom/google/a/c/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/c/o;


# direct methods
.method constructor <init>(Lcom/google/a/c/o;)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iget-object v0, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    iget-object v0, v0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/a/c/p;->b:Ljava/util/Collection;

    .line 458
    iget-object v0, p1, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    iget-object v0, p1, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/a/c/f;->a(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/p;->a:Ljava/util/Iterator;

    .line 459
    return-void
.end method

.method constructor <init>(Lcom/google/a/c/o;Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 461
    iput-object p1, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iget-object v0, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    iget-object v0, v0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/a/c/p;->b:Ljava/util/Collection;

    .line 462
    iput-object p2, p0, Lcom/google/a/c/p;->a:Ljava/util/Iterator;

    .line 463
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    invoke-virtual {v0}, Lcom/google/a/c/o;->a()V

    .line 471
    iget-object v0, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    iget-object v0, v0, Lcom/google/a/c/o;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/a/c/p;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    .line 472
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 474
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/google/a/c/p;->a()V

    .line 479
    iget-object v0, p0, Lcom/google/a/c/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/a/c/p;->a()V

    .line 485
    iget-object v0, p0, Lcom/google/a/c/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/a/c/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 491
    iget-object v0, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    iget-object v0, v0, Lcom/google/a/c/o;->f:Lcom/google/a/c/f;

    invoke-static {v0}, Lcom/google/a/c/f;->b(Lcom/google/a/c/f;)I

    .line 492
    iget-object v0, p0, Lcom/google/a/c/p;->c:Lcom/google/a/c/o;

    invoke-virtual {v0}, Lcom/google/a/c/o;->b()V

    .line 493
    return-void
.end method
