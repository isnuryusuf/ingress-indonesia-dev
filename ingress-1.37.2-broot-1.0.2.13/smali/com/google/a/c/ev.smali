.class final Lcom/google/a/c/ev;
.super Lcom/google/a/c/bo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/bo",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/a/c/eu;


# direct methods
.method constructor <init>(Lcom/google/a/c/eu;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/a/c/ev;->b:Lcom/google/a/c/eu;

    iput-object p2, p0, Lcom/google/a/c/ev;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/a/c/bo;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1
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
    .line 589
    iget-object v0, p0, Lcom/google/a/c/ev;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/a/c/ev;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/a/c/ev;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/a/c/ev;->b:Lcom/google/a/c/eu;

    iget-object v1, v1, Lcom/google/a/c/eu;->a:Lcom/google/a/c/er;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/a/c/et;

    invoke-direct {v2, v0, v1}, Lcom/google/a/c/et;-><init>(Ljava/util/Map$Entry;Lcom/google/a/c/er;)V

    return-object v2
.end method
