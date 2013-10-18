.class final Lcom/google/a/c/et;
.super Lcom/google/a/c/bq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/bq",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/a/c/er;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/a/c/er;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/a/c/et;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/a/c/et;->b:Lcom/google/a/c/er;

    invoke-direct {p0}, Lcom/google/a/c/bq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/a/c/et;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/a/c/et;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/a/c/et;->b:Lcom/google/a/c/er;

    invoke-virtual {p0}, Lcom/google/a/c/et;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/a/c/er;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/google/a/c/et;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
