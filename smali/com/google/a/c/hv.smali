.class public final Lcom/google/a/c/hv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/a/c/ih;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ih",
            "<",
            "Lcom/google/a/c/hu",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1060
    new-instance v0, Lcom/google/a/c/hw;

    invoke-direct {v0}, Lcom/google/a/c/hw;-><init>()V

    sput-object v0, Lcom/google/a/c/hv;->a:Lcom/google/a/c/ih;

    return-void
.end method

.method static a(Lcom/google/a/c/ht;Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/ht",
            "<TE;>;TE;I)I"
        }
    .end annotation

    .prologue
    .line 863
    const-string/jumbo v0, "count"

    invoke-static {p2, v0}, Lcom/google/a/c/hv;->a(ILjava/lang/String;)V

    .line 865
    invoke-interface {p0, p1}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;)I

    move-result v0

    .line 867
    sub-int v1, p2, v0

    .line 868
    if-lez v1, :cond_1

    .line 869
    invoke-interface {p0, p1, v1}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;I)I

    .line 874
    :cond_0
    :goto_0
    return v0

    .line 870
    :cond_1
    if-gez v1, :cond_0

    .line 871
    neg-int v1, v1

    invoke-interface {p0, p1, v1}, Lcom/google/a/c/ht;->b(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;I)Lcom/google/a/c/hu;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/google/a/c/ib;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/ib;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static a(Lcom/google/a/c/ht;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/ht",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Lcom/google/a/c/ic;

    invoke-interface {p0}, Lcom/google/a/c/ht;->e_()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ic;-><init>(Lcom/google/a/c/ht;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static a(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1050
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "%s cannot be negative: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    return-void

    :cond_0
    move v0, v2

    .line 1050
    goto :goto_0
.end method

.method static a(Lcom/google/a/c/ht;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ht",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 792
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 814
    :goto_0
    return v0

    .line 795
    :cond_0
    instance-of v0, p1, Lcom/google/a/c/ht;

    if-eqz v0, :cond_5

    .line 796
    check-cast p1, Lcom/google/a/c/ht;

    .line 803
    invoke-interface {p0}, Lcom/google/a/c/ht;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/a/c/ht;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lcom/google/a/c/ht;->e_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/a/c/ht;->e_()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 805
    goto :goto_0

    .line 807
    :cond_2
    invoke-interface {p1}, Lcom/google/a/c/ht;->e_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    .line 808
    invoke-interface {v0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v0

    if-eq v4, v0, :cond_3

    move v0, v2

    .line 809
    goto :goto_0

    :cond_4
    move v0, v1

    .line 812
    goto :goto_0

    :cond_5
    move v0, v2

    .line 814
    goto :goto_0
.end method

.method static a(Lcom/google/a/c/ht;Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/ht",
            "<TE;>;TE;II)Z"
        }
    .end annotation

    .prologue
    .line 882
    const-string/jumbo v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/a/c/hv;->a(ILjava/lang/String;)V

    .line 883
    const-string/jumbo v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/a/c/hv;->a(ILjava/lang/String;)V

    .line 885
    invoke-interface {p0, p1}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 886
    invoke-interface {p0, p1, p3}, Lcom/google/a/c/ht;->c(Ljava/lang/Object;I)I

    .line 887
    const/4 v0, 0x1

    .line 889
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/google/a/c/ht;Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/ht",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 822
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    const/4 v0, 0x0

    .line 833
    :goto_0
    return v0

    .line 825
    :cond_0
    instance-of v0, p1, Lcom/google/a/c/ht;

    if-eqz v0, :cond_1

    .line 826
    check-cast p1, Lcom/google/a/c/ht;

    .line 827
    invoke-interface {p1}, Lcom/google/a/c/ht;->e_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    .line 828
    invoke-interface {v0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;I)I

    goto :goto_1

    .line 831
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/a/c/eg;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 833
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Lcom/google/a/c/ht;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ht",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1042
    const-wide/16 v0, 0x0

    .line 1043
    invoke-interface {p0}, Lcom/google/a/c/ht;->e_()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    .line 1044
    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    .line 1046
    :cond_0
    invoke-static {v1, v2}, Lcom/google/a/h/a;->a(J)I

    move-result v0

    return v0
.end method

.method static b(Lcom/google/a/c/ht;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ht",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 841
    instance-of v0, p1, Lcom/google/a/c/ht;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/a/c/ht;

    invoke-interface {p1}, Lcom/google/a/c/ht;->d()Ljava/util/Set;

    move-result-object p1

    .line 844
    :cond_0
    invoke-interface {p0}, Lcom/google/a/c/ht;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static c(Lcom/google/a/c/ht;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ht",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 852
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    instance-of v0, p1, Lcom/google/a/c/ht;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/a/c/ht;

    invoke-interface {p1}, Lcom/google/a/c/ht;->d()Ljava/util/Set;

    move-result-object p1

    .line 856
    :cond_0
    invoke-interface {p0}, Lcom/google/a/c/ht;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
