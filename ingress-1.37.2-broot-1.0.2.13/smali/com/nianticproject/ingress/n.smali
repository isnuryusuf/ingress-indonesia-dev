.class final Lcom/nianticproject/ingress/n;
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
    .line 942
    iput-object p1, p0, Lcom/nianticproject/ingress/n;->b:Lcom/nianticproject/ingress/AndroidComm;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/nianticproject/ingress/n;->a:Z

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/nianticproject/ingress/n;->b:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/AndroidComm;->j()V

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/n;->b:Lcom/nianticproject/ingress/AndroidComm;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/AndroidComm;->i()V

    goto :goto_0
.end method
