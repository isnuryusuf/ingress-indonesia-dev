.class public final Lcom/google/a/c/kt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/a/a/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/aa",
            "<+",
            "Ljava/util/Map",
            "<**>;+",
            "Ljava/util/Map",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 591
    new-instance v0, Lcom/google/a/c/ku;

    invoke-direct {v0}, Lcom/google/a/c/ku;-><init>()V

    sput-object v0, Lcom/google/a/c/kt;->a:Lcom/google/a/a/aa;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ks;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/google/a/c/kw;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/c/kw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Lcom/google/a/c/kr;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/kr",
            "<***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 600
    if-ne p1, p0, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    .line 602
    :cond_0
    instance-of v0, p1, Lcom/google/a/c/kr;

    if-eqz v0, :cond_1

    .line 603
    check-cast p1, Lcom/google/a/c/kr;

    .line 604
    invoke-interface {p0}, Lcom/google/a/c/kr;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/a/c/kr;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 606
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
