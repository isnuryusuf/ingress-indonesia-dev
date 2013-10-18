.class final Lcom/google/a/c/w;
.super Lcom/google/a/c/hx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hx",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/a/c/v;


# direct methods
.method constructor <init>(Lcom/google/a/c/v;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/a/c/w;->b:Lcom/google/a/c/v;

    iput-object p2, p0, Lcom/google/a/c/w;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/a/c/hx;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/a/c/w;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/a/c/w;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    invoke-virtual {v0}, Lcom/google/a/c/av;->a()I

    move-result v1

    .line 109
    if-nez v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/a/c/w;->b:Lcom/google/a/c/v;

    iget-object v0, v0, Lcom/google/a/c/v;->c:Lcom/google/a/c/u;

    invoke-static {v0}, Lcom/google/a/c/u;->a(Lcom/google/a/c/u;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/a/c/w;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/av;

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/google/a/c/av;->a()I

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
