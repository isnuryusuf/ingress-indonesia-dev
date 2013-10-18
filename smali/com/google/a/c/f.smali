.class abstract Lcom/google/a/c/f;
.super Lcom/google/a/c/z;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/z",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/a/c/z;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 123
    iput-object p1, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/google/a/c/f;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/google/a/c/f;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/a/c/f;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/a/c/f;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/a/c/hc;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget v0, p0, Lcom/google/a/c/f;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/c/f;->b:I

    :cond_0
    move v0, v1

    return v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .parameter

    .prologue
    .line 90
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/c/f;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lcom/google/a/c/f",
            "<TK;TV;>.com/google/a/c/o;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 331
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/c/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/a/c/l;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/a/c/q;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/c/f;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/c/f;)I
    .locals 2
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/google/a/c/f;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/a/c/f;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/a/c/f;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/google/a/c/f;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/a/c/f;->b:I

    return v0
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 273
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 274
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 275
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 276
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 278
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/a/c/f;)I
    .locals 2
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/google/a/c/f;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/a/c/f;->b:I

    return v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 318
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lcom/google/a/c/t;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/a/c/t;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/a/c/o;)V

    .line 325
    :goto_0
    return-object v0

    .line 320
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 321
    new-instance v0, Lcom/google/a/c/s;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/c/s;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 322
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 323
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/a/c/f;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/a/c/o;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_2
    new-instance v0, Lcom/google/a/c/o;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/a/c/o;-><init>(Lcom/google/a/c/f;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/a/c/o;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 192
    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/google/a/c/f;->c()Ljava/util/Collection;

    move-result-object v0

    .line 194
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget v2, p0, Lcom/google/a/c/f;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/a/c/f;->b:I

    .line 196
    iget-object v2, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 205
    :goto_0
    return v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 201
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget v0, p0, Lcom/google/a/c/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/f;->b:I

    move v0, v1

    .line 203
    goto :goto_0

    .line 205
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 304
    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/google/a/c/f;->c()Ljava/util/Collection;

    move-result-object v0

    .line 307
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/f;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/a/c/f;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/f;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 258
    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/google/a/c/f;->d()Ljava/util/Collection;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/google/a/c/f;->c()Ljava/util/Collection;

    move-result-object v1

    .line 263
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget v2, p0, Lcom/google/a/c/f;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/a/c/f;->b:I

    .line 265
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 267
    invoke-static {v1}, Lcom/google/a/c/f;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 288
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c/f;->b:I

    .line 292
    return-void
.end method

.method final f()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/a/c/n;

    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/n;-><init>(Lcom/google/a/c/f;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/j;

    iget-object v1, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/j;-><init>(Lcom/google/a/c/f;Ljava/util/Map;)V

    goto :goto_0
.end method

.method final g()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/a/c/m;

    iget-object v0, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/m;-><init>(Lcom/google/a/c/f;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/g;

    iget-object v1, p0, Lcom/google/a/c/f;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/g;-><init>(Lcom/google/a/c/f;Ljava/util/Map;)V

    goto :goto_0
.end method
