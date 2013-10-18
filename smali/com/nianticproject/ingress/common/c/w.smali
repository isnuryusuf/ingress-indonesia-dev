.class final Lcom/nianticproject/ingress/common/c/w;
.super Lcom/nianticproject/ingress/common/c/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/ai;

.field final synthetic b:Lcom/nianticproject/ingress/common/c/bb;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/ai;Lcom/nianticproject/ingress/common/c/bb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/w;->a:Lcom/nianticproject/ingress/common/c/ai;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/w;->b:Lcom/nianticproject/ingress/common/c/bb;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "SignalClipDone"

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/w;->a:Lcom/nianticproject/ingress/common/c/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/w;->b:Lcom/nianticproject/ingress/common/c/bb;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/ai;->a(Lcom/nianticproject/ingress/common/c/bb;)V

    .line 70
    return-void
.end method
