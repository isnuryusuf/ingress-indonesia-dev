.class final Lcom/google/a/c/cl;
.super Lcom/google/a/c/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/by",
        "<TK;TV;>.com/google/a/c/cj<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ck;


# direct methods
.method constructor <init>(Lcom/google/a/c/ck;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/a/c/cl;->a:Lcom/google/a/c/ck;

    iget-object v0, p1, Lcom/google/a/c/ck;->a:Lcom/google/a/c/by;

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
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p1, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    return-object v0
.end method
