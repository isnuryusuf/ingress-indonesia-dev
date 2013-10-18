.class final Lcom/google/a/i/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Lcom/google/a/i/a/p;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/a/i/a/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/google/a/i/a/t;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/a/i/a/t;->b:Lcom/google/a/i/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/a/i/a/t;->a:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/google/a/i/a/t;->b:Lcom/google/a/i/a/p;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 689
    return-void
.end method
