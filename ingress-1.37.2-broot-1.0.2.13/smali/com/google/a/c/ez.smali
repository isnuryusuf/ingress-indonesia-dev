.class final Lcom/google/a/c/ez;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/fg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/fg",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/c/fa;


# direct methods
.method constructor <init>(Lcom/google/a/c/ey;)V
    .locals 1
    .parameter

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 803
    invoke-virtual {p1}, Lcom/google/a/c/ey;->a()Lcom/google/a/c/fg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/ez;->a:Lcom/google/a/c/fg;

    .line 804
    iget-object v0, p1, Lcom/google/a/c/ey;->j:Lcom/google/a/c/fa;

    iput-object v0, p0, Lcom/google/a/c/ez;->b:Lcom/google/a/c/fa;

    .line 805
    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 869
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 821
    const/4 v0, 0x0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 832
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    new-instance v0, Lcom/google/a/c/fh;

    iget-object v1, p0, Lcom/google/a/c/ez;->b:Lcom/google/a/c/fa;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/a/c/fh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/c/fa;)V

    iget-object v0, p0, Lcom/google/a/c/ez;->a:Lcom/google/a/c/fg;

    .line 835
    const/4 v0, 0x0

    return-object v0
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/ez;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const/4 v0, 0x0

    return-object v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 862
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const/4 v0, 0x0

    return v0
.end method
