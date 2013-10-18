.class public final Lcom/google/a/c/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/a/a/af;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3420
    sget-object v0, Lcom/google/a/c/as;->a:Lcom/google/a/a/ab;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Lcom/google/a/a/ab;->c(Ljava/lang/String;)Lcom/google/a/a/af;

    move-result-object v0

    sput-object v0, Lcom/google/a/c/hc;->a:Lcom/google/a/a/af;

    return-void
.end method

.method static a()Lcom/google/a/a/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/a/aa",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;TK;>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/google/a/c/hg;->a:Lcom/google/a/c/hg;

    return-object v0
.end method

.method static a(Lcom/google/a/c/lj;)Lcom/google/a/c/lj;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/lj",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/a/c/lj",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/google/a/c/hd;

    invoke-direct {v0, p0}, Lcom/google/a/c/hd;-><init>(Lcom/google/a/c/lj;)V

    return-object v0
.end method

.method static a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;*>;)TK;"
        }
    .end annotation

    .prologue
    .line 3485
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3313
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3315
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3319
    :goto_0
    return-object v0

    .line 3317
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3319
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v1, Ljava/util/EnumMap;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static a(I)Ljava/util/HashMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/a/c/hc;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/google/a/c/hg;->a:Lcom/google/a/c/hg;

    invoke-static {p0, v0}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;Lcom/google/a/a/aa;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Set;Lcom/google/a/a/aa;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lcom/google/a/a/aa",
            "<-TK;TV;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 832
    new-instance v0, Lcom/google/a/c/he;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/a/c/he;-><init>(Ljava/util/Iterator;Lcom/google/a/a/aa;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1205
    new-instance v0, Lcom/google/a/c/cw;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/cw;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
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
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3381
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 3382
    const/4 v0, 0x0

    .line 3384
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/a/c/hc;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    .line 205
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 206
    add-int/lit8 v0, p0, 0x1

    .line 211
    :goto_1
    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    const/high16 v0, 0x4000

    if-ge p0, v0, :cond_2

    .line 209
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_1

    .line 211
    :cond_2
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3427
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/as;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3429
    sget-object v1, Lcom/google/a/c/hc;->a:Lcom/google/a/a/af;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/a/a/af;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    .line 3430
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static b(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/google/a/c/hg;->b:Lcom/google/a/c/hg;

    invoke-static {p0, v0}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;Lcom/google/a/a/aa;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1232
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    new-instance v0, Lcom/google/a/c/hf;

    invoke-direct {v0, p0}, Lcom/google/a/c/hf;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static b(Ljava/util/Collection;Ljava/lang/Object;)Z
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
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3401
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 3402
    const/4 v0, 0x0

    .line 3404
    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/a/c/hc;->b(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3328
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3334
    :goto_0
    return v0

    .line 3332
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3334
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3343
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3345
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3349
    :goto_0
    return-object v0

    .line 3347
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3349
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static c()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static d()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/google/a/c/ey;

    invoke-direct {v0}, Lcom/google/a/c/ey;-><init>()V

    invoke-virtual {v0}, Lcom/google/a/c/ey;->f()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3364
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/google/a/c/hg;->b:Lcom/google/a/c/hg;

    invoke-static {v0, v1}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;Lcom/google/a/a/aa;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/eg;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method static e(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3411
    if-ne p0, p1, :cond_0

    .line 3412
    const/4 v0, 0x1

    .line 3417
    :goto_0
    return v0

    .line 3413
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3414
    check-cast p1, Ljava/util/Map;

    .line 3415
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3417
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
