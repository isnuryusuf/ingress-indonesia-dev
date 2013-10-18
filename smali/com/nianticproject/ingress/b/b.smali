.class public abstract Lcom/nianticproject/ingress/b/b;
.super Lcom/nianticproject/ingress/common/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nianticproject/ingress/common/f/a",
        "<TProgress;TResult;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/nianticproject/ingress/b/a;->a()Lcom/nianticproject/ingress/b/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/f/a;-><init>(Ljava/util/concurrent/Executor;)V

    .line 16
    return-void
.end method
