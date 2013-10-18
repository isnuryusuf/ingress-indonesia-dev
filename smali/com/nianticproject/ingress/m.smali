.class final Lcom/nianticproject/ingress/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/nianticproject/ingress/m;->b:Lcom/nianticproject/ingress/AndroidComm;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/m;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/nianticproject/ingress/m;->a:Z

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/nianticproject/ingress/m;->b:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/AndroidComm;->k()V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/m;->b:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/AndroidComm;->h()V

    goto :goto_0
.end method
