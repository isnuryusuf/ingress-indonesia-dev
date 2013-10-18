.class final enum Lcom/google/a/b/x;
.super Lcom/google/a/b/w;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, p1, v0, v0}, Lcom/google/a/b/w;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/b/aq;Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;
    .locals 1
    .parameter
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
            "Lcom/google/a/b/aq",
            "<TK;TV;>;TK;I",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Lcom/google/a/b/az;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/a/b/az;-><init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V

    return-object v0
.end method
