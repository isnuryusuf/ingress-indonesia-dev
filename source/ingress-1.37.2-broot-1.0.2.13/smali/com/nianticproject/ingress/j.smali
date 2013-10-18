.class final Lcom/nianticproject/ingress/j;
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
    .line 884
    iput-object p1, p0, Lcom/nianticproject/ingress/j;->b:Lcom/nianticproject/ingress/AndroidComm;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 887
    iget-object v1, p0, Lcom/nianticproject/ingress/j;->b:Lcom/nianticproject/ingress/AndroidComm;

    iget-boolean v0, p0, Lcom/nianticproject/ingress/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/AndroidComm;->setVisibility(I)V

    .line 888
    return-void

    .line 887
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
