.class final Lcom/nianticproject/ingress/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nianticproject/ingress/InviteActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/InviteActivity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    iput p2, p0, Lcom/nianticproject/ingress/bf;->a:I

    iput-object p3, p0, Lcom/nianticproject/ingress/bf;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 315
    iget-object v0, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->a(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "onInviteViaEmailSuccess"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/nianticproject/ingress/bf;->a:I

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->j(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->j(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->k(Lcom/nianticproject/ingress/InviteActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->l(Lcom/nianticproject/ingress/InviteActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    const v2, 0x7f09006d

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nianticproject/ingress/bf;->b:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/InviteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/bf;->c:Lcom/nianticproject/ingress/InviteActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/InviteActivity;->m(Lcom/nianticproject/ingress/InviteActivity;)Lcom/nianticproject/ingress/f/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/bf;->b:Ljava/lang/String;

    sget-object v2, Lcom/nianticproject/ingress/f/b;->b:Lcom/nianticproject/ingress/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/f/k;->a(Ljava/lang/String;Lcom/nianticproject/ingress/f/b;)V

    .line 329
    return-void
.end method
