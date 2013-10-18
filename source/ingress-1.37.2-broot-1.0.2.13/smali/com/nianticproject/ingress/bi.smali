.class final Lcom/nianticproject/ingress/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/InviteActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/InviteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/nianticproject/ingress/bi;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/bi;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->a(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "onGetInviteInfoFailure"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/bi;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->g(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bi;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/InviteActivity;->o(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 379
    return-void
.end method
