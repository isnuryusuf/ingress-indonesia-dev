.class final Lcom/google/a/c/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/gu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/c/gu",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    iput-object p1, p0, Lcom/google/a/c/gs;->a:Ljava/lang/Object;

    .line 1769
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1778
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/a/c/gh;)Lcom/google/a/c/gu;
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gu",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1784
    return-object p0
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1798
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/google/a/c/gs;->a:Ljava/lang/Object;

    return-object v0
.end method
