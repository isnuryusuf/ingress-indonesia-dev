.class Lcom/google/a/c/eu;
.super Lcom/google/a/c/bn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/bn",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/c/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/er",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/a/c/er;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/a/c/er",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/google/a/c/bn;-><init>()V

    .line 575
    iput-object p1, p0, Lcom/google/a/c/eu;->b:Ljava/util/Collection;

    .line 576
    iput-object p2, p0, Lcom/google/a/c/eu;->a:Lcom/google/a/c/er;

    .line 577
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/a/c/eu;->b:Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {p0, p1}, Lcom/google/a/c/as;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/a/c/eu;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 584
    new-instance v1, Lcom/google/a/c/ev;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/ev;-><init>(Lcom/google/a/c/eu;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected final k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/a/c/eu;->b:Ljava/util/Collection;

    return-object v0
.end method

.method protected final bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/a/c/eu;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/a/c/eu;->b:Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/google/a/c/eu;->a(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/google/a/c/eu;->b(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/google/a/c/eu;->n()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-static {p0, p1}, Lcom/google/a/c/ig;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
