.class final La/a/a/a/b/ar;
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
        "La/a/a/a/b/bj",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/aq;


# direct methods
.method constructor <init>(La/a/a/a/b/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    iput-object p1, p0, La/a/a/a/b/ar;->a:La/a/a/a/b/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1177
    check-cast p1, La/a/a/a/b/bj;

    check-cast p2, La/a/a/a/b/bj;

    iget-object v0, p0, La/a/a/a/b/ar;->a:La/a/a/a/b/aq;

    iget-object v0, v0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    iget-object v0, v0, La/a/a/a/b/ap;->j:Ljava/util/Comparator;

    invoke-interface {p1}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
