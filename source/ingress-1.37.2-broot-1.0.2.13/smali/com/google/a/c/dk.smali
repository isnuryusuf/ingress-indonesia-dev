.class final Lcom/google/a/c/dk;
.super Lcom/google/a/c/dj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dj",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/dj;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/c/dj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dj",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
