.class final enum Lcom/google/a/c/fn;
.super Lcom/google/a/c/fm;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, p1, v0, v0}, Lcom/google/a/c/fm;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/c/gi;Ljava/lang/Object;ILcom/google/a/c/gh;)Lcom/google/a/c/gh;
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
            "Lcom/google/a/c/gi",
            "<TK;TV;>;TK;I",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lcom/google/a/c/go;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/a/c/go;-><init>(Ljava/lang/Object;ILcom/google/a/c/gh;)V

    return-object v0
.end method
