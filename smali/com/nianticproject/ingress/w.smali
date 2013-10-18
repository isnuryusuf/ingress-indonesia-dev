.class final Lcom/nianticproject/ingress/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/nianticproject/ingress/w;->b:Lcom/nianticproject/ingress/AndroidComm;

    iput-object p2, p0, Lcom/nianticproject/ingress/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/nianticproject/ingress/w;->b:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->j(Lcom/nianticproject/ingress/AndroidComm;)I

    .line 681
    iget-object v0, p0, Lcom/nianticproject/ingress/w;->b:Lcom/nianticproject/ingress/AndroidComm;

    invoke-static {v0}, Lcom/nianticproject/ingress/AndroidComm;->k(Lcom/nianticproject/ingress/AndroidComm;)Lcom/nianticproject/ingress/common/ui/elements/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/bo;->a(Ljava/lang/String;)V

    .line 682
    return-void
.end method
