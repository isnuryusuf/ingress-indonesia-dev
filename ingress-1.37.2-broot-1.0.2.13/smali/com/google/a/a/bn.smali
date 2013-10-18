.class final Lcom/google/a/a/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/bn;->b:I

    .line 2424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/bn;->a:Ljava/util/Map;

    .line 2425
    return-void
.end method


# virtual methods
.method public final a(CLjava/lang/String;)Lcom/google/a/a/bn;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/google/a/a/bn;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2432
    iget v0, p0, Lcom/google/a/a/bn;->b:I

    if-le p1, v0, :cond_0

    .line 2433
    iput p1, p0, Lcom/google/a/a/bn;->b:I

    .line 2435
    :cond_0
    return-object p0
.end method

.method public final a()[[C
    .locals 4

    .prologue
    .line 2446
    iget v0, p0, Lcom/google/a/a/bn;->b:I

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [[C

    .line 2447
    iget-object v0, p0, Lcom/google/a/a/bn;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    .line 2450
    :cond_0
    return-object v2
.end method
