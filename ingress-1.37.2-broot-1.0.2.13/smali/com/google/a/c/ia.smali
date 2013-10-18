.class abstract Lcom/google/a/c/ia;
.super Lcom/google/a/c/jh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/jh",
        "<",
        "Lcom/google/a/c/hu",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/google/a/c/jh;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/a/c/ht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ht",
            "<TE;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/google/a/c/ia;->a()Lcom/google/a/c/ht;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ht;->clear()V

    .line 979
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 941
    instance-of v1, p1, Lcom/google/a/c/hu;

    if-eqz v1, :cond_0

    .line 949
    check-cast p1, Lcom/google/a/c/hu;

    .line 950
    invoke-interface {p1}, Lcom/google/a/c/hu;->b()I

    move-result v1

    if-gtz v1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v0

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/google/a/c/ia;->a()Lcom/google/a/c/ht;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;)I

    move-result v1

    .line 954
    invoke-interface {p1}, Lcom/google/a/c/hu;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 963
    instance-of v1, p1, Lcom/google/a/c/hu;

    if-eqz v1, :cond_0

    .line 964
    check-cast p1, Lcom/google/a/c/hu;

    .line 965
    invoke-interface {p1}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v1

    .line 966
    invoke-interface {p1}, Lcom/google/a/c/hu;->b()I

    move-result v2

    .line 967
    if-eqz v2, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/google/a/c/ia;->a()Lcom/google/a/c/ht;

    move-result-object v3

    .line 971
    invoke-interface {v3, v1, v2, v0}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;II)Z

    move-result v0

    .line 974
    :cond_0
    return v0
.end method
