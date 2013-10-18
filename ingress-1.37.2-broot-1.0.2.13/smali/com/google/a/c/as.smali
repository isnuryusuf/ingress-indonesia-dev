.class public final Lcom/google/a/c/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/a/a/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 321
    const-string/jumbo v0, ", "

    invoke-static {v0}, Lcom/google/a/a/ab;->a(Ljava/lang/String;)Lcom/google/a/a/ab;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/a/a/ab;->b(Ljava/lang/String;)Lcom/google/a/a/ab;

    move-result-object v0

    sput-object v0, Lcom/google/a/c/as;->a:Lcom/google/a/a/ab;

    return-void
.end method

.method static a(I)Ljava/lang/StringBuilder;
    .locals 5
    .parameter

    .prologue
    .line 310
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "size must be non-negative"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 318
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {p0}, Lcom/google/a/a/ap;->a(Ljava/util/Collection;)Lcom/google/a/a/ao;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/c/eg;->d(Ljava/util/Iterator;Lcom/google/a/a/ao;)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    goto :goto_0
.end method
