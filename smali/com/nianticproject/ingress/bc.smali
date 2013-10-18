.class final Lcom/nianticproject/ingress/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/InviteActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/InviteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/nianticproject/ingress/bc;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/bc;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->g(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bc;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v1}, Lcom/nianticproject/ingress/InviteActivity;->f(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/bc;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/InviteActivity;->getSupportLoaderManager()Landroid/support/v4/app/w;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bc;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->b(Landroid/support/v4/app/x;)Landroid/support/v4/a/d;

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/bc;->a:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->h(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m/a;->a()V

    .line 199
    return-void
.end method
