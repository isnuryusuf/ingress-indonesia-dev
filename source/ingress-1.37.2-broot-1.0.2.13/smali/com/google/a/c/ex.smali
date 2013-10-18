.class Lcom/google/a/c/ex;
.super Lcom/google/a/c/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/bp",
        "<TK;TV;>;"
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

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/a/c/er;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/a/c/er",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/google/a/c/bp;-><init>()V

    .line 298
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/a/c/ex;->b:Ljava/util/Map;

    .line 299
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/er;

    iput-object v0, p0, Lcom/google/a/c/ex;->a:Lcom/google/a/c/er;

    .line 300
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/a/c/ex;->b:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
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
    .line 305
    iget-object v0, p0, Lcom/google/a/c/ex;->c:Ljava/util/Set;

    .line 306
    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/a/c/ex;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/c/ex;->a:Lcom/google/a/c/er;

    new-instance v0, Lcom/google/a/c/ew;

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/ew;-><init>(Ljava/util/Set;Lcom/google/a/c/er;)V

    iput-object v0, p0, Lcom/google/a/c/ex;->c:Ljava/util/Set;

    .line 310
    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/a/c/ex;->b:Ljava/util/Map;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/a/c/ex;->a:Lcom/google/a/c/er;

    invoke-interface {v0, p1, p2}, Lcom/google/a/c/er;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/google/a/c/ex;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v1, p0, Lcom/google/a/c/ex;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/a/c/ex;->a:Lcom/google/a/c/er;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/google/a/c/er;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 318
    return-void
.end method
