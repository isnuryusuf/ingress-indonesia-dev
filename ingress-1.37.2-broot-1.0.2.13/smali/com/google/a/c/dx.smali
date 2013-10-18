.class public abstract Lcom/google/a/c/dx;
.super Lcom/google/a/c/dy;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dy",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/a/c/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dx",
            "<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient c:Lcom/google/a/c/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/google/a/c/ih;->b()Lcom/google/a/c/ih;

    move-result-object v0

    sput-object v0, Lcom/google/a/c/dx;->a:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lcom/google/a/c/bj;

    sget-object v1, Lcom/google/a/c/dx;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/a/c/bj;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/a/c/dx;->b:Lcom/google/a/c/dx;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/google/a/c/dy;-><init>()V

    .line 413
    return-void
.end method

.method constructor <init>(Lcom/google/a/c/dx;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/google/a/c/dy;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/google/a/c/dx;->c:Lcom/google/a/c/dx;

    .line 417
    return-void
.end method

.method static a(Lcom/google/a/c/dz;Lcom/google/a/c/dc;)Lcom/google/a/c/dx;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/dz",
            "<TK;>;",
            "Lcom/google/a/c/dc",
            "<TV;>;)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/a/c/dz;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/a/c/dz;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/dx;->a(Ljava/util/Comparator;)Lcom/google/a/c/dx;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/iq;

    check-cast p0, Lcom/google/a/c/it;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/iq;-><init>(Lcom/google/a/c/it;Lcom/google/a/c/dc;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/a/c/dx;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-static {}, Lcom/google/a/c/ih;->b()Lcom/google/a/c/ih;

    move-result-object v4

    new-array v5, v9, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/google/a/c/dx;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dk;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p2, p3}, Lcom/google/a/c/dx;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dk;

    move-result-object v0

    aput-object v0, v5, v1

    move v0, v2

    :goto_0
    if-ge v0, v9, :cond_0

    aget-object v3, v5, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/a/c/dx;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dk;

    move-result-object v3

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/google/a/c/ih;->a(Ljava/util/Comparator;)Lcom/google/a/c/ih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ih;->c()Lcom/google/a/c/ih;

    move-result-object v0

    invoke-static {v5, v2, v9, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v3, v1

    :goto_1
    if-ge v3, v9, :cond_2

    aget-object v0, v5, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aget-object v6, v5, v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    const-string/jumbo v6, "key"

    aget-object v7, v5, v2

    aget-object v8, v5, v1

    invoke-static {v0, v6, v7, v8}, Lcom/google/a/c/dx;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v0

    invoke-static {}, Lcom/google/a/c/dc;->h()Lcom/google/a/c/de;

    move-result-object v1

    :goto_3
    if-ge v2, v9, :cond_3

    aget-object v3, v5, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/a/c/de;->c(Ljava/lang/Object;)Lcom/google/a/c/de;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance v2, Lcom/google/a/c/iq;

    new-instance v3, Lcom/google/a/c/it;

    invoke-virtual {v0}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v3, v0, v4}, Lcom/google/a/c/it;-><init>(Lcom/google/a/c/dc;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lcom/google/a/c/de;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/a/c/iq;-><init>(Lcom/google/a/c/it;Lcom/google/a/c/dc;)V

    return-object v2
.end method

.method private a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dx;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 538
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lcom/google/a/c/dx;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p0, p3, p4}, Lcom/google/a/c/dx;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/c/dx;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 540
    goto :goto_0
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/a/c/dx;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/google/a/c/ih;->b()Lcom/google/a/c/ih;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/google/a/c/dx;->b:Lcom/google/a/c/dx;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/bj;

    invoke-direct {v0, p0}, Lcom/google/a/c/bj;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract a()Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TK;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method b()Z
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/dx;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dx;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dx;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/google/a/c/dx;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/a/c/dx;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/c/ct;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract d_()Lcom/google/a/c/ct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TV;>;"
        }
    .end annotation
.end method

.method public synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->b_()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/a/c/dx;->c:Lcom/google/a/c/dx;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/dx;->h()Lcom/google/a/c/dx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/dx;->c:Lcom/google/a/c/dx;

    :cond_0
    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/a/c/dx;->f()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/a/c/du;
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
    .line 437
    invoke-super {p0}, Lcom/google/a/c/dy;->f()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/a/c/dx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/dx;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->a()Lcom/google/a/c/dc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 588
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dx;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dx;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/google/a/c/dx;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/c/du;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method abstract h()Lcom/google/a/c/dx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dx",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/dx;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dx;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dx;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dx;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/google/a/c/dx;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/google/a/c/dx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/dx;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/c/dx;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dx;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dx;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/google/a/c/dx;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/a/c/dx;->a()Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/a/c/dx;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/a/c/dx;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/a/c/dx;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/dx;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dx;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/a/c/dx;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    return-object v0
.end method
