.class final Lcom/google/a/c/he;
.super Lcom/google/a/c/kx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/kx",
        "<TK;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/a/aa;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/a/a/aa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 832
    iput-object p2, p0, Lcom/google/a/c/he;->a:Lcom/google/a/a/aa;

    invoke-direct {p0, p1}, Lcom/google/a/c/kx;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/a/c/he;->a:Lcom/google/a/a/aa;

    invoke-interface {v0, p1}, Lcom/google/a/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/a/c/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
