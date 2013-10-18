.class public final Lcom/google/a/c/cs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/di;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/di",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/cs;->a:Lcom/google/a/c/di;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/cr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/cr",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/a/c/cr;

    iget-object v1, p0, Lcom/google/a/c/cs;->a:Lcom/google/a/c/di;

    invoke-virtual {v1}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/cr;-><init>(Lcom/google/a/c/dh;B)V

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Lcom/google/a/c/cs;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Class",
            "<+TT;>;+TT;>;)",
            "Lcom/google/a/c/cs",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget-object v3, p0, Lcom/google/a/c/cs;->a:Lcom/google/a/c/di;

    invoke-static {v1}, Lcom/google/a/h/c;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    goto :goto_0

    .line 90
    :cond_0
    return-object p0
.end method
