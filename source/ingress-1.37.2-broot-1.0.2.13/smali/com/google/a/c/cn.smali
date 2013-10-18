.class public final Lcom/google/a/c/cn;
.super Lcom/google/a/c/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/u",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/a/c/u;-><init>(Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public static f()Lcom/google/a/c/cn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/cn",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/google/a/c/cn;

    invoke-direct {v0}, Lcom/google/a/c/cn;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/a/c/u;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/google/a/c/u;->a(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/a/c/u;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/a/c/u;->c(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->clear()V

    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e_()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->e_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/a/c/u;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic size()I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/a/c/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
