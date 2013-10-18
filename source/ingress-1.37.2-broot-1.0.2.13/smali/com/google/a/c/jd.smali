.class final Lcom/google/a/c/jd;
.super Lcom/google/a/c/ji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/ji",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/a/a/ao;

.field final synthetic c:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/a/a/ao;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/google/a/c/jd;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/a/c/jd;->b:Lcom/google/a/a/ao;

    iput-object p3, p0, Lcom/google/a/c/jd;->c:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/c/ji;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/a/c/jd;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/c/jd;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/a/c/jd;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/a/c/jd;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/a/c/jd;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/jd;->b:Lcom/google/a/a/ao;

    invoke-static {v0, v1}, Lcom/google/a/c/eg;->b(Ljava/util/Iterator;Lcom/google/a/a/ao;)Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/google/a/c/jd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/eg;->b(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
