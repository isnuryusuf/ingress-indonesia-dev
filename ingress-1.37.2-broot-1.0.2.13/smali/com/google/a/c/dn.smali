.class final Lcom/google/a/c/dn;
.super Lcom/google/a/c/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/cp",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/dc;

.field final synthetic b:Lcom/google/a/c/dm;


# direct methods
.method constructor <init>(Lcom/google/a/c/dm;Lcom/google/a/c/dc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/a/c/dn;->b:Lcom/google/a/c/dm;

    iput-object p2, p0, Lcom/google/a/c/dn;->a:Lcom/google/a/c/dc;

    invoke-direct {p0}, Lcom/google/a/c/cp;-><init>()V

    return-void
.end method


# virtual methods
.method final c()Lcom/google/a/c/ct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/a/c/dn;->b:Lcom/google/a/c/dm;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/a/c/dn;->a:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
