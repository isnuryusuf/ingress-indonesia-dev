.class final enum Lcom/google/a/c/gl;
.super Lcom/google/a/c/gk;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0, v0}, Lcom/google/a/c/gk;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/a/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/google/a/a/x;->a()Lcom/google/a/a/x;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/a/c/gi;Lcom/google/a/c/gh;Ljava/lang/Object;)Lcom/google/a/c/gu;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/gi",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;TV;)",
            "Lcom/google/a/c/gu",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/google/a/c/gs;

    invoke-direct {v0, p3}, Lcom/google/a/c/gs;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
