.class final Lcom/google/a/c/ca;
.super Lcom/google/a/c/hj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hj",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/by;


# direct methods
.method private constructor <init>(Lcom/google/a/c/by;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/a/c/ca;->a:Lcom/google/a/c/by;

    invoke-direct {p0}, Lcom/google/a/c/hj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c/by;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/google/a/c/ca;-><init>(Lcom/google/a/c/by;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/a/c/ca;->a:Lcom/google/a/c/by;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/google/a/c/cb;

    invoke-direct {v0, p0}, Lcom/google/a/c/cb;-><init>(Lcom/google/a/c/ca;)V

    return-object v0
.end method
