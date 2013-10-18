.class final Lcom/google/a/a/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/bq;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/a/bp;
    .locals 3

    .prologue
    .line 2204
    new-instance v0, Lcom/google/a/a/bp;

    iget-object v1, p0, Lcom/google/a/a/bq;->a:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/bp;-><init>(Ljava/util/Set;B)V

    return-object v0
.end method

.method final a(I)Lcom/google/a/a/bq;
    .locals 2
    .parameter

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/google/a/a/bq;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2186
    return-object p0
.end method

.method final a(II)Lcom/google/a/a/bq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2190
    :goto_0
    if-gt p1, p2, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/google/a/a/bq;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2190
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2193
    :cond_0
    return-object p0
.end method

.method final a(Lcom/google/a/a/bp;)Lcom/google/a/a/bq;
    .locals 3
    .parameter

    .prologue
    .line 2197
    iget-object v0, p1, Lcom/google/a/a/bp;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2198
    iget-object v2, p0, Lcom/google/a/a/bq;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2200
    :cond_0
    return-object p0
.end method
