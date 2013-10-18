.class public final Lcom/google/a/c/bw;
.super Lcom/google/a/c/kh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/kh",
        "<TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/a/c/bx;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/a/c/bx",
            "<TC;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/kh;-><init>(Ljava/util/Map;Lcom/google/a/a/bs;)V

    .line 113
    return-void
.end method

.method public static j()Lcom/google/a/c/bw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/bw",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/google/a/c/bw;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/a/c/bx;

    invoke-direct {v2}, Lcom/google/a/c/bx;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/bw;-><init>(Ljava/util/Map;Lcom/google/a/c/bx;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/google/a/c/kh;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/google/a/c/kh;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/google/a/c/kh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/google/a/c/kh;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->b()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/google/a/c/kh;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/a/c/kh;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->c()V

    return-void
.end method

.method public final bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/a/c/kh;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic g()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->g()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic l()I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->l()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic m()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->m()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/a/c/kh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
