.class final Lcom/nianticproject/ingress/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/invites/InviteInfo;

.field final synthetic b:Lcom/nianticproject/ingress/InviteActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/InviteActivity;Lcom/nianticproject/ingress/shared/invites/InviteInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/nianticproject/ingress/bh;->b:Lcom/nianticproject/ingress/InviteActivity;

    iput-object p2, p0, Lcom/nianticproject/ingress/bh;->a:Lcom/nianticproject/ingress/shared/invites/InviteInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/bh;->b:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->a(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "onGetInviteInfoSuccess"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/nianticproject/ingress/bh;->b:Lcom/nianticproject/ingress/InviteActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/bh;->a:Lcom/nianticproject/ingress/shared/invites/InviteInfo;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/InviteActivity;->a(Lcom/nianticproject/ingress/InviteActivity;I)V

    .line 366
    iget-object v0, p0, Lcom/nianticproject/ingress/bh;->b:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->m(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/f/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bh;->a:Lcom/nianticproject/ingress/shared/invites/InviteInfo;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->b()Lcom/google/a/c/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/f/k;->a(Lcom/google/a/c/dh;)V

    .line 367
    iget-object v0, p0, Lcom/nianticproject/ingress/bh;->b:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->g(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bh;->b:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/InviteActivity;->n(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 368
    return-void
.end method
