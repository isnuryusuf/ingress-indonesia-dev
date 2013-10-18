.class final Lcom/nianticproject/ingress/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/nianticproject/ingress/AndroidComm;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AndroidComm;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/nianticproject/ingress/v;->c:Lcom/nianticproject/ingress/AndroidComm;

    iput-object p2, p0, Lcom/nianticproject/ingress/v;->a:Ljava/lang/String;

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/nianticproject/ingress/v;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 653
    iget-object v0, p0, Lcom/nianticproject/ingress/v;->c:Lcom/nianticproject/ingress/AndroidComm;

    iget-object v1, p0, Lcom/nianticproject/ingress/v;->a:Ljava/lang/String;

    iget v2, p0, Lcom/nianticproject/ingress/v;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/AndroidComm;Ljava/lang/String;J)V

    .line 654
    return-void
.end method
