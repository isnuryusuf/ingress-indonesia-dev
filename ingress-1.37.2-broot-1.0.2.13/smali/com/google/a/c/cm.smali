.class public final Lcom/google/a/c/cm;
.super Lcom/google/a/c/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ae",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/a/c/ae;-><init>(Ljava/util/Map;)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/a/c/cm;->a:I

    .line 92
    return-void
.end method

.method public static i()Lcom/google/a/c/cm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/cm",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/a/c/cm;

    invoke-direct {v0}, Lcom/google/a/c/cm;-><init>()V

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lcom/google/a/c/cm;->a:I

    invoke-static {v0}, Lcom/google/a/c/jc;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/a/c/ae;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/a/c/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/a/c/ae;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/a/c/ae;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/a/c/ae;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/a/c/cm;->a:I

    invoke-static {v0}, Lcom/google/a/c/jc;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/a/c/ae;->e()V

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/a/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic h()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/a/c/ae;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/a/c/ae;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/a/c/ae;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
