.class final Lcom/google/a/c/hz;
.super Lcom/google/a/c/kx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/kx",
        "<",
        "Lcom/google/a/c/hu",
        "<TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/hy;


# direct methods
.method constructor <init>(Lcom/google/a/c/hy;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/google/a/c/hz;->a:Lcom/google/a/c/hy;

    invoke-direct {p0, p2}, Lcom/google/a/c/kx;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 913
    check-cast p1, Lcom/google/a/c/hu;

    invoke-interface {p1}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
