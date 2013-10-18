.class public final Lcom/google/a/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/a/a/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    const-string/jumbo v0, ","

    invoke-static {v0}, Lcom/google/a/a/ab;->a(Ljava/lang/String;)Lcom/google/a/a/ab;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/ap;->a:Lcom/google/a/a/ab;

    return-void
.end method

.method static synthetic a()Lcom/google/a/a/ab;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/a/a/ap;->a:Lcom/google/a/a/ab;

    return-object v0
.end method

.method public static a(Lcom/google/a/a/ao;)Lcom/google/a/a/ao;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/a/ao",
            "<TT;>;)",
            "Lcom/google/a/a/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/google/a/a/at;

    invoke-direct {v0, p0}, Lcom/google/a/a/at;-><init>(Lcom/google/a/a/ao;)V

    return-object v0
.end method

.method public static a(Lcom/google/a/a/ao;Lcom/google/a/a/ao;)Lcom/google/a/a/ao;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/a/ao",
            "<-TT;>;",
            "Lcom/google/a/a/ao",
            "<-TT;>;)",
            "Lcom/google/a/a/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 131
    new-instance v2, Lcom/google/a/a/aq;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ao;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/ao;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/a/a/ao;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/google/a/a/aq;-><init>(Ljava/util/List;B)V

    return-object v2
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/a/a/ao;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/a/a/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    sget-object v0, Lcom/google/a/a/au;->c:Lcom/google/a/a/au;

    invoke-virtual {v0}, Lcom/google/a/a/au;->a()Lcom/google/a/a/ao;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/a/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/a/as;-><init>(Ljava/lang/Object;B)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/a/a/ao;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lcom/google/a/a/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lcom/google/a/a/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/a/ar;-><init>(Ljava/util/Collection;B)V

    return-object v0
.end method
