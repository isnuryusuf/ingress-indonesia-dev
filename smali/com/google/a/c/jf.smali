.class Lcom/google/a/c/jf;
.super Lcom/google/a/c/at;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/at",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/a/a/ao;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lcom/google/a/a/ao",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 930
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/at;-><init>(Ljava/util/Collection;Lcom/google/a/a/ao;)V

    .line 931
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 934
    invoke-static {p0, p1}, Lcom/google/a/c/jc;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 938
    invoke-static {p0}, Lcom/google/a/c/jc;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
