.class final Lcom/google/a/c/s;
.super Lcom/google/a/c/o;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/f",
        "<TK;TV;>.com/google/a/c/o;",
        "Ljava/util/Set",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/f;


# direct methods
.method constructor <init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/a/c/s;->a:Lcom/google/a/c/f;

    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/a/c/o;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/c/o;)V

    .line 603
    return-void
.end method


# virtual methods
.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 607
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const/4 v0, 0x0

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 610
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/s;->size()I

    move-result v1

    .line 615
    iget-object v0, p0, Lcom/google/a/c/s;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/a/c/jc;->a(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result v0

    .line 616
    if-eqz v0, :cond_0

    .line 617
    iget-object v2, p0, Lcom/google/a/c/s;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 618
    iget-object v3, p0, Lcom/google/a/c/s;->a:Lcom/google/a/c/f;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/a/c/f;->a(Lcom/google/a/c/f;I)I

    .line 619
    invoke-virtual {p0}, Lcom/google/a/c/s;->b()V

    goto :goto_0
.end method
