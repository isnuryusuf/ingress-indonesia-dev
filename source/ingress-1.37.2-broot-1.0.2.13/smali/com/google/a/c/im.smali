.class final Lcom/google/a/c/im;
.super Lcom/google/a/c/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/dl",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/il;


# direct methods
.method private constructor <init>(Lcom/google/a/c/il;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/a/c/im;->a:Lcom/google/a/c/il;

    invoke-direct {p0}, Lcom/google/a/c/dl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c/il;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/a/c/im;-><init>(Lcom/google/a/c/il;)V

    return-void
.end method


# virtual methods
.method final a_()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/a/c/im;->a:Lcom/google/a/c/il;

    return-object v0
.end method

.method public final b()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/a/c/im;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method final f()Lcom/google/a/c/dc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lcom/google/a/c/ij;

    iget-object v1, p0, Lcom/google/a/c/im;->a:Lcom/google/a/c/il;

    invoke-static {v1}, Lcom/google/a/c/il;->a(Lcom/google/a/c/il;)[Lcom/google/a/c/dj;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ij;-><init>(Lcom/google/a/c/ct;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/a/c/im;->a()Lcom/google/a/c/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dc;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method
