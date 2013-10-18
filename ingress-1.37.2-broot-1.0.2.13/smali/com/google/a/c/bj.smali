.class final Lcom/google/a/c/bj;
.super Lcom/google/a/c/dx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dx",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dz",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/a/c/dx;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/a/c/dz;->a(Ljava/util/Comparator;)Lcom/google/a/c/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/bj;->a:Lcom/google/a/c/dz;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Lcom/google/a/c/dx;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/google/a/c/dx;-><init>(Lcom/google/a/c/dx;)V

    .line 43
    invoke-static {p1}, Lcom/google/a/c/dz;->a(Ljava/util/Comparator;)Lcom/google/a/c/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/bj;->a:Lcom/google/a/c/dz;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public final a()Lcom/google/a/c/dz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/a/c/bj;->a:Lcom/google/a/c/dz;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method final d()Lcom/google/a/c/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final d_()Lcom/google/a/c/ct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/google/a/c/du;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/a/c/du;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/bj;->a:Lcom/google/a/c/dz;

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
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method final h()Lcom/google/a/c/dx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/google/a/c/bj;

    invoke-virtual {p0}, Lcom/google/a/c/bj;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/c/ih;->a(Ljava/util/Comparator;)Lcom/google/a/c/ih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/ih;->a()Lcom/google/a/c/ih;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/a/c/bj;-><init>(Ljava/util/Comparator;Lcom/google/a/c/dx;)V

    return-object v0
.end method

.method public final synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/bj;->a:Lcom/google/a/c/dz;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method
