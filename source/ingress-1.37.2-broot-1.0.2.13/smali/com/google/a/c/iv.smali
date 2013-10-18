.class final Lcom/google/a/c/iv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/a/c/ks",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/a/c/iv;->a:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/a/c/iv;->b:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    check-cast p1, Lcom/google/a/c/ks;

    check-cast p2, Lcom/google/a/c/ks;

    iget-object v0, p0, Lcom/google/a/c/iv;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/c/iv;->a:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/a/c/iv;->b:Ljava/util/Comparator;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/a/c/iv;->b:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method
