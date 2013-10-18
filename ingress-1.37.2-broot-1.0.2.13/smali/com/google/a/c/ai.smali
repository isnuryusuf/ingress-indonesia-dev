.class final Lcom/google/a/c/ai;
.super Lcom/google/a/c/kx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/kx",
        "<",
        "Lcom/google/a/c/ks",
        "<TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ah;


# direct methods
.method constructor <init>(Lcom/google/a/c/ah;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/a/c/ai;->a:Lcom/google/a/c/ah;

    invoke-direct {p0, p2}, Lcom/google/a/c/kx;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 172
    check-cast p1, Lcom/google/a/c/ks;

    invoke-interface {p1}, Lcom/google/a/c/ks;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
