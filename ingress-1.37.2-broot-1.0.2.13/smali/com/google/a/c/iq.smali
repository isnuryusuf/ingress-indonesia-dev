.class final Lcom/google/a/c/iq;
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
.field private final transient a:Lcom/google/a/c/it;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/it",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/it;Lcom/google/a/c/dc;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/it",
            "<TK;>;",
            "Lcom/google/a/c/dc",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/a/c/dx;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    .line 37
    iput-object p2, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/google/a/c/it;Lcom/google/a/c/dc;Lcom/google/a/c/dx;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/it",
            "<TK;>;",
            "Lcom/google/a/c/dc",
            "<TV;>;",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p3}, Lcom/google/a/c/dx;-><init>(Lcom/google/a/c/dx;)V

    .line 45
    iput-object p1, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    .line 46
    iput-object p2, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/google/a/c/iq;)Lcom/google/a/c/dc;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    return-object v0
.end method

.method private a(II)Lcom/google/a/c/dx;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/iq;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 106
    :goto_0
    return-object p0

    .line 103
    :cond_0
    if-ne p1, p2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/google/a/c/iq;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/iq;->a(Ljava/util/Comparator;)Lcom/google/a/c/dx;

    move-result-object p0

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/c/it;->a(II)Lcom/google/a/c/dz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    invoke-virtual {v1, p1, p2}, Lcom/google/a/c/dc;->a(II)Lcom/google/a/c/dc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/c/iq;->a(Lcom/google/a/c/dz;Lcom/google/a/c/dc;)Lcom/google/a/c/dx;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;
    .locals 3
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
    .line 114
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/a/c/it;->e(Ljava/lang/Object;Z)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/a/c/iq;->a(II)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
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
    .line 86
    iget-object v0, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;
    .locals 2
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
    .line 119
    iget-object v0, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/a/c/it;->f(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/a/c/iq;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/a/c/iq;->a(II)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
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
    .line 51
    new-instance v0, Lcom/google/a/c/ir;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ir;-><init>(Lcom/google/a/c/iq;B)V

    return-object v0
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
    .line 91
    iget-object v0, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/a/c/du;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    invoke-virtual {v0, p1}, Lcom/google/a/c/it;->a(Ljava/lang/Object;)I

    move-result v0

    .line 97
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    invoke-virtual {v1, v0}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final h()Lcom/google/a/c/dx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Lcom/google/a/c/iq;

    iget-object v0, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    invoke-virtual {v0}, Lcom/google/a/c/it;->b_()Lcom/google/a/c/dz;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/it;

    iget-object v2, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    invoke-virtual {v2}, Lcom/google/a/c/dc;->g()Lcom/google/a/c/dc;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/google/a/c/iq;-><init>(Lcom/google/a/c/it;Lcom/google/a/c/dc;Lcom/google/a/c/dx;)V

    return-object v1
.end method

.method public final synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/iq;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/a/c/iq;->a:Lcom/google/a/c/it;

    return-object v0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/iq;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/a/c/iq;->b:Lcom/google/a/c/dc;

    return-object v0
.end method
