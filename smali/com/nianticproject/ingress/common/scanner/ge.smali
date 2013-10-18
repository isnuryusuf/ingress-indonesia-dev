.class public final Lcom/nianticproject/ingress/common/scanner/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/gb;


# instance fields
.field private final a:La/a/a/a/b/bi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bi",
            "<",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, La/a/a/a/b/bl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/b/bl;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ge;->a:La/a/a/a/b/bi;

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/scanner/ga;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/ga;->k()J

    move-result-wide v1

    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ge;->a:La/a/a/a/b/bi;

    invoke-interface {v0, v1, v2}, La/a/a/a/b/bi;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/ga;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ge;->a:La/a/a/a/b/bi;

    invoke-interface {v0, v1, v2}, La/a/a/a/b/bi;->a(J)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/scanner/ga;)V
    .locals 4
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/ga;->k()J

    move-result-wide v1

    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ge;->a:La/a/a/a/b/bi;

    invoke-interface {v0, v1, v2}, La/a/a/a/b/bi;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 38
    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/google/a/c/jc;->d()Ljava/util/TreeSet;

    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ge;->a:La/a/a/a/b/bi;

    invoke-interface {v3, v1, v2, v0}, La/a/a/a/b/bi;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/ga;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1, p0}, Lcom/nianticproject/ingress/common/scanner/ga;->a(Lcom/nianticproject/ingress/common/scanner/gb;)V

    .line 47
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/common/scanner/ga;)Z
    .locals 3
    .parameter

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/ga;->k()J

    move-result-wide v0

    .line 67
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ge;->a:La/a/a/a/b/bi;

    invoke-interface {v2, v0, v1}, La/a/a/a/b/bi;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 71
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/ga;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
