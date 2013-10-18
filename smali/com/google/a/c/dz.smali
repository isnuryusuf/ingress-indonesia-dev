.class public abstract Lcom/google/a/c/dz;
.super Lcom/google/a/c/eb;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/jn;
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/eb",
        "<TE;>;",
        "Lcom/google/a/c/jn",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dz",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field transient b:Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/google/a/c/ih;->b()Lcom/google/a/c/ih;

    move-result-object v0

    sput-object v0, Lcom/google/a/c/dz;->c:Ljava/util/Comparator;

    .line 100
    new-instance v0, Lcom/google/a/c/bk;

    sget-object v1, Lcom/google/a/c/dz;->c:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/a/c/bk;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/a/c/dz;->d:Lcom/google/a/c/dz;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/google/a/c/eb;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/google/a/c/dz;->a:Ljava/util/Comparator;

    .line 586
    return-void
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/google/a/c/dz;->c:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/google/a/c/dz;->d:Lcom/google/a/c/dz;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/bk;

    invoke-direct {v0, p0}, Lcom/google/a/c/bk;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static varargs a(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/a/c/dz;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;I[TE;)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 424
    if-nez p1, :cond_0

    .line 425
    invoke-static {p0}, Lcom/google/a/c/dz;->a(Ljava/util/Comparator;)Lcom/google/a/c/dz;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    .line 427
    :cond_0
    invoke-static {p2, p1}, Lcom/google/a/c/ig;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 428
    const/4 v1, 0x0

    invoke-static {p2, v1, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v2, v0

    move v1, v0

    .line 430
    :goto_1
    if-ge v2, p1, :cond_1

    .line 431
    aget-object v3, p2, v2

    .line 432
    add-int/lit8 v0, v1, -0x1

    aget-object v0, p2, v0

    .line 433
    invoke-interface {p0, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    add-int/lit8 v0, v1, 0x1

    aput-object v3, p2, v1

    .line 430
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 437
    :cond_1
    const/4 v0, 0x0

    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 438
    new-instance v0, Lcom/google/a/c/it;

    invoke-static {p2, v1}, Lcom/google/a/c/dc;->b([Ljava/lang/Object;I)Lcom/google/a/c/dc;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/a/c/it;-><init>(Lcom/google/a/c/dc;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static i()Lcom/google/a/c/ea;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/a/c/ea",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lcom/google/a/c/ea;

    invoke-static {}, Lcom/google/a/c/ih;->b()Lcom/google/a/c/ih;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/c/ea;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)I
.end method

.method abstract a(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation
.end method

.method final b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/a/c/dz;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method abstract b(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lcom/google/a/c/dz;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 656
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/a/c/dz;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0

    .line 655
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()Lcom/google/a/c/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation
.end method

.method public b_()Lcom/google/a/c/dz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/a/c/dz;->b:Lcom/google/a/c/dz;

    .line 780
    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/google/a/c/dz;->d()Lcom/google/a/c/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/dz;->b:Lcom/google/a/c/dz;

    .line 782
    iput-object p0, v0, Lcom/google/a/c/dz;->b:Lcom/google/a/c/dz;

    .line 784
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/a/c/dz;->a(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/google/a/c/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 719
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dz;->d(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ee;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

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
    .line 597
    iget-object v0, p0, Lcom/google/a/c/dz;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method d()Lcom/google/a/c/dz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 789
    new-instance v0, Lcom/google/a/c/be;

    invoke-direct {v0, p0}, Lcom/google/a/c/be;-><init>(Lcom/google/a/c/dz;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Z)Lcom/google/a/c/dz;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/a/c/dz",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/a/c/dz;->b(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/a/c/dz;->c()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/a/c/dz;->b_()Lcom/google/a/c/dz;

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
    .line 733
    invoke-virtual {p0}, Lcom/google/a/c/dz;->b()Lcom/google/a/c/lj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/lj;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 710
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dz;->c(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->c()Lcom/google/a/c/lj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->e(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/dz;->c(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dz;->c(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dz;->d(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ee;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/a/c/dz;->b()Lcom/google/a/c/lj;

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
    .line 738
    invoke-virtual {p0}, Lcom/google/a/c/dz;->c()Lcom/google/a/c/lj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/lj;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dz;->c(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->c()Lcom/google/a/c/lj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->e(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/a/c/dz;->b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/a/c/dz;->b(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/dz;->d(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/a/c/dz;->d(Ljava/lang/Object;Z)Lcom/google/a/c/dz;

    move-result-object v0

    return-object v0
.end method
