.class final Lcom/nianticproject/ingress/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nianticproject/ingress/shared/rpc/o;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/nianticproject/ingress/InviteActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/InviteActivity;ILcom/nianticproject/ingress/shared/rpc/o;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    iput p2, p0, Lcom/nianticproject/ingress/bg;->a:I

    iput-object p3, p0, Lcom/nianticproject/ingress/bg;->b:Lcom/nianticproject/ingress/shared/rpc/o;

    iput-object p4, p0, Lcom/nianticproject/ingress/bg;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 339
    iget-object v0, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->a(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "onInviteViaEmailFailure"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/nianticproject/ingress/bg;->a:I

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->j(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->j(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->k(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->l(Lcom/nianticproject/ingress/InviteActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    iget-object v2, p0, Lcom/nianticproject/ingress/bg;->b:Lcom/nianticproject/ingress/shared/rpc/o;

    iget-object v3, p0, Lcom/nianticproject/ingress/bg;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/f/i;->a(Landroid/content/Context;Lcom/nianticproject/ingress/shared/rpc/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/bg;->d:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->m(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/f/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bg;->c:Ljava/lang/String;

    sget-object v2, Lcom/nianticproject/ingress/f/b;->a:Lcom/nianticproject/ingress/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/f/k;->a(Ljava/lang/String;Lcom/nianticproject/ingress/f/b;)V

    .line 353
    return-void
.end method
