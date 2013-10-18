.class final Lcom/google/a/c/aw;
.super Lcom/google/a/c/iu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/iu",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final e:[I

.field private final f:[I

.field private final g:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private final h:[I

.field private final i:[I


# direct methods
.method constructor <init>(Lcom/google/a/c/dc;Lcom/google/a/c/du;Lcom/google/a/c/du;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;",
            "Lcom/google/a/c/du",
            "<TR;>;",
            "Lcom/google/a/c/du",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/a/c/iu;-><init>()V

    .line 56
    invoke-virtual {p2}, Lcom/google/a/c/du;->size()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/a/c/du;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 57
    iput-object v0, p0, Lcom/google/a/c/aw;->g:[[Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Lcom/google/a/c/aw;->a(Lcom/google/a/c/du;)Lcom/google/a/c/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/aw;->a:Lcom/google/a/c/dh;

    .line 59
    invoke-static {p3}, Lcom/google/a/c/aw;->a(Lcom/google/a/c/du;)Lcom/google/a/c/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/aw;->b:Lcom/google/a/c/dh;

    .line 60
    iget-object v0, p0, Lcom/google/a/c/aw;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/c/aw;->e:[I

    .line 61
    iget-object v0, p0, Lcom/google/a/c/aw;->b:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/c/aw;->f:[I

    .line 62
    invoke-virtual {p1}, Lcom/google/a/c/dc;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 63
    invoke-virtual {p1}, Lcom/google/a/c/dc;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 64
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/a/c/dc;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 65
    invoke-virtual {p1, v2}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/ks;

    .line 66
    invoke-interface {v0}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v5

    .line 67
    invoke-interface {v0}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v6

    .line 68
    iget-object v1, p0, Lcom/google/a/c/aw;->a:Lcom/google/a/c/dh;

    invoke-virtual {v1, v5}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 69
    iget-object v1, p0, Lcom/google/a/c/aw;->b:Lcom/google/a/c/dh;

    invoke-virtual {v1, v6}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 70
    iget-object v1, p0, Lcom/google/a/c/aw;->g:[[Ljava/lang/Object;

    aget-object v1, v1, v7

    aget-object v1, v1, v8

    .line 71
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v9, "duplicate key: (%s, %s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v5, 0x1

    aput-object v6, v10, v5

    invoke-static {v1, v9, v10}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/google/a/c/aw;->g:[[Ljava/lang/Object;

    aget-object v1, v1, v7

    invoke-interface {v0}, Lcom/google/a/c/ks;->c()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v8

    .line 73
    iget-object v0, p0, Lcom/google/a/c/aw;->e:[I

    aget v1, v0, v7

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v7

    .line 74
    iget-object v0, p0, Lcom/google/a/c/aw;->f:[I

    aget v1, v0, v8

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v8

    .line 75
    aput v7, v3, v2

    .line 76
    aput v8, v4, v2

    .line 64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 78
    :cond_1
    iput-object v3, p0, Lcom/google/a/c/aw;->h:[I

    .line 79
    iput-object v4, p0, Lcom/google/a/c/aw;->i:[I

    .line 80
    new-instance v0, Lcom/google/a/c/bd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/bd;-><init>(Lcom/google/a/c/aw;B)V

    iput-object v0, p0, Lcom/google/a/c/aw;->c:Lcom/google/a/c/dh;

    .line 81
    new-instance v0, Lcom/google/a/c/ay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ay;-><init>(Lcom/google/a/c/aw;B)V

    iput-object v0, p0, Lcom/google/a/c/aw;->d:Lcom/google/a/c/dh;

    .line 82
    return-void
.end method

.method private static a(Lcom/google/a/c/du;)Lcom/google/a/c/dh;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/du",
            "<TE;>;)",
            "Lcom/google/a/c/dh",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v1

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/c/aw;)[I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/aw;->e:[I

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/c/aw;)Lcom/google/a/c/dh;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/aw;->b:Lcom/google/a/c/dh;

    return-object v0
.end method

.method static synthetic c(Lcom/google/a/c/aw;)[[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/aw;->g:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/a/c/aw;)[I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/aw;->f:[I

    return-object v0
.end method

.method static synthetic e(Lcom/google/a/c/aw;)Lcom/google/a/c/dh;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/a/c/aw;->a:Lcom/google/a/c/dh;

    return-object v0
.end method


# virtual methods
.method final a(I)Lcom/google/a/c/ks;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/a/c/aw;->h:[I

    aget v0, v0, p1

    .line 267
    iget-object v1, p0, Lcom/google/a/c/aw;->i:[I

    aget v1, v1, p1

    .line 268
    invoke-virtual {p0}, Lcom/google/a/c/ec;->k()Lcom/google/a/c/dh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/c/du;->a()Lcom/google/a/c/dc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 269
    invoke-virtual {p0}, Lcom/google/a/c/ec;->j()Lcom/google/a/c/dh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/c/du;->a()Lcom/google/a/c/dc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 270
    iget-object v4, p0, Lcom/google/a/c/aw;->g:[[Ljava/lang/Object;

    aget-object v0, v4, v0

    aget-object v0, v0, v1

    .line 271
    invoke-static {v2, v3, v0}, Lcom/google/a/c/aw;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ks;

    move-result-object v0

    return-object v0
.end method

.method final b(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/a/c/aw;->g:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/c/aw;->h:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/a/c/aw;->i:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/a/c/aw;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 254
    iget-object v1, p0, Lcom/google/a/c/aw;->b:Lcom/google/a/c/dh;

    invoke-virtual {v1, p2}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 255
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/a/c/aw;->g:[[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final j()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/a/c/aw;->d:Lcom/google/a/c/dh;

    return-object v0
.end method

.method public final k()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/a/c/aw;->c:Lcom/google/a/c/dh;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/a/c/aw;->h:[I

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic m()Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/a/c/aw;->c:Lcom/google/a/c/dh;

    return-object v0
.end method
