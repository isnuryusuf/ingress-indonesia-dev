.class final Lcom/nianticproject/ingress/k/c;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/k/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/k/a;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nianticproject/ingress/k/c;->a:Lcom/nianticproject/ingress/k/a;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/nianticproject/ingress/k/a;->c()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
