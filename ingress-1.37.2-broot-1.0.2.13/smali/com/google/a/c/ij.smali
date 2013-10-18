.class Lcom/google/a/c/ij;
.super Lcom/google/a/c/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/cp",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/ct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ct",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/ct;Lcom/google/a/c/dc;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ct",
            "<TE;>;",
            "Lcom/google/a/c/dc",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/a/c/cp;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/a/c/ij;->a:Lcom/google/a/c/ct;

    .line 36
    iput-object p2, p0, Lcom/google/a/c/ij;->b:Lcom/google/a/c/dc;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/google/a/c/ct;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/ct",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p2}, Lcom/google/a/c/dc;->a([Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/ij;-><init>(Lcom/google/a/c/ct;Lcom/google/a/c/dc;)V

    .line 41
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/a/c/ij;->b:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/c/dc;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/google/a/c/lk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/lk",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/a/c/ij;->b:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->a(I)Lcom/google/a/c/lk;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/google/a/c/ct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/a/c/ij;->a:Lcom/google/a/c/ct;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/a/c/ij;->b:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/a/c/ij;->a(I)Lcom/google/a/c/lk;

    move-result-object v0

    return-object v0
.end method
