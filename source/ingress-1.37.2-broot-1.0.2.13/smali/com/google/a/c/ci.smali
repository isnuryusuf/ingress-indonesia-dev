.class final Lcom/google/a/c/ci;
.super Lcom/google/a/c/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/by",
        "<TK;TV;>.com/google/a/c/cj<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ch;


# direct methods
.method constructor <init>(Lcom/google/a/c/ch;)V
    .locals 1
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/a/c/ci;->a:Lcom/google/a/c/ch;

    iget-object v0, p1, Lcom/google/a/c/ch;->a:Lcom/google/a/c/cd;

    iget-object v0, v0, Lcom/google/a/c/cd;->a:Lcom/google/a/c/by;

    invoke-direct {p0, v0}, Lcom/google/a/c/cj;-><init>(Lcom/google/a/c/by;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/a/c/bz;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/bz",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p1, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    return-object v0
.end method
