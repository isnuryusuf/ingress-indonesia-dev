.class final Lcom/google/a/c/fw;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/fi;


# direct methods
.method constructor <init>(Lcom/google/a/c/fi;)V
    .locals 0
    .parameter

    .prologue
    .line 3851
    iput-object p1, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 3895
    iget-object v0, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->clear()V

    .line 3896
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3860
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3870
    :cond_0
    :goto_0
    return v0

    .line 3863
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3864
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3865
    if-eqz v1, :cond_0

    .line 3868
    iget-object v2, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    invoke-virtual {v2, v1}, Lcom/google/a/c/fi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3870
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    iget-object v2, v2, Lcom/google/a/c/fi;->f:Lcom/google/a/a/x;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 3890
    iget-object v0, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3855
    new-instance v0, Lcom/google/a/c/fv;

    iget-object v1, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    invoke-direct {v0, v1}, Lcom/google/a/c/fv;-><init>(Lcom/google/a/c/fi;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3875
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3880
    :cond_0
    :goto_0
    return v0

    .line 3878
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3879
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3880
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/a/c/fi;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 3885
    iget-object v0, p0, Lcom/google/a/c/fw;->a:Lcom/google/a/c/fi;

    invoke-virtual {v0}, Lcom/google/a/c/fi;->size()I

    move-result v0

    return v0
.end method
