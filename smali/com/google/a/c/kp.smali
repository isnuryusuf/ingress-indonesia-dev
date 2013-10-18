.class final Lcom/google/a/c/kp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/a/aa",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ko;


# direct methods
.method constructor <init>(Lcom/google/a/c/ko;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/google/a/c/kp;->a:Lcom/google/a/c/ko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/a/c/kp;->a:Lcom/google/a/c/ko;

    iget-object v0, v0, Lcom/google/a/c/ko;->a:Lcom/google/a/c/kn;

    iget-object v0, v0, Lcom/google/a/c/kn;->a:Lcom/google/a/c/kh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/kh;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
