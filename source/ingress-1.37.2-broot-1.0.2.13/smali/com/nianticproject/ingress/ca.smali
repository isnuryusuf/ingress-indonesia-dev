.class final Lcom/nianticproject/ingress/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/g/w;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/NemesisActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/nianticproject/ingress/ca;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/nianticproject/ingress/ca;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisActivity;->c(Lcom/nianticproject/ingress/NemesisActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/cb;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/cb;-><init>(Lcom/nianticproject/ingress/ca;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method
