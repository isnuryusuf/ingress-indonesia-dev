.class final Lcom/nianticproject/ingress/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 728
    return-void
.end method
