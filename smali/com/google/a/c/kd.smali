.class Lcom/google/a/c/kd;
.super Lcom/google/a/c/hy;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/hy",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/ka;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ka",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/a/c/hy;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    .line 54
    return-void
.end method


# virtual methods
.method final bridge synthetic a()Lcom/google/a/c/ht;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    return-object v0
.end method

.method final b()Lcom/google/a/c/ka;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    invoke-interface {v0}, Lcom/google/a/c/ka;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    invoke-interface {v0}, Lcom/google/a/c/ka;->g()Lcom/google/a/c/hu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/kc;->a(Lcom/google/a/c/hu;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    sget-object v1, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    invoke-interface {v0, p1, v1}, Lcom/google/a/c/ka;->a(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->f()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    invoke-interface {v0}, Lcom/google/a/c/ka;->h()Lcom/google/a/c/hu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/kc;->a(Lcom/google/a/c/hu;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    sget-object v1, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    sget-object v2, Lcom/google/a/c/an;->a:Lcom/google/a/c/an;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/a/c/ka;->a(Ljava/lang/Object;Lcom/google/a/c/an;Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->f()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/a/c/kd;->a:Lcom/google/a/c/ka;

    sget-object v1, Lcom/google/a/c/an;->b:Lcom/google/a/c/an;

    invoke-interface {v0, p1, v1}, Lcom/google/a/c/ka;->b(Ljava/lang/Object;Lcom/google/a/c/an;)Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->f()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
