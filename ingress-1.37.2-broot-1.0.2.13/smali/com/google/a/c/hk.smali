.class abstract Lcom/google/a/c/hk;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3270
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3293
    new-instance v0, Lcom/google/a/c/hl;

    invoke-direct {v0, p0}, Lcom/google/a/c/hl;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 3281
    iget-object v0, p0, Lcom/google/a/c/hk;->a:Ljava/util/Set;

    .line 3282
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/hk;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/hk;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/google/a/c/hk;->b:Ljava/util/Set;

    .line 3289
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/hk;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/hk;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3299
    iget-object v0, p0, Lcom/google/a/c/hk;->c:Ljava/util/Collection;

    .line 3300
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/c/hm;

    invoke-direct {v0, p0}, Lcom/google/a/c/hm;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/a/c/hk;->c:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
